<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateLoginOpdTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_login_opd', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('login_id')->unsigned();
					$table->bigInteger('opd_id')->unsigned();
					$table->timestamps();
        });
				
        DB::table('ref_login_opd')->insert([
					['login_id' => 3, 'opd_id' => 1],
					['login_id' => 4, 'opd_id' => 2],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_login_opd');
    }
}
