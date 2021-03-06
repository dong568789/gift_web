<?php

namespace App\Http\Controllers;

use App\Repositories\OrderMarkRepository;
use App\Tools\Helper;
use App\Tools\Payment;
use Carbon\Carbon;
use App\Tools\Payment\FanQie;
use Illuminate\Http\Request;

use App\Repositories\GoodsRepository;
use App\Repositories\OrderRepository;

class OrderController extends CoreController
{
    public $repo;

    public function __construct(GoodsRepository $repo)
    {
        parent::__construct();
        $this->repo = $repo;
    }

    /**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function store(Request $request)
	{
	    $keys = ['gid', 'pay_type', 'realname', 'mobile', 'address'];

        $data = $this->censor($request, 'order.store', $keys);

        $goods = $this->repo->find($data['gid']);
        if (empty($goods)) {
            return $this->error("产品不存在");
        }

        $oRepo = new OrderRepository();
        $data['number'] = 1;
        $data['integral'] = $goods->integral;
        $data['order_id'] = $oRepo->createOrderSn();
        $data['amount'] = round($data['number'] * $goods->price, 2);
        $data['order_status'] = catalog_search('status.order_status.normal', 'id');
        $data['goods_desc'] = $goods->title;
        $data['pay_type'] = $data['pay_type'];
        $data['ip'] = $request->getClientIp();

        $order = $oRepo->store($data);

        //扣积分
        Helper::decIntegral($this->client, $goods->integral);

        return response()->json(["result" => 'success', 'data' => ['order_id' => $order->order_id]]);

	}

	public function order(Request $request, $order_id)
    {
        $oRepo = new OrderRepository();
        $order = $oRepo->findByOrderId($order_id);
        if (empty($order))
        {
            return $this->error("订单错误");
        }

        $payment = new Payment();

        try{
            $result = $payment->run($order);
        } catch (\Exception $e) {
            return $this->error($e->getMessage());
        }

        $oRepo->update($order, ['ppid' => $result['id']]);
        logger()->info("order:" . print_r($result, 1));
        $this->_html = $result['html'] ?? '';
        $this->_redirect = $result['url'] ?? '';
        $this->_jsData = $result['js_data'] ?? '[]';
        return $this->view('web.pay');
    }

    public function searchOrder(Request $request)
    {
        $mobile = $request->input('mobile', '');

        if (empty($mobile)) {
            return $this->error("请输入手机号");
        }
        $oRepo = new OrderRepository();

        $orders = $oRepo->getByMobile($mobile);

        return response()->json(['result' => 'success', 'data' => (!$orders->isEmpty() ? $orders->toArray() : [])]);
    }
}
