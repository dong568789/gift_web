<?php

namespace App\Models;

class PayParam extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'param_status' => 'catalog',
        'pay_type' => 'catalog',
    ];
}
