<?php

namespace App\Templates;

use Illuminate\View\View;
use Illuminate\Http\Request;
use App\Page;
use Carbon\Carbon;

class CalenderTemplate extends AbstractTemplate 
{

	protected $view = 'calender';

	public function prepare(View $view, Page $page, array $parameters) 
	{
		$view->with('page', $page);
	}

}