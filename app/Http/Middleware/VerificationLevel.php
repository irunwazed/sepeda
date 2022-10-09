<?php

namespace App\Http\Middleware;

use Closure;
use DB;

class VerificationLevel
{
    public function handle($request, Closure $next, $level = null)
    {
        $level = explode("-", $level);
        $levelArr = ['', 'super-admin', 'admin', 'opd', 'pegawai'];
        $jadwal = DB::table('ref_jadwal')->orderBy('jadwal_akhir', 'desc')->first();

        $levelIndex = @session('login_level');

        if(!@session('login_level')){
					return redirect('login')->withErrors(['Silahkan login']);
        }

        $request->attributes->add(['setJadwal' => @$jadwal->jadwal_akhir]);  
        $request->attributes->add(['levelPath' => $levelArr[$levelIndex]]);
        return $next($request);
    }
}