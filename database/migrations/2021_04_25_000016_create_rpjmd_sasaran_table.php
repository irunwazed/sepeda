<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdSasaranTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd_sasaran', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_tujuan_id')->unsigned(); 
					$table->text('rpjmd_sasaran_nama'); 
					$table->timestamps();

					$table->foreign('rpjmd_tujuan_id')->references('id')->on('ref_rpjmd_tujuan')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd_sasaran');
    }
}
