<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;

class OrderAccountController extends Controller
{
    protected $keys = ['gaid', 'oid'];

    protected $repo;

    public function __construct(OrderAccountRepository $repo)
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
		return $this->view('admin.orderAccount.list');
	}


    public function show(Request $request, $id)
    {
        $orderAccount = $this->repo->find($id);
        if (empty($orderAccount))
            return $this->failure_notexists();

        $this->_data = $orderAccount;
        return !$request->offsetExists('of') ? $this->view('admin.orderAccount.show') : $this->api($orderAccount->toArray());
    }

    public function create()
    {
        $this->_data = [];
        $this->_validates = $this->censorScripts('orderAccount.store', $this->keys);
        return $this->view('admin.orderAccount.create');
    }

    public function store(Request $request)
    {
        $data = $this->censor($request, 'orderAccount.store', $this->keys);

        $orderAccount = $this->repo->store($data);
        return $this->success('', url('admin/order-account'));
    }


    public function destroy(Request $request, $id)
    {
        empty($id) && !empty($request->input('id')) && $id = $request->input('id');
        $ids = Arr::wrap($id);

        $this->repo->destroy($ids);
        return $this->success(null, true, ['id' => $ids]);
    }
}
