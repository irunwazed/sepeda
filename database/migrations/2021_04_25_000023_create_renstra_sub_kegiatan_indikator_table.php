<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRenstraSubKegiatanIndikatorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ta_renstra_sub_kegiatan_indikator', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('renstra_sub_kegiatan_id')->unsigned(); 
					$table->text('renstra_sub_kegiatan_indikator_nama');
					$table->text('renstra_sub_kegiatan_indikator_formula')->nullable();
					$table->tinyInteger('renstra_sub_kegiatan_indikator_nilai_jenis')->nullable();
					$table->text('renstra_sub_kegiatan_indikator_nilai_json')->nullable(); 
					$table->string('renstra_sub_kegiatan_indikator_satuan')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th0_realisasi_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th0_realisasi_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th1_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th1_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th1_realisasi_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th1_realisasi_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th1_capaian_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th1_capaian_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th2_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th2_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th2_realisasi_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th2_realisasi_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th2_capaian_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th2_capaian_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th3_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th3_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th3_realisasi_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th3_realisasi_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th3_capaian_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th3_capaian_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th4_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th4_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th4_realisasi_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th4_realisasi_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th4_capaian_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th4_capaian_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th5_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th5_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th5_realisasi_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th5_realisasi_pagu')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th5_capaian_target')->nullable(); 
					$table->double('renstra_sub_kegiatan_indikator_th5_capaian_pagu')->nullable(); 
					$table->timestamps();

					$table->foreign('renstra_sub_kegiatan_id', 'foreign_renstra_sub_kegiatan')->references('id')->on('ref_renstra_sub_kegiatan')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ta_renstra_sub_kegiatan_indikator');
    }
}
