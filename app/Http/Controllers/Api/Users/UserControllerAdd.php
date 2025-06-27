<?php
namespace App\Http\Controllers\Api\Users;

use App\Http\Controllers\Controller;
use App\Models\Orders;
use App\Models\OrdersPayments;
use App\Traits\AllShared;
use App\Traits\UsersControllerShared;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;

class UserControllerAdd extends Controller
{
    use UsersControllerShared;
    use AllShared;

    public function addLocation(Request $request)
    {
        $myData = $this->getMyData(request: $request, appId: null, withStore: false, withUser: true);
        $storeId = $request->input('storeId');
        $accessToken = $myData['accessToken'];
        return $this->addOurLocation($request, $accessToken->userId, $storeId);
    }
    public function addEmail(Request $request)
    {
        $myData = $this->getMyData(request: $request, appId: null, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        return $this->addOurEmail($request, $accessToken->userId);
    }

    public function addPaidCode(Request $request)
    {
        $app = $this->getMyApp($request);
        $paidCode = $request->input('paidCode');
        $paid = $request->input('paid');
        $orderId = $request->input('orderId');

        if ($paidCode == '123456') {
            $data = DB::table(Orders::$tableName)->where(Orders::$id, '=', $orderId)->first([
                Orders::$tableName . "." . Orders::$paid
            ]);

            DB::table(OrdersPayments::$tableName)
                ->insert(
                    [
                        OrdersPayments::$id => null,
                        OrdersPayments::$orderId => $orderId,
                        OrdersPayments::$paymentId => $data->paid,
                        OrdersPayments::$createdAt => Carbon::now()->format('Y-m-d H:i:s'),
                        OrdersPayments::$updatedAt => Carbon::now()->format('Y-m-d H:i:s'),
                    ]
                );
            return response()->json($this->getOurOrderPayment($request));
        }
        return response()->json(['message' => "رقم كود الشراء غير صحيح", 'errors' => [], 'code' => 0], 403);

    }
    public function confirmOrder(Request $request)
    {
        $myData = $this->getMyData(request: $request, withStore: false, withUser: true);
        $accessToken = $myData['accessToken'];
        $app = $myData['app'];
        $appStore = $this->getAppStore($request, $app->id);
        $this->checkStoreOpen($appStore->storeId);
        return $this->confirmOurOrder($request, $accessToken->userId, $appStore->storeId);
    }
}
