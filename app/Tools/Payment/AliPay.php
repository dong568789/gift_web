<?php
namespace App\Tools\Payment;

use App\Models\Order;
use App\Repositories\PayParamRepository;
use Omnipay\Omnipay;

class AliPay {

    public $order;

    public function pay(Order $order)
    {
        $gateway = Omnipay::create('Alipay_AopWap');
        $this->setConfig($gateway);

        return $gateway->purchase()->setBizContent([
            'subject'      => $order->goods_desc,
            'out_trade_no' => $order->order_id,
            'total_amount' => $order->amount,
            'product_code' => 'FAST_INSTANT_TRADE_PAY',
        ])->send();

        //$url = $response->getRedirectUrl();
    }

    public function notify(Request $request)
    {
        $gateway    = Omnipay::create('Alipay_AopWap');
        $this->setConfig($gateway);
        $response = $gateway->completePurchase([
            'request_params' => file_get_contents('php://input')
        ])->send();

        if ($response->isPaid()) {

            $result = $response->getRequestData();
            //pay success
            logger()->info('ali-notify:' . print_r($response->getRequestData(), true));

            $this->order['out_trade_no'] = $result['out_trade_no'];
            $this->order['total_amount'] = $result['total_fee'];
            $this->order['trade_no'] = $result['transaction_id'];
            return true;
        }else{
            return false;
        }
    }

    private function setConfig($gateway)
    {
        $ppRepo = new PayParamRepository();
        $param = $ppRepo->getWxParam();
        if (empty($param->value)) return ;

        $gateway->setSignType('RSA2'); // RSA/RSA2/MD5. Use certificate mode must set RSA2
        $gateway->setAppId($param->value->appid);
        $gateway->setPrivateKey($param->value->private_key);
        $gateway->setAlipayPublicKey($param->value->public_key); // Need not set this when used certificate mode
        $gateway->setReturnUrl(url('order/ali_return'));
        $gateway->setNotifyUrl(url('order/ali_notify'));
    }
}
