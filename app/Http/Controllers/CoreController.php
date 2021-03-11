<?php

namespace App\Http\Controllers;

use App\Repositories\WebSettingRepository;
use App\Tools\Helper;

class CoreController extends Controller {

    public $client_id;

	public function __construct()
    {
        $this->init();
        $this->_seo = $this->seo();
    }


    public function seo()
    {
        return (new WebSettingRepository)->findByCache();
    }

    public function init()
    {
        if (!Helper::hashClient()) {
            $this->client_id = mt_rand(90000, 99999);
            Helper::setClientId($this->client_id, 86400);
        } else {
            $this->client_id = Helper::getClientId();
        }
    }
}
