<?php

namespace App\Http\Controllers;

use App\Page;

class PageController extends Controller
{
	public function show(Page $page, array $parameters) 
	{
		$this->prepareTemplate($page, $parameters);

		return view('page', compact('page'));
	}

	protected function prepareTemplate(Page $page, array $parameters) 
	{
		$templates = config('cms.templates');

		if(! $page->template || ! isset($templates[$page->template])) 
		{
			// (no) selected template available
			return;
		}

		// get instance of template class
		$template = app($templates[$page->template]);

		// view name from templates folder based on template class abstract getView method
		$view = sprintf('templates.%s', $template->getView());

		if(! view()->exists($view)) {
			return;
		}

		// call template prepare method with instanciated view & params
		$template->prepare($view = view($view), $page, $parameters);

		// set view param which will be checked in page view
		$page->view = $view;
	}
}
