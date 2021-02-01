<?php

namespace App\Http\Controllers;

use App\Repositories\WebSettingRepository;

class CoreController extends Controller {

	public function __construct()
    {
        $this->_seo = $this->seo();
    }


    public function seo()
    {
        return (new WebSettingRepository)->findByCache();
    }
}
