<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;

use App\Repositories\PayParamRepository;

class PayAliController extends Controller
{
    protected $keys = ['mark', 'param_status', 'value'];

    protected $repo;

    public function __construct(PayParamRepository $repo)
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
		return $this->view('admin.payAli.list');
	}

    public function data(Request $request)
    {
        $request = $this->parseRequest($request);
        $data = $this->repo->data($request);
        return $this->api($data);
    }

    public function export(Request $request)
    {
        $request = $this->parseRequest($request);
        $data = $this->repo->export($request);
        return $this->office($data);
    }

    public function show(Request $request, $id)
    {
        $payParam = $this->repo->find($id);
        if (empty($payParam))
            return $this->failure_notexists();

        $this->_data = $payParam;
        return !$request->offsetExists('of') ? $this->view('admin.payAli.show') : $this->api($payParam->toArray());
    }

    public function create()
    {
        $this->_data = [];
        $this->_validates = $this->censorScripts('payParam.store', $this->keys);
        return $this->view('admin.payAli.create');
    }

    public function store(Request $request)
    {
        $data = $this->censor($request, 'payParam.store', $this->keys);

        $data['pay_type'] =  catalog_search('fields.pay_type.ali', 'id');
        $payParam = $this->repo->store($data);
        return $this->success('', url('admin/pay-ali'));
    }

    public function edit($id)
    {
        $payParam = $this->repo->find($id);
        if (empty($payParam))
            return $this->failure_notexists();

        $this->_validates = $this->censorScripts('payParam.store', $this->keys);
        $this->_data = $payParam;
        return $this->view('admin.payAli.edit');
    }

    public function update(Request $request, $id)
    {
        $payParam = $this->repo->find($id);
        if (empty($payParam))
            return $this->failure_notexists();

        $data = $this->censor($request, 'payParam.store', $this->keys, $payParam);

        $payParam = $this->repo->update($payParam, $data);
        return $this->success();
    }

    public function destroy(Request $request, $id)
    {
        empty($id) && !empty($request->input('id')) && $id = $request->input('id');
        $ids = Arr::wrap($id);

        $this->repo->destroy($ids);
        return $this->success(null, true, ['id' => $ids]);
    }

    public function parseRequest(Request $request)
    {
        $f = $request->input('f', []);

        $append = ['pay_type' => catalog_search('fields.pay_type.ali', 'id')];

        $request->offsetSet('f', array_merge($f, $append));
        return $request;
    }

}

