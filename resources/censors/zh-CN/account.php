<?php

return [
	'store' => [
		'username' => [
			'name' => '用户名',
			'rules' => 'required',
		],
		'password' => [
			'name' => '密码',
			'rules' => 'required',
		],
		'account_type' => [
			'name' => '类型',
			'rules' => 'numeric',
		],
		'account_lock' => [
			'name' => '锁定',
			'rules' => 'numeric',
		],
	],
];
