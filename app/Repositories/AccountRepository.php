<?php

namespace App\Repositories;

use DB;
use Illuminate\Http\Request;
use Addons\Core\Contracts\Repository;
use Illuminate\Database\Eloquent\Model;

use App\Account;

class AccountRepository extends Repository {

	public function prePage()
	{
		return config('size.models.'.(new Account)->getTable(), config('size.common'));
	}

	public function find($id, array $columns = ['*'])
	{
		return Account::with([])->find($id, $columns);
	}

	public function findOrFail($id, array $columns = ['*'])
	{
		return Account::with([])->findOrFail($id, $columns);
	}

	public function store(array $data)
	{
		return DB::transaction(function() use ($data) {
			$model = Account::create($data);
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
			Account::destroy($ids);
		});
	}

	public function data(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new Account;
		$builder = $model->newQuery()->with([]);

		$total = $this->_getCount($request, $builder, false);
		$data = $this->_getData($request, $builder, $callback, $columns);
		$data['recordsTotal'] = $total; //不带 f q 条件的总数
		$data['recordsFiltered'] = $data['total']; //带 f q 条件的总数

		return $data;
	}

	public function export(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new Account;
		$builder = $model->newQuery()->with([]);
		$size = $request->input('size') ?: config('size.export', 1000);

		$data = $this->_getExport($request, $builder, $callback, $columns);

		return $data;
	}

	public function getAccounts(int $account_type, int $size)
    {
        return Account::whereNull('oid')
            ->where('account_type', $account_type)->take($size)->get();
    }

    public function all()
    {
        return Account::get()->keyBy('username');
    }

    /**
     * 导入
     * @param $data
     * @return mixed
     */
    public function import($data)
    {
        $all = $this->all();

        $accountTypes = catalog_search('fields.account_type', 'children')->keyBy('title');

        foreach($data as $key=>$item){

            $type = $accountTypes->get($item['account_type']);

            if($all->has($item['username']) || empty($item['password']) || empty($type))
                continue;

            $item['account_type'] = $type->id;
            $this->store($item);
        }
    }
}
