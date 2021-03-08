<?php

return [
    'store' => [
        'pay_type' => [
            'name' => '支付方式',
            'rules' => 'required|catalog:fields.pay_type',
        ],
        'param_status' => [
            'name' => '状态',
            'rules' => 'required|catalog:status.param_status',
        ],
        'value' => [
            'name' => '参数',
            'rules' => 'required',
        ],
    ],
];
