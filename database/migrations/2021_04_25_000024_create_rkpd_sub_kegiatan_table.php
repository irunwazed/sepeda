<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRkpdSubKegiatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
			Schema::create('ref_rkpd_sub_kegiatan', function (Blueprint $table) {
				$table->id();
				$table->integer('tahun_ke'); 
				$table->bigInteger('opd_id')->unsigned(); 
				$table->integer('permen_ver');
				$table->integer('urusan_kode');
				$table->integer('bidang_kode');
				$table->integer('program_kode');
				$table->integer('kegiatan_kode');
				$table->integer('sub_kegiatan_kode');
				$table->timestamps();
				
				$table->foreign('opd_id')->references('id')->on('ref_opd')->onDelete('cascade')->onUpdate('cascade');
			});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rkpd_sub_kegiatan');
    }
}