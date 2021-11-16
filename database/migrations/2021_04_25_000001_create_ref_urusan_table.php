<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRefUrusanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_urusan', function (Blueprint $table) {
					$table->integer('permen_ver')->unsigned();
					$table->integer('urusan_kode')->unsigned();
					$table->string('urusan_nama');
					$table->timestamps();

					$table->primary(['permen_ver', 'urusan_kode'], 'permen_urusan_kode');
        });
				DB::table('ref_urusan')->insert([
					['permen_ver' => 1, 'urusan_kode' => '0', 'urusan_nama' => ''],
					['permen_ver' => 1, 'urusan_kode' => '1', 'urusan_nama' => 'URUSAN PEMERINTAHAN WAJIB YANG BERKAITAN DENGAN PELAYANAN DASAR'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'urusan_nama' => 'URUSAN PEMERINTAHAN WAJIB YANG TIDAK BERKAITAN DENGAN PELAYANAN DASAR'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'urusan_nama' => 'URUSAN PEMERINTAHAN PILIHAN'],
					['permen_ver' => 1, 'urusan_kode' => '4', 'urusan_nama' => 'UNSUR PENDUKUNG URUSAN PEMERINTAHAN'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'urusan_nama' => 'UNSUR PENUNJANG URUSAN PEMERINTAHAN'],
					['permen_ver' => 1, 'urusan_kode' => '6', 'urusan_nama' => 'UNSUR PENGAWASAN URUSAN PEMERINTAHAN'],
					['permen_ver' => 1, 'urusan_kode' => '7', 'urusan_nama' => 'UNSUR KEWILAYAHAN'],
					['permen_ver' => 1, 'urusan_kode' => '8', 'urusan_nama' => 'UNSUR PEMERINTAHAN UMUM'],

				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_urusan');
    }
}
