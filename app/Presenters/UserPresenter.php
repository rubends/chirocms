<?php

namespace App\Presenters;

use App\User;

use McCool\LaravelAutoPresenter\BasePresenter;


class UserPresenter extends BasePresenter {

    public function __construct(User $resource)
    {
        $this->wrappedObject = $resource;
    }

    public function last_login_difference()
    {
        return $this->wrappedObject->last_login_at->diffForHumans();
    }

}