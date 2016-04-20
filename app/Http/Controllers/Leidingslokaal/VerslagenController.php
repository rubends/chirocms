<?php

namespace App\Http\Controllers\Leidingslokaal;

use Illuminate\Http\Request;
use App\Verslag;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;


class VerslagenController extends Controller
{
	protected $verslagen;

	public function __construct(Verslag $verslagen) {
		$this->verslagen = $verslagen;

		parent::__construct();
	}

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $verslagen = $this->verslagen->paginate(20);

        return view('leidingslokaal.verslagen.index', compact('verslagen'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Verslag $verslag)
    {
        return view('leidingslokaal.verslagen.form', compact('verslag'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\StoreVerslagRequest $request)
    {
        $file = array('verslag' => Input::file('verslag'));
        $rules = array('verslag' => 'required',);
        $validator = Validator::make($file, $rules);

        if ($validator->fails()) {
            return redirect(route('leidingslokaal.verslagen.form'))->with('stats', 'Het verslag heeft niet het juiste bestand.');
        }
        else
        {

            if (Input::file('verslag')->isValid()) {

                $destinationPath = '../public/verslagen';
                $extension = Input::file('verslag')->getClientOriginalExtension();
                $fileName = md5(time()).'.'.$extension;
                Input::file('verslag')->move($destinationPath, $fileName);

                //$this->verslagen->create($request->only('poster', 'name', 'info'));
                /*$this->verslagen->fill(
                    $request->only('poster', 'name', 'info')
                )->save();*/
                $this->verslagen->create(['verslag' => $fileName] + $request->only('poster', 'name', 'info'));

                return redirect(route('leidingslokaal.verslagen.index'))->with('stats', 'Het verslag is toegevoegd!');

            }
            else {return redirect(route('leidingslokaal.verslagen.form'))->with('stats', 'Er is een probleem met het verslag.');}
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $verslag = $this->verslagen->findOrFail($id);

        return view('leidingslokaal.verslagen.form', compact('verslag'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UpdateVerslagRequest $request, $id)
    {
        $verslag = $this->verslagen->findOrFail($id);

        $verslag->fill($request->only('poster', 'name', 'info', 'verslag'))->save();

        return redirect(route('leidingslokaal.verslagen.edit', $verslag->id))->with('status', 'Het verslag is geupdated!');
    }

    public function confirm(Requests\DeleteVerslagRequest $request, $id)
    {
        $verslag = $this->verslagen->findOrFail($id);

        return view('leidingslokaal.verslagen.confirm', compact('verslag'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Requests\DeleteVerslagRequest $request, $id)
    {
        $verslag = $this->verslagen->findOrFail($id);

        $verslag->delete();

        return redirect(route('leidingslokaal.verslagen.index'))->with('status', 'Het verslag is gedeleted.');
    }
}
