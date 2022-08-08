<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdProgramTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd_program', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_sasaran_id')->unsigned(); 
					$table->integer('permen_ver');
					$table->integer('urusan_kode');
					$table->integer('bidang_kode');
					$table->integer('program_kode');

					$table->bigInteger('opd_id')->unsigned(); 
					$table->integer('renstra_tujuan_kode')->nullable(); 
					$table->integer('renstra_sasaran_kode')->nullable(); 
					$table->timestamps();

					$table->foreign('rpjmd_sasaran_id')->references('id')->on('ref_rpjmd_sasaran')->onDelete('cascade')->onUpdate('cascade');
					$table->foreign('opd_id')->references('id')->on('ref_opd')->onDelete('cascade')->onUpdate('cascade');
        });


				// DB::table('ref_rpjmd_program')->insert([
				// 	['rpjmd_sasaran_id' => 1, 'rpjmd_tujuan_nama' => 'Menciptakan pemerintahan yang baik dan bersih'],
				// ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd_program');
    }
}
