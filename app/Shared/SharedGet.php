<?php
namespace App\Shared;

use App\Models\Countries;
use App\Models\Users;
use DB;

class SharedGet
{

    public function getUserProfile($userId)
    {

        $profile = DB::table(table: Users::$tableName)
            ->where(Users::$tableName . '.' . Users::$id, '=', $userId)
            ->first([
                Users::$tableName . '.' . Users::$id,
                Users::$tableName . '.' . Users::$firstName,
                Users::$tableName . '.' . Users::$secondName,
                Users::$tableName . '.' . Users::$thirdName,
                Users::$tableName . '.' . Users::$lastName,
                Users::$tableName . '.' . Users::$phone,
                Users::$tableName . '.' . Users::$countryId,
                Users::$tableName . '.' . Users::$email,
                Users::$tableName . '.' . Users::$logo,
            ]);

        if ($profile->countryId != null) {
            $countery = DB::table(table: Countries::$tableName)
                ->where(Countries::$tableName . '.' . Countries::$id, '=', $profile->countryId)
                ->first([
                    Countries::$tableName . '.' . Countries::$id,
                    Countries::$tableName . '.' . Countries::$code
                ]);
            $profile->code = $countery->code;
        } else {
            $profile->code = null;
        }
        return $profile;
    }
}