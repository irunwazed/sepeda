<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/rpjmd/get-program','ApiController@getProgramByOPD');
Route::get('/program/get-kegiatan','ApiController@getKegiatanByProgram');
Route::get('/kegiatan/get-sub-kegiatan','ApiController@getSubKegiatanByKegiatan');

Route::get('/sub-kegiatan/get-indikator','ApiController@getSubKegiatanIndikator');
Route::get('/kegiatan/get-indikator','ApiController@getKegiatanIndikator');
Route::get('/program/get-indikator','ApiController@getProgramIndikator');

