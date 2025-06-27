<?php
namespace App\Http\Controllers\Api\Users;

use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Controller;
use App\Models\AppStores;
use App\Models\Countries;
use App\Models\PaymentTypes;
use App\Models\SharedStoresConfigs;
use App\Models\StorePaymentTypes;
use App\Models\Stores;
use App\Models\Users;
use App\Models\UsersSessions;
use App\Traits\AllShared;
use App\Traits\UsersControllerShared;
use Carbon\Carbon;
use Illuminate\Database\CustomException;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class UserControllerGet extends Controller
{
    use UsersControllerShared;
    use AllShared;


    public function getApp(Request $request)
    {
        return response()->json($this->getMyApp($request));
    }

    public function login(Request $request)
    {
        $myData = $this->getMyData(request: $request, appId: null, withStore: false, withUser: false, myProcessName: 'login');
        $app = $myData['app'];
        return (new LoginController($app->id, $request))->login($request);
    }
    public function refreshToken(Request $request)
    {
        $app = $this->getMyApp($request);
        return $this->refreshOurToken($request, $app->id);
    }

    public function getStores(Request $request)
    {
        $app = $this->getMyApp($request);
        return $this->getOurStores($app->id);
    }
    public function getHome(Request $request)
    {
        $app = $this->getMyApp($request);
        return $this->getOurHome($app->id);
    }
    public function getProducts(Request $request)
    {
        return $this->getOurProducts2($request);
    }
    public function search(Request $request)
    {
        return $this->searchOurProducts($request);
    }
    public function getLocations(Request $request)
    {
        $myData = $this->getMyData(request: $request, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        $app = $myData['app'];
        $appStore = $this->getAppStore($request, $app->id);
        return $this->getOurLocations($accessToken->userId, $appStore->storeId);
    }
    public function getStoreLocation(Request $request)
    {
        $myData = $this->getMyData(request: $request, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        $app = $myData['app'];
        $appStore = $this->getAppStore($request, $app->id);
        return $this->getOurStoreLocation($appStore->storeId);
    }
    public function getOrders(Request $request)
    {
        $myData = $this->getMyData(request: $request, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        return $this->getOurOrders($request, $accessToken->userId);
    }
    public function getPaymentTypes(Request $request)
    {
        return $this->getOurPaymentTypes($request);
    }
    public function getUserProfile(Request $request)
    {
        $myData = $this->getMyData(request: $request, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        return $this->getOurUserProfile($accessToken->userId, );
    }

    // public function getYoutubeData(Request $request)
    // {
    //     $myData = $this->getMyData(request: $request, withStore: false, withUser: false);
    //     $store = $myData['store'];
    //     return $this->getOurYoutubeData($store->id, );
    // }


    public function getOrderProducts(Request $request)
    {
        $orderDelivery = $this->getOurOrderDelivery($request);
        $orderProducts = $this->getOurOrderProducts($request);
        $orderPayment = $this->getOurOrderPayment($request);
        $orderDetail = $this->getOurOrderDetail($request);
        return response()->json(['orderDelivery' => $orderDelivery, 'orderProducts' => $orderProducts, 'orderPayment' => $orderPayment, 'orderDetail' => $orderDetail]);
        // return $this->getOurOrderProducts($request);
    }
    public function getLoginConfiguration(Request $request)
    {
        $myData = $this->getMyData(request: $request, withStore: false, withUser: false);
        // $store = $myData['store'];
        // // $app = $myData['app'];

        // // if ($withSituations === true) {
        // $languages = DB::table(Languages::$tableName)
        // ->get();
        $countries = DB::table(Countries::$tableName)
            ->get();

        foreach ($countries as $country) {
            $country->name = json_decode($country->name, true); // الآن $country->name عبارة عن Map (Array Associative)
        }

        return response()->json(['countries' => $countries]);
    }

}