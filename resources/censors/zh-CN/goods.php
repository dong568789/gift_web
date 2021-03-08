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
        'alias' => [
            'name' => '别名ID',
            'rules' => 'required',
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
        'sales' => [
            'name' => '销量',
            'rules' => 'nullable|numeric',
        ],
        'cover' => [
            'name' => '封面',
            'rules' => 'nullable|numeric',
        ],
        'order' => [
            'name' => '排序',
            'rules' => 'nullable|numeric',
        ],
        'description' => [
            'name' => '描述',
            'rules' => 'nullable',
        ],
        'goods_status' => [
            'name' => '锁定',
            'rules' => 'numeric',
        ],
        'content' => [
            'name' => '内容',
            'rules' => '',
        ],
    ],
];
