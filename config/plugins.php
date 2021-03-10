<?php

return [
	'paths' => [
		base_path('plugins'),
		__DIR__.'/../../../paas/l++/plugins/',
	],
	'plugins' => [
		'attachment' => [
			'enabled' => true,
		],
		'catalog' => [
			'enabled' => true,
		],
		'system' => [
			'enabled' => true,
		],
		'tools' => [
			'enabled' => true,
		],
		'helpers' => [
			'enabled' => true,
		],
		'oauth2' => [
			'enabled' => false,
		],
		'socialite' => [
			'enabled' => false,
		],
		'wechat' => [
			'enabled' => false,
		],
	],

];
