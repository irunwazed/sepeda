<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdTujuanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd_tujuan', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_misi_id')->unsigned(); 
					$table->text('rpjmd_tujuan_nama'); 
					$table->timestamps();

					$table->foreign('rpjmd_misi_id')->references('id')->on('ref_rpjmd_misi')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd_tujuan');
    }
}
