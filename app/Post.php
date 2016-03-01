<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use McCool\LaravelAutoPresenter\HasPresenter;
use App\Presenters\PostPresenter;

class Post extends Model implements HasPresenter
{
    protected $fillable = ['author_id', 'title', 'slug', 'body', 'excerpt', 'published_at'];
    protected $dates = ['published_at'];


    public function setPublishedAtAttribute($value)
    {
        $this->attributes['published_at'] = $value ?: null;
    }


    public function author()
    {
        return $this->belongsTo(User::class);
    }

    public function getPresenterClass()
    {
    	return PostPresenter::class;
    }
}
