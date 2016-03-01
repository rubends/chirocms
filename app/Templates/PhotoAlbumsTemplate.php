<?php

namespace App\Templates;

use Illuminate\View\View;
use Illuminate\Http\Request;
use App\Album;
use App\Page;
use Carbon\Carbon;

class PhotoAlbumsTemplate extends AbstractTemplate 
{

	protected $view = 'photoalbums';

	protected $albums;

	public function __construct(Album $albums) 
	{
		$this->albums = $albums;
	}

	public function prepare(View $view, Page $page, array $parameters) 
	{
		$albums = $this->albums->with('photos')->get();
		$view->with('albums', $albums);
		$view->with('page', $page);
	}

}