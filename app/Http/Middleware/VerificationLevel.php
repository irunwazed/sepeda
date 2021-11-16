<?php

namespace App\Http\Middleware;

use Closure;

class VerificationLevel
{
    public function handle($request, Closure $next, $level = null)
    {
        $level = explode("-", $level);
        $levelArr = ['', 'super-admin', 'admin', 'opd', 'pegawai'];

        $levelIndex = @session('login_level');

        if(!@session('login_level')){
					return redirect('login')->withErrors(['Silahkan login']);
        }

        $request->attributes->add(['levelPath' => $levelArr[$levelIndex]]);
        return $next($request);
    }
}