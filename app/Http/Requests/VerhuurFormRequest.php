<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class VerhuurFormRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'start_date' => ['date', 'required', 'after:today'],
            'end_date' => ['date', 'required', 'after:start_date'],
            'vereniging' => 'required',
            'firstname' => 'required',
            'lastname' => 'required',
            'street' => 'required',
            'number' => 'required|numeric',
            'city' => 'required',
            'postal' => 'required',
            'phone' => ['required','regex:/^(?:\+\d{1,3}|0\d{1,3}|00\d{1,2})?(?:\s?\(\d+\))?(?:[-\/\s.]|\d)+$/'],
            'gsm' => ['required','regex:/^(?:\+\d{1,3}|0\d{1,3}|00\d{1,2})?(?:\s?\(\d+\))?(?:[-\/\s.]|\d)+$/'],
            'email' => 'required|email',
            'g-recaptcha-response' => 'recaptcha',
        ];
    }
}
