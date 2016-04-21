<?php

namespace App\Http\Controllers\Leidingslokaal;

use Illuminate\Http\Request;
use App\Document;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;


class DocumentsController extends Controller
{
	protected $documents;

	public function __construct(Document $documents) {
		$this->documents = $documents;

		parent::__construct();
	}

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $draaiboeken = $this->documents->where('type', 'draaiboek')->get();
        $brieven = $this->documents->where('type', 'brief')->get();
        $kampen = $this->documents->where('type', 'kamp')->get();
        $ledenlijsten = $this->documents->where('type', 'ledenlijst')->get();
        $infos = $this->documents->where('type', 'info')->get();
        $resten = $this->documents->where('type', 'rest')->get();

        return view('leidingslokaal.documents.index', compact('draaiboeken', 'brieven', 'kampen', 'ledenlijsten', 'infos', 'resten'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Document $document)
    {
        return view('leidingslokaal.documents.form', compact('document'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\StoreDocumentRequest $request)
    {
        $file = array('document' => Input::file('document'));
        $rules = array('document' => 'required',);
        $validator = Validator::make($file, $rules);

        if ($validator->fails()) {
            return redirect(route('leidingslokaal.documents.form'))->with('stats', 'Het document heeft niet het juiste bestand.');
        }
        else
        {

            if (Input::file('document')->isValid()) {

                $destinationPath = '../public/documents';
                $extension = Input::file('document')->getClientOriginalExtension();
                $originalName = pathinfo(Input::file('document')->getClientOriginalName(), PATHINFO_FILENAME);
                $fileName = $originalName.md5(time()).'.'.$extension;
                Input::file('document')->move($destinationPath, $fileName);

                $this->documents->create(['document' => $fileName] + $request->only('posted_by', 'title', 'info', 'type'));

                return redirect(route('leidingslokaal.documents.index'))->with('stats', 'Het document is toegevoegd!');

            }
            else {return redirect(route('leidingslokaal.documents.form'))->with('stats', 'Er is een probleem met het document.');}
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
        $document = $this->documents->findOrFail($id);

        return view('leidingslokaal.documents.form', compact('document'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UpdateDocumentRequest $request, $id)
    {
        $document = $this->documents->findOrFail($id);

        $file = array('document' => Input::file('document'));
        $rules = array('document' => 'required',);
        $validator = Validator::make($file, $rules);

        if ($validator->fails()) {
            return redirect(route('leidingslokaal.documents.form'))->with('stats', 'Het document heeft niet het juiste bestand.');
        }
        else
        {

            if (Input::file('document')->isValid()) {

                $destinationPath = '../public/documents';
                $extension = Input::file('document')->getClientOriginalExtension();
                $originalName = pathinfo(Input::file('document')->getClientOriginalName(), PATHINFO_FILENAME);
                $fileName = $originalName.md5(time()).'.'.$extension;
                Input::file('document')->move($destinationPath, $fileName);

                $document->fill(['document' => $fileName] + $request->only('posted_by', 'title', 'info', 'type'))->save();

                return redirect(route('leidingslokaal.documents.index'))->with('stats', 'Het document is toegevoegd!');

            }
            else {return redirect(route('leidingslokaal.documents.edit', $document->id))->with('status', 'Het document is geupdated!');}
        }
        
    }

    public function confirm(Requests\DeleteDocumentRequest $request, $id)
    {
        $document = $this->documents->findOrFail($id);

        return view('leidingslokaal.documents.confirm', compact('document'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Requests\DeleteDocumentRequest $request, $id)
    {
        $document = $this->documents->findOrFail($id);

        $document->delete();

        return redirect(route('leidingslokaal.documents.index'))->with('status', 'Het document is gedeleted.');
    }
}
