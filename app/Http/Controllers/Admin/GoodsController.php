<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;

use App\Repositories\GoodsRepository;

class GoodsController extends Controller
{
    protected $keys = ['title', 'goods_category', 'inventory', 'sales', 'price',
        'attr_ids', 'order', 'description', 'goods_status', 'content'];

    protected $repo;

    public function __construct(GoodsRepository $repo)
    {
        $this->repo = $repo;
    }

    /**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index(Request $request)
	{
		return $this->view('admin.goods.list');
	}

    public function data(Request $request)
    {
        $data = $this->repo->data($request);
        return $this->api($data);
    }

    public function export(Request $request)
    {
        $data = $this->repo->export($request);
        return $this->office($data);
    }

    public function show(Request $request, $id)
    {
        $goods = $this->repo->find($id);
        if (empty($goods))
            return $this->failure_notexists();

        $this->_data = $goods;
        return !$request->offsetExists('of') ? $this->view('admin.goods.show') : $this->api($goods->toArray());
    }

    public function create()
    {
        $this->_data = [];
        $this->_validates = $this->censorScripts('goods.store', $this->keys);
        return $this->view('admin.goods.create');
    }

    public function store(Request $request)
    {
        $data = $this->censor($request, 'goods.store', $this->keys);

        $goods = $this->repo->store($data);
        return $this->success('', url('admin/goods'));
    }

    public function edit($id)
    {
        $goods = $this->repo->find($id);
        if (empty($goods))
            return $this->failure_notexists();

        $this->_validates = $this->censorScripts('goods.store', $this->keys);
        $this->_data = $goods;
        return $this->view('admin.goods.edit');
    }

    public function update(Request $request, $id)
    {
        $goods = $this->repo->find($id);
        if (empty($goods))
            return $this->failure_notexists();

        $data = $this->censor($request, 'goods.store', $this->keys, $goods);

        $goods = $this->repo->update($goods, $data);
        return $this->success();
    }

    public function destroy(Request $request, $id)
    {
        empty($id) && !empty($request->input('id')) && $id = $request->input('id');
        $ids = Arr::wrap($id);

        $this->repo->destroy($ids);
        return $this->success(null, true, ['id' => $ids]);
    }
}
