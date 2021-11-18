<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRenstraSasaranIndikatorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_renstra_sasaran_indikator', function (Blueprint $table) {
					$table->bigInteger('opd_id')->unsigned(); 
					$table->integer('renstra_tujuan_kode')->unsigned();
					$table->integer('renstra_sasaran_kode')->unsigned();
					$table->integer('renstra_sasaran_indikator_kode')->unsigned();
					$table->text('renstra_sasaran_indikator_nama')->nullable();
					$table->text('renstra_sasaran_indikator_formula')->nullable(); 
					$table->tinyInteger('renstra_sasaran_indikator_nilai_jenis')->nullable(); 
					$table->text('renstra_sasaran_indikator_nilai_json')->nullable(); 
					$table->string('renstra_sasaran_indikator_satuan')->nullable(); 
					$table->double('renstra_sasaran_indikator_th0_realisasi_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th0_realisasi_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th1_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th1_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th1_realisasi_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th1_realisasi_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th1_capaian_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th1_capaian_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th2_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th2_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th2_realisasi_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th2_realisasi_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th2_capaian_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th2_capaian_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th3_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th3_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th3_realisasi_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th3_realisasi_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th3_capaian_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th3_capaian_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th4_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th4_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th4_realisasi_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th4_realisasi_pagu')->nullable();
					$table->double('renstra_sasaran_indikator_th4_capaian_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th4_capaian_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th5_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th5_pagu')->nullable(); 
					$table->double('renstra_sasaran_indikator_th5_realisasi_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th5_realisasi_pagu')->nullable();
					$table->double('renstra_sasaran_indikator_th5_capaian_target')->nullable(); 
					$table->double('renstra_sasaran_indikator_th5_capaian_pagu')->nullable();
					$table->timestamps();

					$foreign = [
						'opd_id', 
						'renstra_tujuan_kode',
						'renstra_sasaran_kode',
						'renstra_sasaran_indikator_kode',
					];

					$table->primary($foreign, 'renstra_sasaran_indikator');
					array_pop($foreign);
					// $table->foreign($foreign, 'foreign_renstra_sasaran')->references($foreign)->on('ref_renstra_tujuan')->onDelete('cascade')->onUpdate('cascade');
					$table->foreign($foreign, 'foreign_renstra_sasaran_indikator')->references($foreign)->on('ref_renstra_sasaran')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('ref_renstra_sasaran_indikator');
    }
}
