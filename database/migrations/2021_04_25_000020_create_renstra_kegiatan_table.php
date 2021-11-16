<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRenstraKegiatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_renstra_kegiatan', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_program_id')->unsigned(); 
					$table->integer('permen_ver');
					$table->integer('urusan_kode');
					$table->integer('bidang_kode');
					$table->integer('program_kode');
					$table->integer('kegiatan_kode');
					$table->timestamps();

					$table->foreign('rpjmd_program_id')->references('id')->on('ref_rpjmd_program')->onDelete('cascade')->onUpdate('cascade');
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
