<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    use Traits\Translatable;

    public $translatedAttributes = ['title', 'description'];
    public $useTranslationFallback = true;

    protected $fillable = ['title', 'description'];

    /**
     * Get photos belonging to this album
     */
    public function photos()
    {
        return $this->hasMany(AlbumPhoto::class);
    }

    public function getImagesJSONAttribute()
    {
        return json_encode($this->photos()->select('filename')->get());
    }
}
