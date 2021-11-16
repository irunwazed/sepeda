<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRkpdSubKegiatanIndikatorSumberDanaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
			Schema::create('ta_rkpd_sub_kegiatan_indikator_sumber_dana', function (Blueprint $table) {
				$table->id();
				$table->bigInteger('rkpd_sub_kegiatan_indikator_id')->unsigned(); 
				$table->bigInteger('sumber_dana_id')->unsigned(); 
				$table->timestamps();

				$table->foreign('rkpd_sub_kegiatan_indikator_id', 'foreign_rkpd')->references('id')->on('ref_rkpd_sub_kegiatan_indikator')->onDelete('cascade')->onUpdate('cascade');
				$table->foreign('sumber_dana_id', 'foreign_sumber_dana')->references('id')->on('ref_sumber_dana')->onDelete('cascade')->onUpdate('cascade');
			});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
			Schema::dropIfExists('ta_rkpd_sub_kegiatan_indikator_sumber_dana');
    }
}
