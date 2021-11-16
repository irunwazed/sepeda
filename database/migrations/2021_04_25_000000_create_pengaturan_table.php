<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreatePengaturanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengaturan', function (Blueprint $table) {
					$table->id();
					$table->string('nama');
					$table->string('value');
					$table->text('ket')->nullable(); // 1 aktif, 2 tidak aktif, 3 kunci
					$table->timestamps();

        });
        DB::table('pengaturan')->insert([
					['nama' => 'rpjmd_tahun', 'value' => '2019'],
					['nama' => 'tahun', 'value' => '1'],
					['nama' => 'triwulan', 'value' => '1'],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pengaturan');
    }
}
