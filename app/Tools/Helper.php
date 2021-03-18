<?php
namespace App\Tools;

use Agent,Log;
use Illuminate\Support\Facades\Cookie;

class Helper {

    public static function is_weixin(){
        if (strpos(Agent::getUserAgent(), 'MicroMessenger') !== false){
            return true;
        }
        return false;
    }

    /**
     * 生成微信订单号
     * @param $orderid
     * @return string
     */
    public static function createWxOrderId($orderid)
    {
        return $orderid . str_random(5);
    }

    /**
     * @param $orderid
     * @return string
     */
    public static function getWxOrderId($orderid)
    {
        return substr($orderid, 0, -5);
    }

    public static function parseWxUrl($url, $option = [])
    {
        $agents = [
            'Mozilla/5.0 (Linux; Android 8.0.0; SM-G9550 Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.81 Mobile Safari/537.36'
        ];

        if(Agent::is('iPhone')){
            $agent = array_rand($agents);
        }else{
            $agent = Agent::getUserAgent();
        }

        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', $url, [
            'headers' => [
                'X-Forwarded-For' => $option['ip'] ?? '',
                'User-Agent'=> $agent,
                'Referer'=> config('app.url'),
            ]
        ]);
        $body = (string)$response->getBody();

        Log::info('parseWxUrl:' . print_r($body, true));

        preg_match('#(.*)url="(.*?)(.*)"#', $body, $match);

        return $match[3] ?? '';
    }

    public static function paramStr($repos){
        $item = array();
        if(empty($repos)) return $item;

        $param = explode('&',$repos);
        foreach($param as $value){
            list($k,$v) = explode('=',$value);
            $item[$k] = $v;
        }

        return $item;
    }

    /**
     * 创建微信订单号
     * @param $orderid
     * @return string
     */
    public static function createWxOrder($orderid)
    {
        return $orderid . sprintf('%02d', rand(11111, 99999));
    }

    /**
     * 微信支付 解析订单号
     * @param $orderid
     * @return string
     */
    public static function parseWxOrder($orderid)
    {
        return substr($orderid, 0, -5);
    }

    public static function decIntegral(array $client, int $dec)
    {
        $integral =$client['integral'] - $dec;
        self::setClient(['id' => $client['id'], 'integral' => $integral]);
    }

    public static function addIntegral(array $client, int $add)
    {
        $integral =$client['integral'] + $add;
        self::setClient(['id' => $client['id'], 'integral' => $integral]);

        return $integral;
    }

    public static function getClient()
    {
        $info = Cookie::get('client-info');
        if (!empty($info)) {
            return json_decode($info, true);
        }
        return [];
    }

    public static function setClient(array $info, $minutes = 86400 * 7)
    {
        return Cookie::queue('client-info', json_encode($info), $minutes);
    }

    public static function hashClient()
    {
        return Cookie::has('client-info');
    }

    public static function deleteClient()
    {
        return Cookie::forget('client-info');
    }
}
