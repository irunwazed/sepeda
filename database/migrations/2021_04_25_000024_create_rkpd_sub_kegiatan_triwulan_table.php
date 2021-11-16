<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRkpdSubKegiatanTriwulanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
			Schema::create('ref_rkpd_sub_kegiatan_triwulan', function (Blueprint $table) {
				$table->id();
				$table->bigInteger('renstra_sub_kegiatan_indikator_id')->unsigned(); 
				$table->integer('tahun_ke'); 
				$table->tinyInteger('triwulan_ke'); 
				$table->string('realisasi_target'); 
				$table->double('realisasi_pagu'); 
				$table->timestamps();
				
				$table->foreign('renstra_sub_kegiatan_indikator_id', 'foreign_renstra_triwulan')
							->references('id')
							->on('ta_renstra_sub_kegiatan_indikator')
							->onDelete('cascade')
							->onUpdate('cascade');
			});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rkpd_sub_kegiatan_triwulan');
    }
}
