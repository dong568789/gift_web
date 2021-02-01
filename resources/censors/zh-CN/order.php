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
		'contact' => [
			'name' => '联系方式',
			'rules' => 'required',
		],
		'pay_type' => [
			'name' => '支付方式',
			'rules' => 'numeric',
		],
	],
];
