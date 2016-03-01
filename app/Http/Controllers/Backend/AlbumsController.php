<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Album;
use App\AlbumPhoto;

class AlbumsController extends Controller
{
    protected $albums, $albumPhotos;

    public function __construct(Album $albums, AlbumPhoto $albumPhotos) 
    {
        $this->albums = $albums;
        $this->albumPhotos = $albumPhotos;

        parent::__construct();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $albums = $this->albums->with('photos')->get();
        //$albumCount = $albums->count();

        return view('backend.albums.index', compact('albums', 'albumCount'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Album $album)
    {
        return view ('backend.albums.form', compact('album'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\StoreAlbumRequest $request)
    {
        $this->albums->fill(
            $request->only('title', 'description')
        )->save();

        foreach (json_decode($request->input('imagesJSON')) as $imageFilename) {
            $this->albums->photos()->create(['filename' => $imageFilename]);
        }

        return redirect(route('backend.albums.index'))->with('status', 'Album has been created.');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $album = $this->albums->findOrFail($id);

        return view('backend.albums.form', compact('album'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $album = $this->albums->findOrFail($id);

        $album->fill(
            $request->only('title', 'description')
        )->save();

        $album->photos()->delete();
        //dd();
        foreach (json_decode($request->input('imagesJSON')) as $imageFilename) {
            $album->photos()->create(['filename' => $imageFilename]);
        }

        return redirect(route('backend.albums.edit',$album->id))->with('status', 'Album has been updated.');
    }

    public function confirm($id) {

        $album = $this->albums->findOrFail($id);

        return view('backend.albums.confirm', compact('album'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $album = $this->albums->findOrFail($id);

        $album->photos()->delete();
        $album->delete();

        return redirect(route('backend.albums.index'))->with('status', 'The album was deleted.');
    }
}
