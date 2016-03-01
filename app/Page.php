<?php

namespace App;

// extends from eloquent as well
use Baum\Node;
use McCool\LaravelAutoPresenter\HasPresenter;
use App\Presenters\PagePresenter;


class Page extends Node implements HasPresenter
{

    use Traits\Translatable;

    public $translatedAttributes = ['title', 'content'];
    public $useTranslationFallback = true;

    protected $fillable = ['title', 'name', 'uri', 'content', 'template', 'hidden'];

    public function updateOrder($order, $orderPage) 
    {
    	$orderPage = $this->findOrFail($orderPage);

        if ($order == 'before') {
            $this->moveToLeftOf($orderPage);
        } elseif ($order == 'after') {
            $this->moveToRightOf($orderPage);
        } elseif ($order == 'childOf') {
            $this->makeChildOf($orderPage);
        }
    }

    public function setHiddenAttribute($value) {
        $this->attributes['hidden'] = $value ?: false;
    }

    public function setNameAttribute($value) {
        $this->attributes['name'] = $value ?: null;
    }

    public function setTemplateAttribute($value) {
    	$this->attributes['template'] = $value ?: null;
    }

    public function getPresenterClass()
    {
    	return PagePresenter::class;
    }
}
