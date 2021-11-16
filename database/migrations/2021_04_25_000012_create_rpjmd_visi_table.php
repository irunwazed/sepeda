<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdVisiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd_visi', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_id')->unsigned(); 
					$table->text('rpjmd_visi_nama'); 
					$table->tinyInteger('rpjmd_visi_status'); 
					$table->timestamps();

        });
				DB::table('ref_rpjmd_visi')->insert([
					['rpjmd_id' => 1, 'rpjmd_visi_nama' => 'TERWUJUDNYA MASYARAKAT KABUPATEN MOROWALI YANG SEJAHTERA BERSAMA', 'rpjmd_visi_status' => 1],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd_visi');
    }
}
