<?php

namespace App\Http\Controllers;

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
		return $this->view('web.index');
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

}
