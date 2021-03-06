<?php

namespace App\Http\Controllers\Leidingslokaal;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests;

class ContactgegevensController extends Controller
{
	protected $users;

	public function __construct(User $users) {
		$this->users = $users;

		parent::__construct();
	}

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $leiding = $this->users->where('type', 1)->get();
        $oudleiding = $this->users->where('type', 2)->get();
        $admins = $this->users->where('type', 3)->get();
        $VB = $this->users->where('type', 4)->get();
        $vriendekring = $this->users->where('type', 5)->get();


        return view('leidingslokaal.contactgegevens.index', compact('leiding', 'oudleiding', 'admins', 'VB', 'vriendekring'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(User $user)
    {
        return view('backend.users.form', compact('user'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\StoreUserRequest $request)
    {
        $this->users->create($request->only('name', 'email', 'password', 'type', 'gsm'));

        return redirect(route('backend.users.index'))->with('stats', 'The user is created!');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = $this->users->findOrFail($id);

        return view('backend.users.form', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UpdateUserRequest $request, $id)
    {
        $user = $this->users->findOrFail($id);

        $user->fill($request->only('name', 'email', 'password', 'type', 'gsm'))->save();

        return redirect(route('backend.users.edit', $user->id))->with('status', 'The user has been updated!');
    }

    public function confirm(Requests\DeleteUserRequest $request, $id)
    {
        $user = $this->users->findOrFail($id);

        return view('backend.users.confirm', compact('user'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Requests\DeleteUserRequest $request, $id)
    {
        $user = $this->users->findOrFail($id);

        $user->delete();

        return redirect(route('backend.users.index'))->with('status', 'User has been deleted.');
    }
}
