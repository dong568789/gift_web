<?php

namespace App\Models;

class Order extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'order_status' => 'catalog',
        'pay_type' => 'catalog',
    ];

    public function goods()
    {
        return $this->belongsTo("App\\Goods", "gid", "id");
    }

    public function mark()
    {
        return $this->hasOne("App\\OrderMark", 'oid', 'id');
    }

}
