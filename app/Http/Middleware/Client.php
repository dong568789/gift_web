<?php
namespace App\Http\Middleware;

use Illuminate\Support\Facades\Auth;

class Client {


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
            return redirect(route(is_null($guard) ? 'index' : $guard.'-index'));
        }

        return $next($request);
    }
}
