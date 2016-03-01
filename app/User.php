<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use McCool\LaravelAutoPresenter\HasPresenter;
use App\Presenters\UserPresenter;

class User extends Authenticatable implements HasPresenter
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    protected $dates = ['last_login_at'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function setPasswordAttribute($value) {
        $this->attributes['password'] = bcrypt($value);
    }

    public function getPresenterClass()
    {
        return UserPresenter::class;
    }
}
