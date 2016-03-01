<?php

namespace App\Templates;

use Illuminate\View\View;
use App\Post;
use App\Page;
use Carbon\Carbon;

class BlogPostTemplate extends AbstractTemplate 
{

	protected $view = 'blog.post';

	protected $posts;

	public function __construct(Post $posts) 
	{
		$this->posts = $posts;
	}

	public function prepare(View $view, Page $page, array $parameters) 
	{
		
		$post = $this->posts->where('id', $parameters['id'])
							->where('slug', $parameters['slug'])
							->first();
							 
		$view->with('post', $post);
		$view->with('page', $page);
	}

}