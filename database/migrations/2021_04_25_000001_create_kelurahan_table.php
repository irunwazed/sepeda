<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateKelurahanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
			Schema::create('ref_kelurahan', function (Blueprint $table) {
				$table->integer('kecamatan_id')->unsigned();
				$table->integer('kelurahan_id')->unsigned();
				$table->string('kelurahan_nama');
				$table->tinyInteger('kelurahan_status'); // 1 aktif, 2 tidak aktif, 3 kunci
				$table->timestamps();

				$table->primary(['kecamatan_id', 'kelurahan_id'], 'wil_kelurahan_kode');
				$table->foreign('kecamatan_id')->references('kecamatan_id')->on('ref_kecamatan')->onDelete('cascade')->onUpdate('cascade');
			});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kecamatan');
    }
}
