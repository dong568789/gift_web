<?php

return [
	'store' => [
		'number' => [
			'name' => '数量',
			'rules' => 'numeric',
		],
		'gid' => [
			'name' => '商品',
			'rules' => 'numeric',
		],
		'realname' => [
			'name' => '联系人',
			'rules' => 'required',
		],
		'mobile' => [
			'name' => '手机号',
			'rules' => 'required',
		],
		'address' => [
			'name' => '联系方式',
			'rules' => 'required',
		],
		'mark' => [
			'name' => '备注',
			'rules' => 'required',
		],
		'pay_type' => [
			'name' => '支付方式',
			'rules' => 'numeric',
		],
	],
];
