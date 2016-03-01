<?php

namespace App\Presenters;

use App\Post;

use McCool\LaravelAutoPresenter\BasePresenter;


class PostPresenter extends BasePresenter {

    public function __construct(Post $resource)
    {
        $this->wrappedObject = $resource;
    }

    public function excerptOrNull()
    {
        return $this->excerpt ?: null;
    }
    public function bodyOrNull()
    {
        return $this->body ?: null;
    }

    public function published_date() 
    {
        if($this->wrappedObject->published_at) {
            return $this->wrappedObject->published_at->toFormattedDateString();
        }

        return 'Not Published';
    }

    public function published_highlight() 
    {
        if($this->wrappedObject->published_at && $this->wrappedObject->published_at->isFuture()) {
            return 'info';
        } else if(! $this->wrappedObject->published_at) {
            return 'warning';
        }
    }

    public function author_name() 
    {
        if(isset($this->wrappedObject->author)) {
            return $this->wrappedObject->author->name;
        } else {
            return 'Author removed';
        }
    }

}