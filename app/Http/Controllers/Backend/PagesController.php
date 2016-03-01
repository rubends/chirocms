<?php

namespace App\Http\Controllers\Backend;

use App\Page;
use Illuminate\Http\Request;
use Baum\MoveNotPossibleException;

use App\Http\Requests;

class PagesController extends Controller
{
    protected $pages;

    public function __construct(Page $pages) {
        $this->pages = $pages;

        parent::__construct();
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pages = $this->pages->all();

        return view('backend.pages.index', compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Page $page)
    {
        $templates = $this->getPageTemplates();
        $orderPages = $this->pages->where('hidden', false)->orderBy('lft','asc')->get();

        return view('backend.pages.form', compact('page', 'templates', 'orderPages'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\StorePageRequest $request)
    {
        $page = $this->pages->create($request->only('title', 'uri', 'name', 'content', 'template', 'hidden'));

        $this->updatePageOrder($page, $request);


        return redirect(route('backend.pages.index'))->with('status', 'The page was created.');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $templates = $this->getPageTemplates();
        $page = $this->pages->findOrFail($id);
        $orderPages = $this->pages->where('hidden', false)->orderBy('lft','asc')->get();

        return view('backend.pages.form', compact('page', 'templates', 'orderPages'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UpdatePageRequest $request, $id)
    {
        $page = $this->pages->findOrFail($id);

        // change the order of the page
        if($response = $this->updatePageOrder($page, $request)) {
            // there was an error, return it
            return $response;
        }

        $page->fill($request->only('title', 'uri', 'name', 'content', 'template', 'hidden'))->save();

        return redirect(route('backend.pages.edit', $page->id))->with('status', 'The page was updated.');
    }

    public function confirm($id) {

        $page = $this->pages->findOrFail($id);

        return view('backend.pages.confirm', compact('page'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $page = $this->pages->findOrFail($id);

        foreach ($page->children as $child) {
            $child->makeRoot();
        }

        $page->delete();

        return redirect(route('backend.pages.index'))->with('status', 'The page was deleted.');
    }

    /**
     * returns an array of template names from the config file for use in a dropdown
     * @return array template names ['template1' => 'template1']
     */
    protected function getPageTemplates() 
    {
        $templates = config('cms.templates');

        return ['' => ''] + array_combine(array_keys($templates), array_keys($templates));
    }

    protected function updatePageOrder (Page $page, Request $request)
    {
        if($request->has('order', 'orderPage')) {
            // if we have an order & orderpage selecten
            
            try {
                $page->updateOrder($request->input('order'), $request->input('orderPage'));
            } catch (MoveNotPossibleException $e) {
                return redirect(route('backend.pages.edit', $page->id))->withInput()->withErrors([
                    'error' => 'We cannot make a page a child of itself.'
                ]);
            }
        }
    }
}
