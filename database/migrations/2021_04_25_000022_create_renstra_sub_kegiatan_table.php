<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRenstraSubKegiatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_renstra_sub_kegiatan', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('renstra_kegiatan_id')->unsigned(); 
					$table->integer('permen_ver');
					$table->integer('urusan_kode');
					$table->integer('bidang_kode');
					$table->integer('program_kode');
					$table->integer('kegiatan_kode');
					$table->integer('sub_kegiatan_kode');
					$table->timestamps();

					$table->foreign('renstra_kegiatan_id')->references('id')->on('ref_renstra_kegiatan')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_renstra_sub_kegiatan');
    }
}
