<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Repositories\OrderRepository;

class NotifyController extends  Controller{

    public function wx_notify(Request $request)
    {
        $payment = new \App\Tools\Wxpay();
        $resulst = $payment->notify($request);

        if($resulst){
            (new OrderRepository)->callback($resulst->order);
            return 'success';
        }
        return 'fail';
    }

    public function ali_notice(Request $request)
    {
        $payment = new \App\Tools\Alipay();

        $resulst = $payment->notify($request);

        if($resulst){
            (new OrderRepository)->callback($resulst->order);
            return 'success';
        }
        return 'fail';
    }

    public function ali_return(Request $request)
    {
        $payment = new \App\Tools\Alipay();

        $resulst = $payment->notify($request);

        if($resulst){
            (new OrderRepository)->callback($resulst->order);
            return redirect(url('order/search-order'));
        }
        return '支付失败!';
    }
}
