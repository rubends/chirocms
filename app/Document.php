<?php

namespace App;

//use Illuminate\Foundation\Auth\User as Authenticatable;
use McCool\LaravelAutoPresenter\HasPresenter;
use App\Presenters\UserPresenter;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'posted_by', 'title', 'info', 'type', 'document'
    ];

    public function getPresenterClass()
    {
        return PagePresenter::class;
    }

}
