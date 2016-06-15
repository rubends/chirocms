<?php

namespace App\Http\Controllers\Leidingslokaal;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests;

class AccountsController extends Controller
{
	protected $users;

	public function __construct(User $users) {
		$this->users = $users;

		parent::__construct();
	}
    
    public function edit($id)
    {
        $user = $this->users->findOrFail($id);

        return view('leidingslokaal.accounts.form', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UpdateAccountRequest $request, $id)
    {
        $user = $this->users->findOrFail($id);

        $user->fill($request->only('name', 'email', 'password', 'gsm'))->save();

        return redirect(route('leidingslokaal.accounts.edit', $user->id))->with('status', 'Je accounts is geupdate!');
    }

}
