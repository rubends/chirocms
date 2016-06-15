<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class UpdateAccountRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        if($this->route('accounts') == auth()->user()->id) {
            return true;
        }

        return false;
        
    }

    public function forbiddenResponse() {
        return redirect()->back()->withErrors([
            'error' => 'Je mag enkel je eigen account wijzigen.'
        ]);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => ['required'],
            'email' => ['required', 'email'],
            'password' => ['required_with:password_confirmation', 'confirmed'],
            'gsm' => ['required']
        ];
    }
}
