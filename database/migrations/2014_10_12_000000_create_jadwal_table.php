<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateJadwalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_jadwal', function (Blueprint $table) {
            $table->id();
            $table->string('jadwal_nama');
            $table->string('jadwal_tahun')->comment('bentuk json => [2019,2020,2021,2022,2023]');
            $table->string('jadwal_triwulan')->comment('bentuk json => [1,2,3,4]');
            $table->datetime('jadwal_mulai');
            $table->datetime('jadwal_akhir');
            $table->text('jadwal_data')->nullable()->comment('data json');
            $table->tinyInteger('jadwal_status'); // 1 aktif , 2 kunci, 3 tidak aktif
            $table->timestamps();
        });
        DB::table('ref_jadwal')->insert([
            ['jadwal_nama' => 'jadwal awal', 'jadwal_tahun' => '[2019,2020,2021,2022,2023]', 'jadwal_triwulan' => '[1,2,3,4]', 'jadwal_mulai' => '2022-10-01 00:00:00', 'jadwal_akhir' => '2022-10-09 23:59:00', 'jadwal_status' => 1],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_jadwal');
    }
}
