<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRkpdSubKegiatanIndikatorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
			Schema::create('ref_rkpd_sub_kegiatan_indikator', function (Blueprint $table) {
				$table->id();
				$table->bigInteger('rkpd_sub_kegiatan_id')->unsigned(); 
				$table->text('rkpd_sub_kegiatan_indikator_nama')->nullable(); 
				$table->tinyInteger('rkpd_sub_kegiatan_indikator_nilai_jenis')->nullable(); 
				$table->text('rkpd_sub_kegiatan_indikator_nilai_json')->nullable(); 
				$table->text('rkpd_sub_kegiatan_indikator_formula')->nullable(); 
				$table->text('rkpd_sub_kegiatan_indikator_lokasi')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_latitude')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_longitude')->nullable(); 
				$table->string('rkpd_sub_kegiatan_indikator_satuan')->nullable(); 
				$table->string('rkpd_sub_kegiatan_indikator_target')->nullable(); 
				$table->tinyInteger('rkpd_sub_kegiatan_indikator_target_jenis')->nullable();  // 1 pilihan masukkan nilai, 2 masukkan pilihan
				$table->text('rkpd_sub_kegiatan_indikator_target_pilihan')->nullable();  // json daftar pilihan memiliki nama dan value
				$table->double('rkpd_sub_kegiatan_indikator_pagu')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_pagu_perubahan')->nullable(); 
				$table->string('rkpd_sub_kegiatan_indikator_tw1_target')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_tw1_pagu')->nullable(); 
				$table->string('rkpd_sub_kegiatan_indikator_tw2_target')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_tw2_pagu')->nullable(); 
				$table->string('rkpd_sub_kegiatan_indikator_tw3_target')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_tw3_pagu')->nullable(); 
				$table->string('rkpd_sub_kegiatan_indikator_tw4_target')->nullable(); 
				$table->double('rkpd_sub_kegiatan_indikator_tw4_pagu')->nullable(); 
				$table->timestamps();

				$table->foreign('rkpd_sub_kegiatan_id')->references('id')->on('ref_rkpd_sub_kegiatan')->onDelete('cascade')->onUpdate('cascade');
			});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rkpd_sub_kegiatan_indikator');
    }
}
