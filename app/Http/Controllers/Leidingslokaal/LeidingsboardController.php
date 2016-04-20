<?php

namespace App\Http\Controllers\Leidingslokaal;

use App\User;

class LeidingsboardController extends Controller {

	public function index(User $users) {

		$users = $users->whereNotNull('last_login_at')->orderBy('last_login_at', 'desc')->take(5)->get();

		return view('leidingslokaal.leidingsboard', compact('users'));
	}

}