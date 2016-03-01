<?php

namespace App\Http\Middleware;

use \Illuminate\Http\Request;
use Redirect;
use Session;
use Closure;

class Locale
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle(Request $request, Closure $next, $guard = null)
    {
        // Set the language
        if(in_array($request->segment(1), config('translatable.locales')))
        {
            Session::put('app.language_locale', $request->segment(1));
            return Redirect::to(substr($request->path(), 3));
        }

        // Check if the session has the language
        if(!Session::has('app.language_locale')) {
            Session::put('app.language_locale', config('app.locale'));
        }

        app()->setLocale(Session::get('app.language_locale'));

        //dd(app()->getLocale());

        return $next($request);
    }
}
