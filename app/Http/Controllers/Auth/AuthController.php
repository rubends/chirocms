<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AuthController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->redirectAfterLogout = route('auth.login');


        $this->redirectTo = route('leidingslokaal.leidingsboard');

        $this->middleware('guest', ['except' => 'getLogout']);

    }


}
