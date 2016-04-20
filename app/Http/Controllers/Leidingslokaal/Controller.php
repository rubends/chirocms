<?php

namespace App\Http\Controllers\Leidingslokaal;

use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
	public function __construct() {
		$this->middleware('auth');
	}
}
