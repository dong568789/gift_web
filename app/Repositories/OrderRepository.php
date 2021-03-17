<?php

namespace App\Repositories;

use DB;
use Illuminate\Http\Request;
use Addons\Core\Contracts\Repository;
use Illuminate\Database\Eloquent\Model;

use App\Models\Order;
use Illuminate\Support\Arr;

class OrderRepository extends Repository {

// callback 状态
    const CALLBACK_SUCCESS=1; // 订单更新成功
    const CALLBACK_EXIST=2; // 订单不存在
    const CALLBACK_STATUS=3; // 订单状态不合法
    const CALLBACK_AMOUNT=4; // 订单金额不一致
    const CALLBACK_FAIL=5; // 订单更新失败

	public function prePage()
	{
		return config('size.models.'.(new Order)->getTable(), config('size.common'));
	}

	public function find($id, array $columns = ['*'])
	{
		return Order::with([])->find($id, $columns);
	}

    public function findByOrderId($order_id, array $columns = ['*'])
    {
        return Order::where('order_id', $order_id)->select($columns)->first();
    }

	public function findOrFail($id, array $columns = ['*'])
	{
		return Order::with([])->findOrFail($id, $columns);
	}

	public function store(array $data)
	{
		return DB::transaction(function() use ($data) {
			$model = Order::create($data);
			return $model;
		});
	}

	public function update(Model $model, array $data)
	{
		return DB::transaction(function() use ($model, $data){
			$model->update($data);
			return $model;
		});
	}

	public function destroy(array $ids)
	{
		DB::transaction(function() use ($ids) {
			Order::destroy($ids);
		});
	}

	public function data(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new Order;
		$builder = $model->newQuery()->with([]);

		$total = $this->_getCount($request, $builder, false);
		$data = $this->_getData($request, $builder, $callback, $columns);
		$data['recordsTotal'] = $total; //不带 f q 条件的总数
		$data['recordsFiltered'] = $data['total']; //带 f q 条件的总数

		return $data;
	}

	public function export(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new Order;
		$builder = $model->newQuery()->with([]);
		$size = $request->input('size') ?: config('size.export', 1000);

		$data = $this->_getExport($request, $builder, $callback, $columns);

		return $data;
	}

	public function getByMobile(string $mobile)
    {
        return Order::where('mobile', $mobile)->orderBy('id', 'desc')->get();
    }

	public function createOrderSn()
    {
        return date("YmdHis") . rand(1111, 9999);
    }

    public function callback($params)
    {
        $order_no = $params['out_trade_no'];
        $order = $this->findByOrderId($order_no);
        if($order->order_status->id != catalog_search('status.order_status.normal', 'id')){
            return self::CALLBACK_STATUS;
        }
        !empty($params['trade_no']) && $order->third_id =  $params['trade_no'];

        $order->order_status = catalog_search('status.order_status.success', 'id');
        logger()->info('money == :'.(float)$order->amount.'-----'.(float)$params['total_amount']);

        if(bccomp($order->amount, $params['total_amount']) != 0){
            return self::CALLBACK_AMOUNT;
        }

        $result = $order->save();

        if(!$result){
            return self::CALLBACK_FAIL;
        }

        logger()->info('callbackCp:'.print_r($order->order_id, true));
        return self::CALLBACK_SUCCESS;
    }
}
