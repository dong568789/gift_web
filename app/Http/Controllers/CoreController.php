<?php

namespace App\Http\Controllers;

use App\Repositories\WebSettingRepository;
use App\Tools\Helper;

class CoreController extends Controller {

    public $client;

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
            $this->client = ['id' => mt_rand(90000, 99999), 'integral' => 8850];
            Helper::setClient($this->client, 86400 * 7);
        } else {
            $this->client = Helper::getClient();
        }
    }
}
