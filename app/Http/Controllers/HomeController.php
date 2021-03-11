<?php

namespace App\Http\Controllers;

use App\Tools\Helper;
use Illuminate\Http\Request;

use App\Repositories\GoodsRepository;

class HomeController extends CoreController
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
	public function index(Request $request)
	{
	    $request->offsetSet('f', [
	        'goods_status' => catalog_search('status.goods_status.enabled', 'id')
        ]);
        $request->offsetSet('o', [
            'order' => 'desc'
        ]);
        $request->offsetSet('size', 100);

        $data = $this->repo->data($request);

        $this->_data = $data;
        return $this->view('index');
	}

	//
	public function integral(Request $request)
    {
        return $this->view('web.integral');
    }

	public function goods(Request $request, $id)
    {
        $goods = $this->repo->find($id);
        if (empty($goods)) {
            return $this->error();
        }

        $this->_goods = $goods;
        $this->_SEO = [
            'title' => $goods->title
        ];
        return $this->view('web.goods');
    }

    public function search(Request $request)
    {
        $this->_likeList = $this->_list($request, 10);
        $this->_SEO = ['title' => '我的订单查询'];
        return $this->view('web.search');
    }

    public function member(Request $request)
    {

        $this->_SEO = ['title' => '个人中心'];
        return $this->view('web.member');
    }


    public function goodsList(Request $request)
    {
        $data = $this->_list($request);
        return response()->json($data['data']);
    }

    public function _list(Request $request, int $size = 100)
    {
        $cid = $request->input('cid');

        $append = [
            'goods_status' => catalog_search('status.goods_status.enabled', 'id'),
        ];

        !empty($cid) && $append = array_merge($append, ['goods_category' => $cid]);

        $request->offsetSet('f', $append);
        $request->offsetSet('o', [
            'order' => 'desc'
        ]);

        $request->offsetSet('size', $size);

        return $this->repo->data($request);
    }
}
