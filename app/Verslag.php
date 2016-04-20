<?php

namespace App;

//use Illuminate\Foundation\Auth\User as Authenticatable;
use McCool\LaravelAutoPresenter\HasPresenter;
use App\Presenters\UserPresenter;
use Illuminate\Database\Eloquent\Model;

class Verslag extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'poster', 'name', 'info', 'verslag'
    ];

    public function getPresenterClass()
    {
        return PagePresenter::class;
    }

}
