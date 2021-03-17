<?php
namespace App\Tools\Payment;

use App\Repositories\OrderRepository;
use App\Tools\Helper;
use Illuminate\Http\Request;
use Omnipay\Omnipay;

use App\Models\Order;

use App\Repositories\PayParamRepository;

class WxPay {

    public $order;

    public function pay(Order $order)
    {
        $order = [
            'body'              => $order->goods_desc,
            'out_trade_no'      => Helper::createWxOrderId($order->order_id),
            'total_fee'         => $order->amount * 100, //=0.01
            'spbill_create_ip'  => $order->ip,
            'fee_type'          => 'CNY',
            'notify_url' => url('pay/wx_notify')
        ];

        /**
         * @var Omnipay\WechatPay\Message\CreateOrderRequest $request
         * @var Omnipay\WechatPay\Message\CreateOrderResponse $response
         */
        $driver = 'WechatPay_Mweb';
        $gateway    = Omnipay::create($driver);
        $ppid = $this->setConfig($gateway);
        $response  = $gateway->purchase($order)->send();
        $data = $response->getData();
        if ($response->isSuccessful())
        {
            return ['id' => $ppid, 'url' => Helper::parseWxUrl($data['mweb_url'], ['ip' =>
                $order['spbill_create_ip']])];
        } else {
            throw new \Exception($data['return_msg']);
        }
//        $response->getData(); //For debug
//        $response->getAppOrderData(); //For WechatPay_App
//        $response->getJsOrderData(); //For WechatPay_Js
//        $response->getCodeUrl(); //For Native Trade Type

    }

    public function notify(Request $request)
    {
        $driver = 'WechatPay_Mweb';
        $gateway    = Omnipay::create($driver);
        $this->setConfig($gateway);

        $response = $gateway->completePurchase([
            'request_params' => file_get_contents('php://input')
        ])->send();

        if ($response->isPaid()) {

            $result = $response->getRequestData();
            //pay success
            logger()->info('wx-notify:' . print_r($result, true));

            $this->order['out_trade_no'] = Helper::getWxOrderId($result['out_trade_no']);
            $this->order['total_amount'] = $result['total_fee'] / 100;
            $this->order['trade_no'] = $result['transaction_id'];

            return true;
        }else{
            return false;
        }
    }

    public function setConfig($gateway)
    {
        $ppRepo = new PayParamRepository();
        $param = $ppRepo->getWxParam();
        if (empty($param->value)) return ;
        $gateway->setAppId($param->value['appid']);
        $gateway->setMchId($param->value['mch_id']);
        $gateway->setApiKey($param->value['mch_key']);

        return $param->id;
    }
}
