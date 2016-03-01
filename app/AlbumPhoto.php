<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AlbumPhoto extends Model
{

	protected $fillable = ['album_id', 'filename', 'description'];

    public function album() {
    	return $this->belongsTo(Album::class);
    }
}
