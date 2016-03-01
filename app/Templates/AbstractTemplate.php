<?php

namespace App\Templates;

use Illuminate\View\View;
use App\Page;

abstract class AbstractTemplate 
{

	protected $view; // what template file will we use?

	// set the view & parameters for this template
	abstract public function prepare(View $view, Page $page, array $parameters);

	public function getView()
	{
		return $this->view;
	}

}