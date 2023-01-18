<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('storage/{folder}/{any}', function ($folder, $any)
{
  return setStorage($folder, $any);
});

function setStorage($folder, $data){
  $path = storage_path('app/public/'.$folder.'/'.$data);
	
    if (!File::exists($path)) {
			$path = storage_path('app/public/no-image.png');
    }else if (is_dir($path)) {
			$path = storage_path('app/public/no-image.png');
		}
		
    $file = File::get($path);
    $type = File::mimeType($path);

    $response = Response::make($file, 200);
    $response->header("Content-Type", $type);

    return $response;
}

// Route::get('/', 'AwalController@awal');
Route::get('/', 'LoginController@view');

Route::get('login', 'LoginController@view');
Route::post('login', 'LoginController@cekLogin');
Route::get('logout', 'LoginController@logout');


Route::get('/import/contoh','ImportContohController@view');
Route::post('/import/contoh','ImportContohController@import');


Route::middleware(['verificationLevel:2'])->group(function () {



	Route::prefix('/admin')->group(function () {

	
		Route::get('/', 'AdminController@beranda');

		Route::get('/reset-password', 'LoginController@resetPassword');
		Route::post('/change-password', 'LoginController@changePassword');

		Route::post('/setting/user-opd','AdminController@setOPD')->name('admin.set.opd');

		Route::get('/setting/pengguna','UserController@view');
		Route::get('/setting/pengguna/get-data','UserController@getData');
		Route::get('/setting/pengguna/get-data/{id}','UserController@getById');
		Route::post('/setting/pengguna/create','UserController@create');
		Route::post('/setting/pengguna/update','UserController@update');
		Route::get('/setting/pengguna/delete/{id}','UserController@delete');

		Route::get('/setting/jadwal','JadwalController@view');
		Route::get('/setting/jadwal/{id}','JadwalController@getById');
		Route::post('/setting/jadwal/create','JadwalController@createJadwal');
		Route::post('/setting/jadwal/update','JadwalController@updateJadwal');
		Route::get('/setting/jadwal/delete/{id}','JadwalController@deleteJadwal');
		Route::get('/setting/jadwal/kunci/{id}','JadwalController@kunciJadwal');
		Route::post('/setting/jadwal','JadwalController@update');
		Route::post('/setting/tahun','JadwalController@setTahun');
		
		Route::get('/import/rkpd','ImportController@view');
		Route::post('/import/rkpd','ImportController@import');
		Route::post('/import/rkpd-pagu','ImportController@importPagu');

		Route::prefix('/penyusunan/rpjmd')->group(function () {

			Route::get('/','Penyusunan\VisiController@view')->name('admin.penyusunan.rpjmd');
			Route::get('/get-data','Penyusunan\VisiController@getData');
			Route::get('/get-data/{id}','Penyusunan\VisiController@getData');
			Route::post('/create','Penyusunan\VisiController@create');
			Route::post('/update','Penyusunan\VisiController@update');
			Route::get('/delete/{id}','Penyusunan\VisiController@delete');

			Route::get('/visi/{idVisi}','Penyusunan\MisiController@view');
			Route::get('/visi/{idVisi}/get-data','Penyusunan\MisiController@getData');
			Route::get('/visi/{idVisi}/get-data/{id}','Penyusunan\MisiController@getData');
			Route::post('/visi/{idVisi}/create','Penyusunan\MisiController@create');
			Route::post('/visi/{idVisi}/update','Penyusunan\MisiController@update');
			Route::get('/visi/{idVisi}/delete/{id}','Penyusunan\MisiController@delete');

			Route::get('/misi/{kode}','Penyusunan\TujuanController@view');
			Route::get('/misi/{kode}/get-data','Penyusunan\TujuanController@getData');
			Route::get('/misi/{kode}/get-data/{id}','Penyusunan\TujuanController@getData');
			Route::post('/misi/{kode}/create','Penyusunan\TujuanController@create');
			Route::post('/misi/{kode}/update','Penyusunan\TujuanController@update');
			Route::get('/misi/{kode}/delete/{id}','Penyusunan\TujuanController@delete');

			Route::get('/tujuan/{kode}/indikator','Penyusunan\TujuanIndikatorController@view');
			Route::get('/tujuan/{kode}/indikator/get-data','Penyusunan\TujuanIndikatorController@getData');
			Route::get('/tujuan/{kode}/indikator/get-data/{id}','Penyusunan\TujuanIndikatorController@getData');
			Route::post('/tujuan/{kode}/indikator/create','Penyusunan\TujuanIndikatorController@create');
			Route::post('/tujuan/{kode}/indikator/update','Penyusunan\TujuanIndikatorController@update');
			Route::get('/tujuan/{kode}/indikator/delete/{id}','Penyusunan\TujuanIndikatorController@delete');

			Route::get('/tujuan/{kode}','Penyusunan\SasaranController@view');
			Route::get('/tujuan/{kode}/get-data','Penyusunan\SasaranController@getData');
			Route::get('/tujuan/{kode}/get-data/{id}','Penyusunan\SasaranController@getData');
			Route::post('/tujuan/{kode}/create','Penyusunan\SasaranController@create');
			Route::post('/tujuan/{kode}/update','Penyusunan\SasaranController@update');
			Route::get('/tujuan/{kode}/delete/{id}','Penyusunan\SasaranController@delete');

			Route::get('/sasaran/{kode}/indikator','Penyusunan\SasaranIndikatorController@view');
			Route::get('/sasaran/{kode}/indikator/get-data','Penyusunan\SasaranIndikatorController@getData');
			Route::get('/sasaran/{kode}/indikator/get-data/{id}','Penyusunan\SasaranIndikatorController@getData');
			Route::post('/sasaran/{kode}/indikator/create','Penyusunan\SasaranIndikatorController@create');
			Route::post('/sasaran/{kode}/indikator/update','Penyusunan\SasaranIndikatorController@update');
			Route::get('/sasaran/{kode}/indikator/delete/{id}','Penyusunan\SasaranIndikatorController@delete');

			Route::get('/sasaran/{kode}','Penyusunan\ProgramController@view');
			Route::get('/sasaran/{kode}/get-data','Penyusunan\ProgramController@getData');
			Route::get('/sasaran/{kode}/get-data/{id}','Penyusunan\ProgramController@getData');
			Route::post('/sasaran/{kode}/create','Penyusunan\ProgramController@create');
			Route::post('/sasaran/{kode}/update','Penyusunan\ProgramController@update');
			Route::get('/sasaran/{kode}/delete/{id}','Penyusunan\ProgramController@delete');

			Route::get('/program/{kode}/indikator','Penyusunan\ProgramIndikatorController@view');
			Route::get('/program/{kode}/indikator/get-data','Penyusunan\ProgramIndikatorController@getData');
			Route::get('/program/{kode}/indikator/get-data/{id}','Penyusunan\ProgramIndikatorController@getData');
			Route::post('/program/{kode}/indikator/create','Penyusunan\ProgramIndikatorController@create');
			Route::post('/program/{kode}/indikator/update','Penyusunan\ProgramIndikatorController@update');
			Route::get('/program/{kode}/indikator/delete/{id}','Penyusunan\ProgramIndikatorController@delete');
			
		});


		Route::prefix('/penyusunan/rpjmd')->group(function () {

			Route::get('/','Penyusunan\VisiController@view')->name('admin.penyusunan.rpjmd');
			Route::get('/get-data','Penyusunan\VisiController@getData');
			Route::get('/get-data/{id}','Penyusunan\VisiController@getData');
			Route::post('/create','Penyusunan\VisiController@create');
			Route::post('/update','Penyusunan\VisiController@update');
			Route::get('/delete/{id}','Penyusunan\VisiController@delete');

			Route::get('/visi/{idVisi}','Penyusunan\MisiController@view');
			Route::get('/visi/{idVisi}/get-data','Penyusunan\MisiController@getData');
			Route::get('/visi/{idVisi}/get-data/{id}','Penyusunan\MisiController@getData');
			Route::post('/visi/{idVisi}/create','Penyusunan\MisiController@create');
			Route::post('/visi/{idVisi}/update','Penyusunan\MisiController@update');
			Route::get('/visi/{idVisi}/delete/{id}','Penyusunan\MisiController@delete');

			Route::get('/misi/{kode}','Penyusunan\TujuanController@view');
			Route::get('/misi/{kode}/get-data','Penyusunan\TujuanController@getData');
			Route::get('/misi/{kode}/get-data/{id}','Penyusunan\TujuanController@getData');
			Route::post('/misi/{kode}/create','Penyusunan\TujuanController@create');
			Route::post('/misi/{kode}/update','Penyusunan\TujuanController@update');
			Route::get('/misi/{kode}/delete/{id}','Penyusunan\TujuanController@delete');

			Route::get('/tujuan/{kode}/indikator','Penyusunan\TujuanIndikatorController@view');
			Route::get('/tujuan/{kode}/indikator/get-data','Penyusunan\TujuanIndikatorController@getData');
			Route::get('/tujuan/{kode}/indikator/get-data/{id}','Penyusunan\TujuanIndikatorController@getData');
			Route::post('/tujuan/{kode}/indikator/create','Penyusunan\TujuanIndikatorController@create');
			Route::post('/tujuan/{kode}/indikator/update','Penyusunan\TujuanIndikatorController@update');
			Route::get('/tujuan/{kode}/indikator/delete/{id}','Penyusunan\TujuanIndikatorController@delete');

			Route::get('/tujuan/{kode}','Penyusunan\SasaranController@view');
			Route::get('/tujuan/{kode}/get-data','Penyusunan\SasaranController@getData');
			Route::get('/tujuan/{kode}/get-data/{id}','Penyusunan\SasaranController@getData');
			Route::post('/tujuan/{kode}/create','Penyusunan\SasaranController@create');
			Route::post('/tujuan/{kode}/update','Penyusunan\SasaranController@update');
			Route::get('/tujuan/{kode}/delete/{id}','Penyusunan\SasaranController@delete');

			Route::get('/sasaran/{kode}/indikator','Penyusunan\SasaranIndikatorController@view');
			Route::get('/sasaran/{kode}/indikator/get-data','Penyusunan\SasaranIndikatorController@getData');
			Route::get('/sasaran/{kode}/indikator/get-data/{id}','Penyusunan\SasaranIndikatorController@getData');
			Route::post('/sasaran/{kode}/indikator/create','Penyusunan\SasaranIndikatorController@create');
			Route::post('/sasaran/{kode}/indikator/update','Penyusunan\SasaranIndikatorController@update');
			Route::get('/sasaran/{kode}/indikator/delete/{id}','Penyusunan\SasaranIndikatorController@delete');

			Route::get('/sasaran/{kode}','Penyusunan\ProgramController@view');
			Route::get('/sasaran/{kode}/get-data','Penyusunan\ProgramController@getData');
			Route::get('/sasaran/{kode}/get-data/{id}','Penyusunan\ProgramController@getData');
			Route::post('/sasaran/{kode}/create','Penyusunan\ProgramController@create');
			Route::post('/sasaran/{kode}/update','Penyusunan\ProgramController@update');
			Route::get('/sasaran/{kode}/delete/{id}','Penyusunan\ProgramController@delete');

			Route::get('/program/{kode}/indikator','Penyusunan\ProgramIndikatorController@view');
			Route::get('/program/{kode}/indikator/get-data','Penyusunan\ProgramIndikatorController@getData');
			Route::get('/program/{kode}/indikator/get-data/{id}','Penyusunan\ProgramIndikatorController@getData');
			Route::post('/program/{kode}/indikator/create','Penyusunan\ProgramIndikatorController@create');
			Route::post('/program/{kode}/indikator/update','Penyusunan\ProgramIndikatorController@update');
			Route::get('/program/{kode}/indikator/delete/{id}','Penyusunan\ProgramIndikatorController@delete');
			
		});

		Route::prefix('/penyusunan/renstra')->group(function () {

			Route::get('/tujuan/{kode}/indikator','PenyusunanRenstra\TujuanIndikatorController@view');
			Route::get('/tujuan/{kode}/indikator/get-data','PenyusunanRenstra\TujuanIndikatorController@getData');
			Route::get('/tujuan/{kode}/indikator/get-data/{id}','PenyusunanRenstra\TujuanIndikatorController@getData');
			Route::post('/tujuan/{kode}/indikator/create','PenyusunanRenstra\TujuanIndikatorController@create');
			Route::post('/tujuan/{kode}/indikator/update','PenyusunanRenstra\TujuanIndikatorController@update');
			Route::get('/tujuan/{kode}/indikator/delete/{id}','PenyusunanRenstra\TujuanIndikatorController@delete');

			Route::get('/sasaran/{kode}/indikator','PenyusunanRenstra\SasaranIndikatorController@view');
			Route::get('/sasaran/{kode}/indikator/get-data','PenyusunanRenstra\SasaranIndikatorController@getData');
			Route::get('/sasaran/{kode}/indikator/get-data/{id}','PenyusunanRenstra\SasaranIndikatorController@getData');
			Route::post('/sasaran/{kode}/indikator/create','PenyusunanRenstra\SasaranIndikatorController@create');
			Route::post('/sasaran/{kode}/indikator/update','PenyusunanRenstra\SasaranIndikatorController@update');
			Route::get('/sasaran/{kode}/indikator/delete/{id}','PenyusunanRenstra\SasaranIndikatorController@delete');

			Route::get('/program','PenyusunanRenstra\ProgramController@view')->name('admin.penyusunan.renstra');
			Route::get('/program/get-data','PenyusunanRenstra\ProgramController@getData');
			Route::get('/program/get-data/{id}','PenyusunanRenstra\ProgramController@getData');
			Route::post('/program/create','PenyusunanRenstra\ProgramController@create');
			Route::post('/program/update','PenyusunanRenstra\ProgramController@update');
			Route::get('/program/delete/{id}','PenyusunanRenstra\ProgramController@delete');
			Route::post('/program/create-tusa','PenyusunanRenstra\ProgramController@createTusa');
			Route::get('/program/get-tujuan','PenyusunanRenstra\ProgramController@getTujuan');
			Route::get('/program/get-sasaran','PenyusunanRenstra\ProgramController@getSasaran');
			
			Route::get('/program/{kode}','PenyusunanRenstra\KegiatanController@view');
			Route::get('/program/{kode}/get-data','PenyusunanRenstra\KegiatanController@getData');
			Route::get('/program/{kode}/get-data/{id}','PenyusunanRenstra\KegiatanController@getData');
			Route::post('/program/{kode}/create','PenyusunanRenstra\KegiatanController@create');
			Route::post('/program/{kode}/update','PenyusunanRenstra\KegiatanController@update');
			Route::get('/program/{kode}/delete/{id}','PenyusunanRenstra\KegiatanController@delete');

			Route::get('/kegiatan/{kode}','PenyusunanRenstra\SubKegiatanController@view');
			Route::get('/kegiatan/{kode}/get-data','PenyusunanRenstra\SubKegiatanController@getData');
			Route::get('/kegiatan/{kode}/get-data/{id}','PenyusunanRenstra\SubKegiatanController@getData');
			Route::post('/kegiatan/{kode}/create','PenyusunanRenstra\SubKegiatanController@create');
			Route::post('/kegiatan/{kode}/update','PenyusunanRenstra\SubKegiatanController@update');
			Route::get('/kegiatan/{kode}/delete/{id}','PenyusunanRenstra\SubKegiatanController@delete');

		});

		Route::prefix('/penyusunan/renja')->group(function () {

			Route::get('/sub-kegiatan','PenyusunanRKPD\SubKegiatanController@view')->name('admin.penyusunan.renja');
			Route::get('/sub-kegiatan/get-data','PenyusunanRKPD\SubKegiatanController@getData');
			Route::get('/sub-kegiatan/get-data/{id}','PenyusunanRKPD\SubKegiatanController@getData');
			Route::post('/sub-kegiatan/create','PenyusunanRKPD\SubKegiatanController@create');
			Route::post('/sub-kegiatan/update','PenyusunanRKPD\SubKegiatanController@update');
			Route::get('/sub-kegiatan/delete/{id}','PenyusunanRKPD\SubKegiatanController@delete');

		});


		Route::prefix('/realisasi')->group(function () {
			
			Route::get('/tujuan','Realisasi\TujuanController@view')->name('admin.realisasi.tujuan');
			Route::get('/tujuan/get-data','Realisasi\TujuanController@getData');
			Route::get('/tujuan/get-data/{id}','Realisasi\TujuanController@getData');
			Route::post('/tujuan/create','Realisasi\TujuanController@create');
			Route::post('/tujuan/update','Realisasi\TujuanController@update');
			Route::get('/tujuan/delete/{id}','Realisasi\TujuanController@delete');

			Route::get('/sasaran','Realisasi\SasaranController@view')->name('admin.realisasi.sasaran');
			Route::get('/sasaran/get-data','Realisasi\SasaranController@getData');
			Route::get('/sasaran/get-data/{id}','Realisasi\SasaranController@getData');
			Route::post('/sasaran/create','Realisasi\SasaranController@create');
			Route::post('/sasaran/update','Realisasi\SasaranController@update');
			Route::get('/sasaran/delete/{id}','Realisasi\SasaranController@delete');

			Route::get('/tujuan-opd','Realisasi\TujuanOPDController@view')->name('admin.realisasi.tujuan-opd');
			Route::get('/tujuan-opd/get-data','Realisasi\TujuanOPDController@getData');
			Route::get('/tujuan-opd/get-data/{id}','Realisasi\TujuanOPDController@getData');
			Route::post('/tujuan-opd/create','Realisasi\TujuanOPDController@create');
			Route::post('/tujuan-opd/update','Realisasi\TujuanOPDController@update');
			Route::get('/tujuan-opd/delete/{id}','Realisasi\TujuanOPDController@delete');

			Route::get('/sasaran-opd','Realisasi\SasaranOPDController@view')->name('admin.realisasi.sasaran-opd');
			Route::get('/sasaran-opd/get-data','Realisasi\SasaranOPDController@getData');
			Route::get('/sasaran-opd/get-data/{id}','Realisasi\SasaranOPDController@getData');
			Route::post('/sasaran-opd/create','Realisasi\SasaranOPDController@create');
			Route::post('/sasaran-opd/update','Realisasi\SasaranOPDController@update');
			Route::get('/sasaran-opd/delete/{id}','Realisasi\SasaranOPDController@delete');

			Route::get('/program','Realisasi\ProgramController@view')->name('admin.realisasi.program');
			Route::get('/program/get-data','Realisasi\ProgramController@getData');
			Route::get('/program/get-data/{id}','Realisasi\ProgramController@getData');
			Route::post('/program/create','Realisasi\ProgramController@create');
			Route::post('/program/update','Realisasi\ProgramController@update');
			Route::get('/program/delete/{id}','Realisasi\ProgramController@delete');

			Route::get('/kegiatan','Realisasi\KegiatanController@view')->name('admin.realisasi.kegiatan');
			Route::get('/kegiatan/get-data','Realisasi\KegiatanController@getData');
			Route::get('/kegiatan/get-data/{id}','Realisasi\KegiatanController@getData');
			Route::post('/kegiatan/create','Realisasi\KegiatanController@create');
			Route::post('/kegiatan/update','Realisasi\KegiatanController@update');
			Route::get('/kegiatan/delete/{id}','Realisasi\KegiatanController@delete');

			Route::get('/renja','Realisasi\SubKegiatanController@view')->name('admin.realisasi.renja');
			Route::get('/renja/get-data','Realisasi\SubKegiatanController@getData');
			Route::get('/renja/get-data/{id}','Realisasi\SubKegiatanController@getData');
			Route::post('/renja/create','Realisasi\SubKegiatanController@create');
			Route::post('/renja/update','Realisasi\SubKegiatanController@update');
			Route::post('/renja/update-pagu','Realisasi\SubKegiatanController@updatePagu');
			Route::get('/renja/delete/{id}','Realisasi\SubKegiatanController@delete');

		});

		Route::prefix('/laporan')->group(function () {

			Route::get('/rpjmd','Laporan\RPJMDController@view')->name('admin.laporan.rpjmd');
			Route::get('/rpjmd/cetak','Laporan\RPJMDController@cetak');

			Route::get('/renstra','Laporan\RenstraController@view')->name('admin.laporan.renstra');
			Route::get('/renstra/cetak','Laporan\RenstraController@cetak');

			Route::get('/renja','Laporan\RenjaController@view')->name('admin.laporan.renja');
			Route::get('/renja/cetak','Laporan\RenjaController@cetak');

			// Route::get('/urusan','Laporan\UrusanController@view')->name('admin.laporan.urusan');
			// Route::get('/urusan/cetak','Laporan\UrusanController@cetak');
		});

		Route::prefix('/rapor')->group(function () {
			Route::get('/predikat','Laporan\RenstraController@viewRapor')->name('admin.rapor.predikat');
			Route::get('/predikat/cetak','Laporan\RenstraController@rapor');

			Route::get('/opd','Laporan\OPDController@view')->name('admin.rapor.opd');
			Route::get('/opd/cetak','Laporan\OPDController@cetak');
		});
		Route::prefix('/monitor')->group(function () {
			Route::get('/rkpd','Laporan\MonitorRKPDController@view')->name('admin.monitor.rkpd');
			Route::get('/rkpd/cetak','Laporan\MonitorRKPDController@cetak');
		});
		Route::prefix('/dokumen')->group(function () {
			Route::get('/urusan','Laporan\UrusanController@view')->name('admin.dokumen.form-urusan');
			Route::get('/urusan/cetak','Laporan\UrusanController@cetak');
		});
	});

});


Route::middleware(['verificationLevel:2'])->group(function () {

	

	Route::prefix('/opd')->group(function () {

		Route::get('/', 'AdminController@beranda');

		Route::post('/change-password', 'LoginController@changePassword');


		Route::post('/setting/tahun','JadwalController@setTahun');

		Route::prefix('/penyusunan/renstra')->group(function () {

			Route::get('/tujuan/{kode}/indikator','PenyusunanRenstra\TujuanIndikatorController@view');
			Route::get('/tujuan/{kode}/indikator/get-data','PenyusunanRenstra\TujuanIndikatorController@getData');
			Route::get('/tujuan/{kode}/indikator/get-data/{id}','PenyusunanRenstra\TujuanIndikatorController@getData');
			Route::post('/tujuan/{kode}/indikator/create','PenyusunanRenstra\TujuanIndikatorController@create')->middleware('cekJadwal');
			Route::post('/tujuan/{kode}/indikator/update','PenyusunanRenstra\TujuanIndikatorController@update')->middleware('cekJadwal');
			Route::get('/tujuan/{kode}/indikator/delete/{id}','PenyusunanRenstra\TujuanIndikatorController@delete')->middleware('cekJadwal');

			Route::get('/sasaran/{kode}/indikator','PenyusunanRenstra\SasaranIndikatorController@view');
			Route::get('/sasaran/{kode}/indikator/get-data','PenyusunanRenstra\SasaranIndikatorController@getData');
			Route::get('/sasaran/{kode}/indikator/get-data/{id}','PenyusunanRenstra\SasaranIndikatorController@getData');
			Route::post('/sasaran/{kode}/indikator/create','PenyusunanRenstra\SasaranIndikatorController@create')->middleware('cekJadwal');
			Route::post('/sasaran/{kode}/indikator/update','PenyusunanRenstra\SasaranIndikatorController@update')->middleware('cekJadwal');
			Route::get('/sasaran/{kode}/indikator/delete/{id}','PenyusunanRenstra\SasaranIndikatorController@delete')->middleware('cekJadwal');

			Route::get('/program','PenyusunanRenstra\ProgramController@view')->name('opd.penyusunan.renstra');
			Route::get('/program/get-data','PenyusunanRenstra\ProgramController@getData');
			Route::get('/program/get-data/{id}','PenyusunanRenstra\ProgramController@getData');
			// Route::post('/program/create','PenyusunanRenstra\ProgramController@create');
			// Route::post('/program/update','PenyusunanRenstra\ProgramController@update');
			// Route::get('/program/delete/{id}','PenyusunanRenstra\ProgramController@delete');
			Route::post('/program/update','PenyusunanRenstra\ProgramController@update')->middleware('cekJadwal');
			Route::post('/program/create-tusa','PenyusunanRenstra\ProgramController@createTusa')->middleware('cekJadwal');
			Route::get('/program/get-tujuan','PenyusunanRenstra\ProgramController@getTujuan');
			Route::get('/program/get-sasaran','PenyusunanRenstra\ProgramController@getSasaran')->middleware('cekJadwal');

			Route::get('/program/{kode}','PenyusunanRenstra\KegiatanController@view');
			Route::get('/program/{kode}/get-data','PenyusunanRenstra\KegiatanController@getData');
			Route::get('/program/{kode}/get-data/{id}','PenyusunanRenstra\KegiatanController@getData');
			Route::post('/program/{kode}/create','PenyusunanRenstra\KegiatanController@create')->middleware('cekJadwal');
			Route::post('/program/{kode}/update','PenyusunanRenstra\KegiatanController@update')->middleware('cekJadwal');
			Route::get('/program/{kode}/delete/{id}','PenyusunanRenstra\KegiatanController@delete')->middleware('cekJadwal');

			Route::get('/kegiatan/{kode}','PenyusunanRenstra\SubKegiatanController@view');
			Route::get('/kegiatan/{kode}/get-data','PenyusunanRenstra\SubKegiatanController@getData');
			Route::get('/kegiatan/{kode}/get-data/{id}','PenyusunanRenstra\SubKegiatanController@getData');
			Route::post('/kegiatan/{kode}/create','PenyusunanRenstra\SubKegiatanController@create')->middleware('cekJadwal');
			Route::post('/kegiatan/{kode}/update','PenyusunanRenstra\SubKegiatanController@update')->middleware('cekJadwal');
			Route::get('/kegiatan/{kode}/delete/{id}','PenyusunanRenstra\SubKegiatanController@delete')->middleware('cekJadwal');

		});

		Route::prefix('/penyusunan/renja')->group(function () {

			Route::get('/sub-kegiatan','PenyusunanRKPD\SubKegiatanController@view')->name('opd.penyusunan.renja');
			Route::get('/sub-kegiatan/get-data','PenyusunanRKPD\SubKegiatanController@getData');
			Route::get('/sub-kegiatan/get-data/{id}','PenyusunanRKPD\SubKegiatanController@getData');
			Route::post('/sub-kegiatan/create','PenyusunanRKPD\SubKegiatanController@create')->middleware('cekJadwal');
			Route::post('/sub-kegiatan/update','PenyusunanRKPD\SubKegiatanController@update')->middleware('cekJadwal');
			Route::get('/sub-kegiatan/delete/{id}','PenyusunanRKPD\SubKegiatanController@delete')->middleware('cekJadwal');
		});


		Route::prefix('/realisasi')->group(function () {
			Route::get('/tujuan-opd','Realisasi\TujuanOPDController@view')->name('opd.realisasi.tujuan-opd');
			Route::get('/tujuan-opd/get-data','Realisasi\TujuanOPDController@getData');
			Route::get('/tujuan-opd/get-data/{id}','Realisasi\TujuanOPDController@getData');
			Route::post('/tujuan-opd/create','Realisasi\TujuanOPDController@create')->middleware('cekJadwal');
			Route::post('/tujuan-opd/update','Realisasi\TujuanOPDController@update')->middleware('cekJadwal');
			Route::get('/tujuan-opd/delete/{id}','Realisasi\TujuanOPDController@delete')->middleware('cekJadwal');

			Route::get('/sasaran-opd','Realisasi\SasaranOPDController@view')->name('opd.realisasi.sasaran-opd');
			Route::get('/sasaran-opd/get-data','Realisasi\SasaranOPDController@getData');
			Route::get('/sasaran-opd/get-data/{id}','Realisasi\SasaranOPDController@getData');
			Route::post('/sasaran-opd/create','Realisasi\SasaranOPDController@create')->middleware('cekJadwal');
			Route::post('/sasaran-opd/update','Realisasi\SasaranOPDController@update')->middleware('cekJadwal');
			Route::get('/sasaran-opd/delete/{id}','Realisasi\SasaranOPDController@delete')->middleware('cekJadwal');

			Route::get('/program','Realisasi\ProgramController@view')->name('opd.realisasi.program');
			Route::get('/program/get-data','Realisasi\ProgramController@getData');
			Route::get('/program/get-data/{id}','Realisasi\ProgramController@getData');
			Route::post('/program/create','Realisasi\ProgramController@create')->middleware('cekJadwal');
			Route::post('/program/update','Realisasi\ProgramController@update')->middleware('cekJadwal');
			Route::get('/program/delete/{id}','Realisasi\ProgramController@delete')->middleware('cekJadwal');

			Route::get('/kegiatan','Realisasi\KegiatanController@view')->name('opd.realisasi.kegiatan');
			Route::get('/kegiatan/get-data','Realisasi\KegiatanController@getData');
			Route::get('/kegiatan/get-data/{id}','Realisasi\KegiatanController@getData');
			Route::post('/kegiatan/create','Realisasi\KegiatanController@create')->middleware('cekJadwal');
			Route::post('/kegiatan/update','Realisasi\KegiatanController@update')->middleware('cekJadwal');
			Route::get('/kegiatan/delete/{id}','Realisasi\KegiatanController@delete')->middleware('cekJadwal');

			Route::get('/renja','Realisasi\SubKegiatanController@view')->name('opd.realisasi.renja');
			Route::get('/renja/get-data','Realisasi\SubKegiatanController@getData');
			Route::get('/renja/get-data/{id}','Realisasi\SubKegiatanController@getData');
			Route::post('/renja/create','Realisasi\SubKegiatanController@create')->middleware('cekJadwal');
			Route::post('/renja/update','Realisasi\SubKegiatanController@update')->middleware('cekJadwal');
			Route::post('/renja/update-pagu','Realisasi\SubKegiatanController@updatePagu')->middleware('cekJadwal');
			Route::get('/renja/delete/{id}','Realisasi\SubKegiatanController@delete')->middleware('cekJadwal');
		});

		Route::prefix('/laporan')->group(function () {

			Route::get('/rpjmd','Laporan\RPJMDController@view')->name('opd.laporan.rpjmd');
			Route::get('/rpjmd/cetak','Laporan\RPJMDController@cetak');

			Route::get('/renstra','Laporan\RenstraController@view')->name('opd.laporan.renstra');
			Route::get('/renstra/cetak','Laporan\RenstraController@cetak');

			Route::get('/renja','Laporan\RenjaController@view')->name('opd.laporan.renja');
			Route::get('/renja/cetak','Laporan\RenjaController@cetak');
		});
		Route::prefix('/rapor')->group(function () {
			Route::get('/predikat','Laporan\RenstraController@viewRapor')->name('opd.rapor.predikat');
			Route::get('/predikat/cetak','Laporan\RenstraController@rapor');

			Route::get('/opd','Laporan\OPDController@view')->name('opd.rapor.opd');
			Route::get('/opd/cetak','Laporan\OPDController@cetak');
		});
	});

});

