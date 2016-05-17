<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            if ($request->input('type') == '1') {
                return redirect(route('leidingslokaal.leidingsboard'));
            }
            else if ($request->input('type') == '3') {
                return redirect(route('backend.dashboard'));
            }
            
        }

        return $next($request);
    }
}
