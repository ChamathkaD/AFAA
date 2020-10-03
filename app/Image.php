<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Image extends Model
{
    public function Album()
    {
        return $this->belongsTo(Album::class, 'album_id');
    }
}
