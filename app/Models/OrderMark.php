<?php

namespace App\Models;

use App\Model;

class OrderMark extends Model
{
    protected $guarded = ['id'];

    public function order()
    {
        return $this->belongsTo("App\\Models\\Order", "oid", "id");
    }
}
