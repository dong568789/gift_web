<?php

namespace App\Http\Controllers;

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
	    $keys = ['number', 'gid', 'contact', 'pay_type'];

        $data = $this->censor($request, 'order.store', $keys);

        if ($data['number'] <= 0 && $data['number'] > 10) {
            return $this->error("购买数量只能是1到10之间");
        }
        $goods = $this->repo->find($data['gid']);
        if (empty($goods)) {
            return $this->error("产品不存在");
        }

        $oRepo = new OrderRepository();
        $data['order_id'] = $oRepo->createOrderSn();
        $data['amount'] = round($data['number'] * $goods->price, 2);
        $data['order_status'] = catalog_search('status.order_status.normal', 'id');
        $data['send_account'] = catalog_search('status.send_account.none', 'id');
        $data['goods_desc'] = $goods->title;
        $data['pay_type'] = $data['pay_type'];
        $data['ip'] = $request->getClientIp();

        $order = $oRepo->store($data);

        $order->callback_url = url('order/callback');
        $fanQie = new FanQie();
        $result = $fanQie->run($order);

        if ($result['status']) {
            return redirect($result['data']);
        }

        return $result['message'];
	}

	public function callback(Request $request)
    {
        $input = $request->all();
        logger()->info("callback:" . print_r($input, 1));

        $oRepo = new OrderRepository();

        $order = $oRepo->findByOrderId($input['order_id']);

        if (empty($order)) {
            logger()->info("callback:订单不存在");
            return "err";
        }
        $success = catalog_search("status.order_status.success", 'id');
        if ($order->order_status->id == $success){
            return "success";
        }

        $tradeMoney = $input['pay_money'] / 100;
        if (bccomp($order->amount, $tradeMoney) != 0) {
            logger()->info("callback:回调金额不一致");
            return "err";
        }

        $fanQie = new FanQie();

        $sign = $input['sign'];
        unset($input['sign']);

        if ($fanQie->makeSign($input) != $sign) {
            logger()->info("callback:签名不一致");
            return "err";
        }

        //发货
        $order->callback_at = Carbon::now();

        $result = $oRepo->sendAccount($order);

        return "success";
    }

    public function searchOrder(Request $request)
    {
        $contact = $request->input('contact', '');

        $oRepo = new OrderRepository();

        $orders = $oRepo->getByConcat($contact);

        $this->_orders = $orders;
        return $this->view('web.search');
    }
}
