<?php

namespace App\Repositories;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Addons\Core\Contracts\Repository;
use Illuminate\Database\Eloquent\Model;

use App\Goods;

class GoodsRepository extends Repository {

    protected function separateData($data)
    {
        $attrKey = ['attr'];
        $attr = Arr::only($data, $attrKey);
        $data = Arr::except($data, $attrKey);

       return compact('data', 'attr');
    }

	public function prePage()
	{
		return config('size.models.'.(new Goods)->getTable(), config('size.common'));
	}

	public function find($id, array $columns = ['*'])
	{
		return Goods::with([])->find($id, $columns);
	}

	public function findOrFail($id, array $columns = ['*'])
	{
		return Goods::with([])->findOrFail($id, $columns);
	}

	public function store(array $data)
	{
	    $d = $this->separateData($data);
	    extract($d);
		return DB::transaction(function() use ($data, $attr) {
			$model = Goods::create($data);
			if (!empty($attr)) {
                foreach ($attr as $v){
                    if (empty($v['title'])) continue;
                    $model->attr()->create(['title' => $v['title'], 'value' => json_encode($v['value'])]);
                }
            }
			return $model;
		});
	}

	public function update(Model $model, array $data)
	{
        $d = $this->separateData($data);
        extract($d);
		return DB::transaction(function() use ($model, $data, $attr){
			$model->update($data);

            $model->attr()->detach();
            foreach ($attr as $v){
                if (empty($v['title'])) continue;
                $model->attr()->create(['title' => $v['title'], 'value' => json_encode($v['value'])]);
            }

			return $model;
		});
	}

	public function destroy(array $ids)
	{
		DB::transaction(function() use ($ids) {
			Goods::destroy($ids);
		});
	}

	public function data(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new Goods;
		$builder = $model->newQuery()->with([]);

		$total = $this->_getCount($request, $builder, false);
		$data = $this->_getData($request, $builder, $callback, $columns);
		$data['recordsTotal'] = $total; //不带 f q 条件的总数
		$data['recordsFiltered'] = $data['total']; //带 f q 条件的总数

		return $data;
	}

	public function export(Request $request, callable $callback = null, array $columns = ['*'])
	{
		$model = new Goods;
		$builder = $model->newQuery()->with([]);
		$size = $request->input('size') ?: config('size.export', 1000);

		$data = $this->_getExport($request, $builder, $callback, $columns);

		return $data;
	}

}
