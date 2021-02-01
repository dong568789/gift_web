<?php

namespace App\Http\Controllers\Api\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function log(Request $request)
    {
        $body = $request->getContent();

        logger()->info($body);
        return $this->success();
    }

}
