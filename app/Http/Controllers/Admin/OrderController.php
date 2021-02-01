<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;

use App\Repositories\OrderRepository;

class OrderController extends Controller
{
    protected $keys = ['flag'];

    protected $repo;

    public function __construct(OrderRepository $repo)
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
		return $this->view('admin.order.list');
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
        $order = $this->repo->find($id);
        if (empty($order))
            return $this->failure_notexists();

        $this->_data = $order;
        return !$request->offsetExists('of') ? $this->view('admin.order.show') : $this->api($order->toArray());
    }

    public function create()
    {
        $this->_data = [];
        $this->_validates = $this->censorScripts('order.store', $this->keys);
        return $this->view('admin.order.create');
    }

    public function store(Request $request)
    {
        $data = $this->censor($request, 'order.store', $this->keys);

        $order = $this->repo->store($data);
        return $this->success('', url('admin/order'));
    }

    public function edit($id)
    {
        $order = $this->repo->find($id);
        if (empty($order))
            return $this->failure_notexists();

        $this->_validates = $this->censorScripts('order.store', $this->keys);
        $this->_data = $order;
        return $this->view('admin.order.edit');
    }

    public function update(Request $request, $id)
    {
        $order = $this->repo->find($id);
        if (empty($order))
            return $this->failure_notexists();

        $data = $this->censor($request, 'order.store', $this->keys, $order);

        $order = $this->repo->update($order, $data);
        return $this->success();
    }

    public function rebill(Request $request, $id)
    {
        $order = $this->repo->find($id);
        if (empty($order))
            return $this->failure_notexists();

        $result = $this->repo->sendAccount($order);

        if(empty($result)) $this->error("补单失败");

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
