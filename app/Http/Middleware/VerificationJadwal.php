<?php

namespace App\Http\Middleware;

use Closure;
use DB;

class VerificationJadwal
{
    public function handle($request, Closure $next, $level = null)
    {

        $date = date('Y-m-d H:i:s');
        $status = true;
        $jadwal = DB::table('ref_jadwal')->orderBy('jadwal_akhir', 'desc')->first();
        
        $aktif = true;

        if(@$jadwal->jadwal_akhir == '' || @$jadwal->jadwal_akhir == null){
            $aktif = false;
        }
        
        if(strtotime($date) >= strtotime($jadwal->jadwal_akhir)){
            $aktif = false;
        }

        if(!$aktif){
            $kirim = array(
                'pesan' => 'Jadwal telah selesai',
                'status' => $status,
            );
            return response()->json($kirim, 401);
        }

        // echo "<pre>";
        // print_r($jadwal);
        // print_r($date);
        // $tes = strtotime($date) - strtotime($jadwal->jadwal_akhir);
        // // echo $tes;
        // print_r(strtotime($date));
        // echo "<br>";
        // print_r(strtotime($jadwal->jadwal_akhir));
        // die();

              
        return $next($request);
    }
}