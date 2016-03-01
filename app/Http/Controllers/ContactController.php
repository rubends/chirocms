<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Mail;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    public function Submit(Requests\ContactFormRequest $request) 
    {
    	$data = [
    		'name' => $request->input('name'),
    		'email' => $request->input('email'),
    		'messagebody' => $request->input('message'),
    	];
		Mail::send('emails.contact', $data, function ($message) {
		    $message->from(config('mail.from.address'), config('mail.from.name'));
			$message->subject('Contact message');
		    $message->to(config('cms.email'));
		});

    	return redirect(route('contact.form'))->with('status', 'Thank you. Your message was sent.');
    }
}
