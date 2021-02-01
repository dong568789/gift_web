<?php

namespace App\Repositories;

use DB;
use Illuminate\Http\Request;
use Addons\Core\Contracts\Repository;
use Illuminate\Database\Eloquent\Model;

use App\Order;

class OrderRepository extends Repository {

	public function prePage()
	{
		return config('size.models.'.(new Order)->getTable(), config('size.common'));
	}

	public function find($id, array $columns = ['*'])
	{
		return Order::with(['accounts'])->find($id, $columns);
	}

    public function findByOrderId($order_id, array $columns = ['*'])
    {
        return Order::where('order_id', $order_id)->select($columns)->first();
    }

    public function getByConcat($contact, array $columns = ['*'])
    {
        return Order::with(['accounts'])->where('order_id', $contact)->OrWhere('contact', $contact)->select($columns)
            ->get();
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

	public function createOrderSn()
    {
        return date("YmdHis") . rand(1111, 9999);
    }


    public function sendAccount(Model $order)
    {
        $size = $order->goods->number;
        $accountType = $order->goods->account_type->id;
        $aRepo = new AccountRepository();

        $accounts = $aRepo->getAccounts($accountType, $size);

        foreach ($accounts as $account){
            $account->update(['oid' => $order->id]);
        }
        $order->order_status = catalog_search('status.order_status.success', 'id');
        if (!$accounts->isEmpty()) {
            $order->send_account = catalog_search('status.send_account.success', 'id');
        }
        $order->save();

        return $accounts;
    }
}
