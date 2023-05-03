<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd', function (Blueprint $table) {
					$table->id();
					$table->integer('rpjmd_tahun'); // tahun awal contoh 2019 -> 2019 - 2023
					$table->tinyInteger('rpjmd_jenis'); // 1. RPJMD, 2 RPD
					$table->timestamps();

        });
				DB::table('ref_rpjmd')->insert([
					['rpjmd_tahun' => 2018, 'rpjmd_jenis' => 1],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd');
    }
}
