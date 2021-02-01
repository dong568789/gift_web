<?php
namespace App\Tools\Payment;

use App\Order;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;

class FanQie{

    //private $url = "http://api.xw.com/http/pay/getqr";
    private $url = "https://up.bwbqkwi.cn/http/pay/getqr";

    private $appid;

    private $secret;

    public function __construct($appid = null, $secret = null)
    {
        $this->appid = $appid ?? "112345241";
        $this->secret = $secret ?? "03a6c3f3a6e56b7042aaf1e1bf2ef8f7";
    }

    public function run(Order $order)
    {
        $param = [
            'pay_type' => $order->pay_type->name, //支付类型
            'app_id' => $this->appid, //商户号
            'client_ip' => $order->ip,
            'money' => intval($order->amount * 100), //金额 单位分 避免小数换算
            'order_id' => $order->order_id, //商户订单号
            'ver' => 'v1', //版本号 暂时固定v1
            'cb_url' => $order->callback_url, //支付成功后的通知回调地址
            'mark' => $order->goods->title, //订单描述
            't' => time(),//支付发起的时间戳
            'is_mobile' => '0', //是否移动端 0： 否 1： 是
        ];

        $param['sign'] = $this->makeSign($param); //签名

        try {
            $client = new Client();
            $response = $client->post($this->url, [
                'form_params' => $param
            ]);

            $body = (string)$response->getBody();
            $arr = json_decode($body, true);
            if ($arr['status'] == 1) {
                return ['status' => true, 'data' => $arr['data']['pay_url']];
            }
            return ['status' => false, 'message' => $arr['message']];

        } catch (ClientException $e) {

            return ['status' => false, 'message' => $e->getMessage()];
        }
    }


    public function makeSign($param)
    {
        ksort($param);
        $str = '';
        foreach ($param as $k => $v) {
            $str .= "{$k}={$v}";
        }
        $str .= $this->secret;
        return md5($str);
    }

}
