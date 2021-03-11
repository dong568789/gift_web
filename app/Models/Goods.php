<?php

namespace App\Models;

use App\Model;
use Plugins\Attachment\App\Tools\Helpers;

class Goods extends Model
{
    use AttachmentCastTrait;

    protected $guarded = ['id'];

    protected $casts = [
        'goods_status' => 'catalog',
        'cover' => 'attachment',
        'att_ids' => 'array',
    ];

    protected $appends = ['save', 'attachment_urls'];


    public function getAttachmentUrlsAttribute()
    {
        $r = [];
        if (is_array($this->att_ids))
            foreach ($this->att_ids as $key => $value)
                $r[$key] = Helpers::getUrl($value);
        return $r;
    }

    public function getSaveAttribute()
    {
        return ceil($this->original_price - $this->price);
    }
}


