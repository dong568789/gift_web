<?php

return [
    'store' => [
        'title' => [
            'name' => '标题',
            'rules' => 'required',
        ],
        'integral' => [
            'name' => '积分',
            'rules' => 'numeric',
        ],
        'price' => [
            'name' => '单价',
            'rules' => 'numeric',
        ],
        'original_price' => [
            'name' => '原始单价',
            'rules' => 'numeric',
        ],
        'inventory' => [
            'name' => '库存',
            'rules' => 'nullable|numeric',
        ],
        'hot' => [
            'name' => '热度',
            'rules' => 'nullable|numeric',
        ],
        'cover' => [
            'name' => '封面',
            'rules' => 'nullable|numeric',
        ],
        'att_ids' => [
            'name' => '轮播图',
            'rules' => 'nullable|array',
        ],
        'order' => [
            'name' => '排序',
            'rules' => 'nullable|numeric',
        ],
        'goods_status' => [
            'name' => '状态',
            'rules' => 'numeric',
        ],
        'content' => [
            'name' => '内容',
            'rules' => '',
        ],
    ],
];
