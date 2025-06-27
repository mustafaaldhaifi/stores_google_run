<?php
namespace App\Http\Controllers\Api;

use App\Models\AccessTokens1;
use App\Models\Apps;
use App\Models\Countries;
use App\Models\Devices;
use App\Models\DevicesSessions;
use App\Models\FailProcesses;
use App\Models\Users;
use App\Models\UsersSessions;
use App\Traits\AllShared;
use Carbon\Carbon;
use DB;
use Exception;
use Google_Client;
use Hash;
use Illuminate\Database\CustomException;
use Illuminate\Http\Request;

class LoginController
{
    use AllShared;
    private $appId;
    private $device;
    private $deviceSession;

    public function __construct($appId, $request)
    {
        $this->appId = $appId;
        $this->device = $this->getDevice(request: $request);
        $this->deviceSession = $this->getDeviceSession($request, $this->device->id);
    }


    public function login(Request $request)
    {

        $app = $this->getMyApp(request: $request, columnToAdd: [
            Apps::$tableName . '.' . Apps::$webClientID,
        ]);
        if ($app->id != $this->appId) {
            throw new CustomException("App not in Auth", 0, 403);
        }

        $loginType = $request->input('loginType');

        if ($loginType == null) {
            $this->validRequestV1($request, [
                'countryCode' => 'required|string|max:4',
                'phone' => 'required|string|max:9',
                'password' => 'required|string|max:20'
            ]);


            $countryCode = $request->input('countryCode');
            $phone = $request->input('phone');
            $password = $request->input('password');

            // $this->device = $this->getDevice(request: $request);
            // $this->deviceSession = $this->getDeviceSession($request, $this->device->id);

            $myProcess = $this->checkProcessV1('login', $this->device->id, null);

            // print_r(strlen($phone));
            // print_r(strlen($countryCode));


            $user = DB::table(Users::$tableName)
                // ->where(Users::$tableName . '.' . Users::$countryCode, '=', $countryCode)
                ->join(
                    Countries::$tableName,
                    Countries::$tableName . '.' . Countries::$id,
                    '=',
                    Users::$tableName . '.' . Users::$countryId
                )
                ->where(Users::$tableName . '.' . Users::$phone, '=', $phone)
                ->where(Countries::$tableName . '.' . Countries::$code, '=', $countryCode)
                ->first([
                    Users::$tableName . '.' . Users::$id . ' as id',
                    Users::$tableName . '.' . Users::$password . ' as password'
                ]);
            // print_r($countryCode);
            // print_r($phone);

            // print_r($user);
            if ($user == null || Hash::check($password, $user->password) == false) {
                DB::table(FailProcesses::$tableName)->insert([
                    FailProcesses::$id => null,
                    FailProcesses::$myProcessId => $myProcess->id,
                    FailProcesses::$deviceId => $this->device->id,
                    FailProcesses::$userId => null,
                    FailProcesses::$createdAt => Carbon::now()->format('Y-m-d H:i:s'),
                ]);
                throw new CustomException("Phone Or Password Error", 0, 400);
            }
            //////
            // $this->updateAppToken($request);
            /////
            $userSession = $this->getFinalUserSession($user->id, $this->deviceSession->id);
            return response()->json($this->processAccessToken($userSession->id));
        } else if ($loginType == "Google") {
            $this->validRequestV1($request, [
                'googleToken' => 'required|string|max:10000',
            ]);

            $googleToken = $request->input('googleToken');

            $client = new Google_Client(['client_id' => $app->webClientID]);  // Specify the CLIENT_ID of the app that accesses the backend

            try {

                $payload = $client->verifyIdToken($googleToken);
                if ($payload) {
                    Logger($payload);

                    $email = $payload['email'];
                    $fname = $payload['given_name'] ?? '';

                    $lname = $payload['family_name'] ?? '';

                    $userid = $payload['sub'];
                    $user = $this->findUser($email);

                    $userId = null;
                    if ($user == null) {
                        $userId = $this->addUserByGmail($email, $fname, $lname);
                    } else {
                        $userId = $user->id;
                    }

                    $userSession = $this->getFinalUserSession($userId, $this->deviceSession->id);
                    return response()->json($this->processAccessToken($userSession->id));
                    // يمكنك الآن استخدام بيانات المستخدم في $payload
                } else {
                    throw new CustomException("Invalid ID Token", 0, 400);
                }
            } catch (Exception $e) {
                throw new CustomException($e->getMessage(), 0, 400);
                // خطأ في التحقق
            }

        } else {
            throw new CustomException("Undefiend Login Type", 0, 403);
        }
    }
    public function readAccessToken($request)
    {
        $accessToken = $this->getAccessTokenByToken($request);
        if ($this->compareExpiration($accessToken)) {
            throw new CustomException("AT Expired", 1000, 403);
        }
        return $accessToken;
    }
    public function refreshAccessToken($request)
    {
        $accessToken = $this->getAccessTokenByToken($request, false);
        return $this->processAccessToken($accessToken->userSessionId);
    }
    ////
    private function getAccessToken($userSessionId)
    {
        return DB::table(table: AccessTokens1::$tableName)
            ->where(AccessTokens1::$tableName . '.' . AccessTokens1::$userSessionId, '=', $userSessionId)
            ->first();
    }
    private function insertAccessToken($hashedToken, $expireAt, $userSessionId)
    {
        DB::table(AccessTokens1::$tableName)->insert([
            AccessTokens1::$id => null,
            AccessTokens1::$token => $hashedToken,
            AccessTokens1::$userSessionId => $userSessionId,
            AccessTokens1::$expireAt => $expireAt,
            AccessTokens1::$updatedAt => now()->format('Y-m-d H:i:s'),
            AccessTokens1::$createdAt => now()->format('Y-m-d H:i:s'),
        ]);
    }
    private function updateAccessToken($hashedToken, $expireAt, $accessTokenId)
    {
        DB::table(table: AccessTokens1::$tableName)
            ->where(AccessTokens1::$tableName . '.' . AccessTokens1::$id, '=', $accessTokenId)
            ->update([
                AccessTokens1::$tableName . '.' . AccessTokens1::$token => $hashedToken,
                AccessTokens1::$refreshCount => DB::raw(AccessTokens1::$refreshCount . ' + 1'),
                AccessTokens1::$expireAt => $expireAt,
                AccessTokens1::$updatedAt => now()->format('Y-m-d H:i:s'),
            ]);
    }
    private function processAccessToken($userSessionId)
    {
        $newToken = $this->getUniqueToken();
        $newHashedToken = hash('sha256', $newToken);
        $expireAt = $this->getRemainedMinute();

        $accessToken = $this->getAccessToken($userSessionId);
        if ($accessToken == null) {
            $this->insertAccessToken($newHashedToken, $expireAt, $userSessionId);
        } else {
            $this->updateAccessToken($newHashedToken, $expireAt, $accessToken->id);
        }
        return ["token" => $newToken, 'expireAt' => $expireAt];
    }
    private function findUser($email)
    {
        return DB::table(Users::$tableName)
            ->where(Users::$tableName . '.' . Users::$email, '=', $email)
            ->first([
                Users::$tableName . '.' . Users::$id,
                Users::$tableName . '.' . Users::$firstName,
                Users::$tableName . '.' . Users::$lastName,
            ]);
    }
    private function addUserByGmail($email, $fname, $lname)
    {
        return DB::table(Users::$tableName)->insertGetId([
            Users::$firstName => $fname,
            Users::$lastName => $lname,
            Users::$email => $email,
            Users::$createdAt => Carbon::now()->format('Y-m-d H:i:s'),
            Users::$updatedAt => Carbon::now()->format('Y-m-d H:i:s'),
        ]);
    }
    private function updateLastLoginAt($userSession)
    {
        DB::table(table: UsersSessions::$tableName)
            ->where(UsersSessions::$tableName . '.' . UsersSessions::$id, '=', $userSession->id)
            ->update([
                UsersSessions::$loginCount => DB::raw(UsersSessions::$loginCount . ' + 1'), //h
                UsersSessions::$isLogin => 1,
                UsersSessions::$lastLoginAt => now()->format('Y-m-d H:i:s'),
                UsersSessions::$updatedAt => now()->format('Y-m-d H:i:s'),
            ]);
        return $this->getUserSession($userSession->id);
    }
    private function getUserSession($id)
    {
        return DB::table(table: UsersSessions::$tableName)
            ->where(UsersSessions::$tableName . '.' . UsersSessions::$id, '=', $id)
            ->first();
    }
    private function compareExpiration($loginToken)
    {
        // Get current time using Carbon
        $currentDate = now();

        // Get the expiration date from the $loginToken object and convert it to a Carbon instance
        $expireAt = Carbon::parse($loginToken->expireAt);


        // Compare the dates
        if ($currentDate->gt($expireAt)) {
            // Current time is greater than expiration time (token expired)
            return true;
        } else {
            // Token is still valid
            return false;
        }
    }
    private function getFinalUserSession($userId, $deviceSessionId)
    {
        $userSessions = $this->getUserSessions($userId);

        foreach ($userSessions as $key => $userSession) {
            if ($userSession->isLogin == 1) {
                throw new CustomException("other signin?", 0, 403);
            }
        }
        $userSession = null;
        $count = 0;
        foreach ($userSessions as $key => $vlaue) {
            if ($vlaue->deviceSessionId == $deviceSessionId) {
                $userSession = $vlaue;
                $count += 1;
            }
        }
        if ($count > 1) {
            throw new CustomException("multiple same device in this app", 0, 403);
        } elseif ($count == 1) {
            return $this->updateLastLoginAt($userSession);
        } else {
            $insertedId = DB::table(UsersSessions::$tableName)->insertGetId([
                UsersSessions::$id => null,
                UsersSessions::$userId => $userId,
                UsersSessions::$deviceSessionId => $deviceSessionId,
                UsersSessions::$lastLoginAt => now()->format('Y-m-d H:i:s'),
                UsersSessions::$createdAt => now()->format('Y-m-d H:i:s'),
                UsersSessions::$updatedAt => now()->format('Y-m-d H:i:s'),

            ]);
            return $this->getUserSession($insertedId);
        }
    }
    private function getUserSessions($userId)
    {
        return DB::table(table: UsersSessions::$tableName)
            ->where(UsersSessions::$tableName . '.' . UsersSessions::$userId, '=', $userId)
            ->where(DevicesSessions::$tableName . '.' . DevicesSessions::$appId, '=', $this->appId)
            ->join(
                DevicesSessions::$tableName,
                DevicesSessions::$tableName . '.' . DevicesSessions::$id,
                '=',
                UsersSessions::$tableName . '.' . UsersSessions::$deviceSessionId
            )
            // ->where(UsersSessions::$tableName . '.' . UsersSessions::$deviceSessionId, '<>', $deviceSessionId)
            ->get([
                UsersSessions::$tableName . '.' . UsersSessions::$id . ' as id',
                UsersSessions::$tableName . '.' . UsersSessions::$isLogin . ' as isLogin',
                DevicesSessions::$tableName . '.' . DevicesSessions::$appId . ' as appId',
                DevicesSessions::$tableName . '.' . DevicesSessions::$id . ' as deviceSessionId',
                UsersSessions::$tableName . '.' . UsersSessions::$userId . ' as userId',
            ]);
    }
    private function getUniqueToken()
    {
        $baseToken = md5(uniqid(mt_rand(), true));

        // Special characters to include in the token
        $specialChars = '!@#$%^&*()-_=+[]{}|;:,.<>?/~';

        // Number of special characters to insert
        $numSpecialChars = 5; // For example, inserting 5 special characters

        // Convert the token to an array of characters
        $tokenArray = str_split($baseToken);

        // Randomly insert special characters into the token
        for ($i = 0; $i < $numSpecialChars; $i++) {
            $randomPosition = mt_rand(0, count($tokenArray) - 1); // Choose random position
            $randomSpecialChar = $specialChars[mt_rand(0, strlen($specialChars) - 1)]; // Choose random special char
            array_splice($tokenArray, $randomPosition, 0, $randomSpecialChar); // Insert special char
        }

        // Convert the array back to a string
        $uniqueTokenWithSpecialChars = implode('', $tokenArray);

        return $uniqueTokenWithSpecialChars;
    }
    private function getRemainedMinute($minutes = null)
    {

        $end_of_day = Carbon::tomorrow()->startOfDay()->subSecond();
        return $end_of_day->format('Y-m-d H:i:s');

        // if ($minutes === null) {
        //     // Get the end of the day (tomorrow at 00:00:00 - 1 second)
        //     $end_of_day = Carbon::tomorrow()->startOfDay()->subSecond();
        //     return $end_of_day->format('Y-m-d H:i:s');
        // } else {
        //     // Add minutes to the current time
        //     $date = now()->addMinutes($minutes);
        //     return $date->format('Y-m-d H:i:s');
        // }

    }
    private function getDevice(Request $request)
    {
        $this->validRequestV1($request, [
            'deviceId' => 'required|string|max:40',
        ]);

        $deviceId = $request->input('deviceId');
        $model = $request->input('model');
        $version = $request->input('version');
        $device = DB::table(table: Devices::$tableName)
            ->where(Devices::$tableName . '.' . Devices::$deviceId, '=', $deviceId)
            ->first();

        if ($device == null) {
            $this->validRequestV1($request, [
                'model' => 'required|string|max:50',
                'version' => 'required|string|max:50'
            ]);

            $insertedId = DB::table(Devices::$tableName)->insertGetId([
                Devices::$id => null,
                Devices::$model => $model,
                Devices::$deviceId => $deviceId,
                Devices::$version => $version,
                Devices::$createdAt => now()->format('Y-m-d H:i:s'),
            ]);
            return DB::table(table: Devices::$tableName)
                ->where(Devices::$tableName . '.' . Devices::$id, '=', $insertedId)
                ->first();
        }
        return $device;
    }
    private function getDeviceSession(Request $request, $deviceId)
    {
        $this->validRequestV1($request, [
            'appToken' => 'required|string|max:255'
        ]);
        $appToken = $request->input('appToken');
        $deviceSession = DB::table(table: DevicesSessions::$tableName)
            ->where(DevicesSessions::$tableName . '.' . DevicesSessions::$deviceId, '=', $deviceId)
            ->where(DevicesSessions::$tableName . '.' . DevicesSessions::$appId, '=', $this->appId)
            ->first();

        if ($deviceSession == null) {
            $insertedId = DB::table(DevicesSessions::$tableName)->insertGetId([
                DevicesSessions::$id => null,
                DevicesSessions::$appId => $this->appId,
                DevicesSessions::$deviceId => $deviceId,
                DevicesSessions::$appToken => $appToken,
                DevicesSessions::$createdAt => now()->format('Y-m-d H:i:s'),
                DevicesSessions::$updatedAt => now()->format('Y-m-d H:i:s'),

            ]);
            return DB::table(table: DevicesSessions::$tableName)
                ->where(DevicesSessions::$tableName . '.' . DevicesSessions::$id, '=', $insertedId)
                ->first();
        }

        if ($appToken != $deviceSession->appToken) {
            DB::table(table: DevicesSessions::$tableName)
                ->where(DevicesSessions::$tableName . '.' . DevicesSessions::$id, '=', $deviceSession->id)
                ->update([
                    DevicesSessions::$tableName . '.' . DevicesSessions::$appToken => $appToken,
                    DevicesSessions::$createdAt => now()->format('Y-m-d H:i:s'),
                ]);
            $deviceSession->appToken = $appToken;
        }

        return $deviceSession;
    }
    private function getAccessTokenByToken($request, $checkExpire = true)
    {
        $this->validRequestV1($request, [
            'accessToken' => 'required|string|max:255',
        ]);
        $token = hash('sha256', $request->input('accessToken'));


        //

        $accessToken = $this->getAccessTokenByIDENTIFIER(AccessTokens1::$token, $token);
        if ($accessToken == null) {
            throw new CustomException("Invalid Token", 2000, 403);
        }

        // print_r('accessToken->deviceId: '.$accessToken->deviceId);
        // print_r('device->deviceId: '.$this->device->deviceId);

        if ($accessToken->deviceId != $this->device->id) {
            throw new CustomException("Invalid Token 2", 2000, 403);
        }



        if ($checkExpire == true && $this->compareExpiration($accessToken)) {
            throw new CustomException("AT Expired", 1000, 403);
        }

        if ($accessToken->isLogin != 1) {
            throw new CustomException("This Session is logged out please login again", 2000, 403);
        }
        return $accessToken;
    }
    private function getAccessTokenByIDENTIFIER($column, $value, $selectes = [])
    {
        $selecteData = [
            AccessTokens1::$tableName . '.' . AccessTokens1::$id . ' as id',
                // AccessTokens1::$tableName . '.' . AccessTokens1::$token . ' as token',
            AccessTokens1::$tableName . '.' . AccessTokens1::$expireAt . ' as expireAt',
            AccessTokens1::$tableName . '.' . AccessTokens1::$userSessionId . ' as userSessionId',
                //
            Users::$tableName . '.' . Users::$id . ' as userId',
            Users::$tableName . '.' . Users::$firstName . ' as firstName',
            Users::$tableName . '.' . Users::$lastName . ' as lastName',
            Users::$tableName . '.' . Users::$logo . ' as logo',
            Users::$tableName . '.' . Users::$countryId . ' as countryId',

                //
            DevicesSessions::$tableName . '.' . DevicesSessions::$appId . ' as appId',
            DevicesSessions::$tableName . '.' . DevicesSessions::$deviceId . ' as deviceId',
            UsersSessions::$tableName . '.' . UsersSessions::$isLogin . ' as isLogin',

        ];

        foreach ($selectes as $key => $s) {
            $selecteData[] = $s;
        }



        return DB::table(table: AccessTokens1::$tableName)
            ->where(AccessTokens1::$tableName . '.' . $column, '=', $value)
            ->where(DevicesSessions::$tableName . '.' . DevicesSessions::$appId, '=', $this->appId)
            ->join(
                UsersSessions::$tableName,
                UsersSessions::$tableName . '.' . UsersSessions::$id,
                '=',
                AccessTokens1::$tableName . '.' . AccessTokens1::$userSessionId
            )
            ->join(
                DevicesSessions::$tableName,
                DevicesSessions::$tableName . '.' . DevicesSessions::$id,
                '=',
                UsersSessions::$tableName . '.' . UsersSessions::$deviceSessionId
            )
            ->join(
                Users::$tableName,
                Users::$tableName . '.' . Users::$id,
                '=',
                UsersSessions::$tableName . '.' . UsersSessions::$userId
            )
            ->join(
                Devices::$tableName,
                Devices::$tableName . '.' . Devices::$id,
                '=',
                DevicesSessions::$tableName . '.' . DevicesSessions::$deviceId
            )
            ->first($selecteData);
    }
}
