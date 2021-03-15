<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//$router->pattern('id', '[0-9]+'); //所有id都是数字
    $router->resources([
        'member' => 'MemberController',
    ]);
    $router->get('goods-list', 'HomeController@goodsList');
    $router->get('goods/{id}.html', 'HomeController@goods')->where('id', '[\d]+');
    $router->get('integral.html', 'HomeController@integral');
    $router->get('member.html', 'HomeController@member');
    $router->get('chat.html', 'HomeController@chat');
    $router->post('qiandao', 'HomeController@qiandao');
    $router->get('search.html', 'HomeController@search');
    $router->get('search-order', 'OrderController@searchOrder');
    $router->post('order/store', 'OrderController@store');
    $router->get('order/{order_id}', 'OrderController@index')->where('order_id', '[\d]+');;
    $router->post('pay/ali_notify', 'NotifyController@ali_notify');//支付宝支付回调
    $router->get('pay/ali_return', 'NotifyController@ali_return');//支付宝支付回调
    $router->post('pay/wx_notify', 'NotifyController@wx_notify');//微信支付回调
    $router->get('/', 'HomeController@index')->name('index');


$router->group(['namespace' => 'Admin', 'prefix' => 'admin', 'middleware' => ['auth:admin', 'role:administrator.**']], function($router) {

    $router->post('account/import', 'AccountController@import');
    $router->put('order/rebill/{id}', 'OrderController@rebill')->where('id', '[\d]+');

    $router->crud([
		'member' => 'MemberController',
		'goods' => 'GoodsController',
		'order' => 'OrderController',
		'pay-ali' => 'PayAliController',
		'pay-wx' => 'PayWxController',
		'setting' => 'SettingController',
	]);
	$router->get('/', 'HomeController@index')->name('admin-index');

});

$router->get('auth/login', 'AuthController@login')->name('login');
$router->actions([
	'auth' => ['index', 'login', 'logout', 'authenticate-query'],
]);

$router->group(['namespace' => 'Admin', 'prefix' => 'admin'], function($router) {

	$router->get('auth/login', 'Admin\\AuthController@login')->name('admin-login');
	$router->actions([
		'auth' => ['index', 'login', 'logout', 'choose', 'authenticate-query'],
	]);
});
