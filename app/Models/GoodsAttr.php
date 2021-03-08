<?php

namespace App\Models;

use App\Model;

class GoodsAttr extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'value' => 'array'
    ];

}
