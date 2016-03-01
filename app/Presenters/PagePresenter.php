<?php

namespace App\Presenters;

use App\Page;

use McCool\LaravelAutoPresenter\BasePresenter;


class PagePresenter extends BasePresenter {

    public function __construct(Page $resource)
    {
        $this->wrappedObject = $resource;
    }

    public function uriWildcard(){
        return $this->wrappedObject->uri . '*';
    }

    public function prettyUri()
    {
    	return '/' . ltrim($this->wrappedObject->uri, '/');
    }

    public function linkToPaddedTitle($link) {
    	$padding = str_repeat('&nbsp;', $this->wrappedObject->depth * 4);

    	return $padding . link_to($link, $this->wrappedObject->title);
    }

    public function paddedTitle() {
    	return str_repeat('&nbsp;', $this->wrappedObject->depth * 4) . $this->wrappedObject->title;
    }

}