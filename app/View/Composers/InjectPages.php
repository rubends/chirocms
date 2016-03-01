<?php

namespace App\View\Composers;

use Illuminate\View\View;
use App\Page;

class InjectPages 
{

	protected $pages;

	public function __construct(Page $pages) 
	{
		$this->pages = $pages;
	}


	public function compose(View $view)
	{
		$pages = $this->pages->where('hidden', false)->get()->toHierarchy();
		//dd($pages->uri);
		$view->with('pages', $pages);
	}
}