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
            $table->text('jadwal_ket')->nullable();
            $table->datetime('jadwal_mulai');
            $table->datetime('jadwal_akhir');
            $table->tinyInteger('jadwal_status'); // 1 aktif , 2 kunci, 3 tidak aktif
            $table->timestamps();
        });
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
