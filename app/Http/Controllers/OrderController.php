<?php

namespace App\Http\Controllers;

use App\Repositories\OrderMarkRepository;
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
	    $keys = ['number', 'gid', 'pay_type', 'realname', 'mobile', 'address', 'mark'];

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
        $data['goods_desc'] = $goods->title;
        $data['pay_type'] = $data['pay_type'];
        $data['ip'] = $request->getClientIp();

        $order = $oRepo->store($data);
        $payment = new Payment();

        try{
            return $result = $payment->run($order);
        } catch (\Exception $e) {
            return $this->error($e->getMessage());
        }
	}

    public function searchOrder(Request $request)
    {
        $mobile = $request->input('mobile', '');

        $oRepo = new OrderRepository();

        $orders = $oRepo->getByMobile($mobile);

        return response()->json(!$orders->isEmpty() ? $orders->toArray() : []);
    }
}
