<?php

namespace App\Http\Controllers;

use App\Repositories\UserSignRepository;
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
        $this->_navAct = "home";
        $this->_data = $data['data'];
        return $this->view('web.index');
	}

	//
	public function integral(Request $request)
    {
        $this->_navAct = "integral";
        $data = $this->_list($request, 10);
        $this->_likeList = $data['data'];
        $this->_myInventory = $this->client['integral'];
        return $this->view('web.integral');
    }

	public function goods(Request $request, $id)
    {
        $goods = $this->repo->find($id);
        if (empty($goods)) {
            return $this->error();
        }

        $this->_goods = $goods;
        $this->_myInventory = $this->client['integral'];
        $this->_SEO = [
            'title' => $goods->title
        ];
        return $this->view('web.goods');
    }

    public function search(Request $request)
    {
        $data = $this->_list($request, 10);
        $this->_likeList = $data['data'];
        $this->_SEO = ['title' => '我的订单查询'];
        $this->_navAct = "search";

        return $this->view('web.search');
    }

    public function member(Request $request)
    {
        $this->_navAct = "member";
        $this->_clientId = $this->client['id'];
        $this->_SEO = ['title' => '个人中心'];
        return $this->view('web.member');
    }

    public function chat(Request $request)
    {
        $this->_navAct = "chat";
        $this->_SEO = ['title' => '联系客服'];
        return $this->view('web.chat');
    }

    public function qiandao(Request $request)
    {
        $clientId = $this->client['id'];
        $usRepo = new UserSignRepository();
        $check = $usRepo->check($clientId);
        if ($check) {
            return $this->error('今日已签到');
        }

        $usRepo->store(['client_id' => $clientId]);

        $addIntegral = 100;
        $integral = $this->client['integral'] + $addIntegral;
        Helper::setClient(['id' => $clientId, 'integral' => $integral]);

        return response()->json(["result" => 'success', 'message' => '签到成功', 'data' => ['integral' => $integral]]);
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
