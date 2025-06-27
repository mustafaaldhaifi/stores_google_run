<?php
namespace App\Http\Controllers\Api\Stores;

use App\Http\Controllers\Controller;
use App\Traits\AllShared;
use App\Traits\StoresControllerShared;
use Illuminate\Http\Request;


class StoresControllerAdd extends Controller
{
    use StoresControllerShared;
    use AllShared;

    public function addLocation(Request $request)
    {
        $myData = $this->getMyData(request: $request, appId: $this->appId, withStore: false, withUser: true);
        // $storeId = $request->input('storeId');
        $accessToken = $myData['accessToken'];
        return $this->addOurLocation($request, $accessToken->userId);
    }
    public function confirmOrder(Request $request)
    {
        $myData = $this->getMyData(request: $request, appId: $this->appId, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        $app = $myData['app'];
        $appStore = $this->getAppStore($request, $app->id);
        // print_r($app);

        // print_r($appStore);
        return $this->confirmOurOrder($request, $accessToken->userId, $appStore->storeId);
    }
}
