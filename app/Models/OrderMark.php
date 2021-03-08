<?php

namespace App\Models;

class OrderMark extends Model
{
    protected $guarded = ['id'];

    public function order()
    {
        return $this->belongsTo("App\Order", "oid", "id");
    }
}
