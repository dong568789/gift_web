<?php

namespace App\Models;

use App\Model;

class PayParam extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'param_status' => 'catalog',
        'pay_type' => 'catalog',
        'value' => 'array',
    ];
}
