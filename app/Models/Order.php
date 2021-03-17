<?php

namespace App\Models;

use App\Model;

class Order extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'order_status' => 'catalog',
        'pay_type' => 'catalog',
    ];

    public function goods()
    {
        return $this->belongsTo("App\\Models\\Goods", "gid", "id");
    }

    function param()
    {
        return $this->hasOne("App\\Models\\PayParam", "id", "ppid");

    }
}
