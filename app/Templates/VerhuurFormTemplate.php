<?php

namespace App\Templates;

use Illuminate\View\View;
use Illuminate\Http\Request;
use App\Page;
use Carbon\Carbon;

class VerhuurFormTemplate extends AbstractTemplate 
{

	protected $view = 'verhuurform';

	public function prepare(View $view, Page $page, array $parameters) 
	{
		$view->with('page', $page);
	}

}