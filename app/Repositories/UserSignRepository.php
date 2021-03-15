<?php

namespace App\Repositories;

use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Addons\Core\Contracts\Repository;
use Illuminate\Database\Eloquent\Model;

use App\Models\UserSign;

class UserSignRepository extends Repository {

	public function prePage()
	{
		return config('size.models.'.(new UserSign)->getTable(), config('size.common'));
	}

	public function find($id, array $columns = ['*'])
	{
		return UserSign::with([])->find($id, $columns);
	}

	public function findOrFail($id, array $columns = ['*'])
	{
		return UserSign::with([])->findOrFail($id, $columns);
	}

	public function store(array $data)
	{
		return DB::transaction(function() use ($data) {
			$model = UserSign::create($data);
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
			UserSign::destroy($ids);
		});
	}

	public function data(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new UserSign;
		$builder = $model->newQuery()->with([]);

		$total = $this->_getCount($request, $builder, false);
		$data = $this->_getData($request, $builder, $callback, $columns);
		$data['recordsTotal'] = $total; //不带 f q 条件的总数
		$data['recordsFiltered'] = $data['total']; //带 f q 条件的总数

		return $data;
	}

	public function export(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new UserSign;
		$builder = $model->newQuery()->with([]);
		$size = $request->input('size') ?: config('size.export', 1000);

		$data = $this->_getExport($request, $builder, $callback, $columns);

		return $data;
	}

    /**
     * is sign in
     * @param int $client_id
     */
	public function check(int $client_id)
    {
        $now = Carbon::now();
        $us = UserSign::where('client_id', $client_id)->where('created_at', '>=', $now->copy()->startOfDay())->where('created_at', '<=', $now->copy()->endOfDay())->first();
        return $us;
    }
}
