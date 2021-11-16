<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRefSumberDanaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_sumber_dana', function (Blueprint $table) {
					$table->id();
					$table->string('sumber_dana_nama');
					$table->timestamps();
        });
				DB::table('ref_sumber_dana')->insert([
					['sumber_dana_nama' => 'PAD'],
					['sumber_dana_nama' => 'DAK'],
					['sumber_dana_nama' => 'DAU'],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_urusan');
    }
}
