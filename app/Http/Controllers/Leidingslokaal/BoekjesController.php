<?php

namespace App\Http\Controllers\Leidingslokaal;

use Illuminate\Http\Request;
use App\Boekje;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;


class BoekjesController extends Controller
{
	protected $boekjes;

	public function __construct(Boekje $boekjes) {
		$this->boekjes = $boekjes;

		parent::__construct();
	}

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $boekjes = $this->boekjes;

        return view('leidingslokaal.boekjes.index', compact('boekjes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Boekje $boekjes)
    {
        return view('leidingslokaal.boekjes.form', compact('boekjes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\StoreBoekjeRequest $request)
    {
        $file = array('boekje' => Input::file('boekje'));
        $rules = array('boekje' => 'required',);
        $validator = Validator::make($file, $rules);

        if ($validator->fails()) {
            return redirect(route('leidingslokaal.boekje.form'))->with('stats', 'Het boekje heeft niet het juiste bestand.');
        }
        else
        {

            if (Input::file('boekje')->isValid()) {

                $destinationPath = '../public/programmaboekje';
                $extension = Input::file('boekje')->getClientOriginalExtension();
                $fileName = Input::get('groep').'.'.$extension;
                Input::file('boekje')->move($destinationPath, $fileName);
                //PHP.INI max size van 2M naar 64M
                
                //$this->boekjes->create(['boekje' => $fileName] + $request->only('poster', 'name', 'info'));

                return redirect(route('leidingslokaal.boekje.index'))->with('stats', 'Het boekje is toegevoegd!');

            }
            else {return redirect(route('leidingslokaal.boekje.form'))->with('stats', 'Er is een probleem met het boekje.');}
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($groep)
    {

        return view('leidingslokaal.boekjes.form', compact('boekje'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UpdateBoekjeRequest $request, $id)
    {
        $boekje = $this->boekjes->findOrFail($id);

        $boekje->fill($request->only('poster', 'name', 'info', 'boekje'))->save();

        return redirect(route('leidingslokaal.boekjes.edit', $boekje->id))->with('status', 'Het boekje is geupdated!');
    }

    public function confirm(Requests\DeleteBoekjeRequest $request, $id)
    {
        $boekje = $this->boekjes->findOrFail($id);

        return view('leidingslokaal.boekjes.confirm', compact('boekje'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Requests\DeleteBoekjeRequest $request, $id)
    {
        $boekje = $this->boekjes->findOrFail($id);

        $boekje->delete();

        return redirect(route('leidingslokaal.boekjes.index'))->with('status', 'Het boekje is gedeleted.');
    }
}
