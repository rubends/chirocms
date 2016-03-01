<?php

namespace App\Templates;

use Illuminate\View\View;
use App\Post;
use App\Page;
use Carbon\Carbon;

class BlogTemplate extends AbstractTemplate 
{

	protected $view = 'blog';

	protected $posts;

	public function __construct(Post $posts) 
	{
		$this->posts = $posts;
	}

	public function prepare(View $view, Page $page, array $parameters) 
	{
		
		
		$posts = $this->posts->with('author')
							 ->where('published_at', '<', Carbon::now())
							 ->orderBy('published_at', 'desc')
							 ->paginate(10);
							 
		$view->with('posts', $posts);
		$view->with('page', $page);
	}

}