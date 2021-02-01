<?php

return [
    'store' => [
        'title' => [
            'name' => '标题',
            'rules' => 'required',
        ],
        'number' => [
            'name' => '每套数量',
            'rules' => 'numeric',
        ],
        'goods_category' => [
            'name' => '分类',
            'rules' => 'numeric',
        ],
        'account_type' => [
            'name' => '账号类型',
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
        'price' => [
            'name' => '单价',
            'rules' => 'numeric',
        ],
        'cover_id' => [
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
