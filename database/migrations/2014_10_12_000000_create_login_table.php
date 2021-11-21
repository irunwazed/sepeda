<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateLoginTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('login', function (Blueprint $table) {
            $table->id();
            $table->string('login_nama');
            $table->string('login_email')->nullable();
            $table->string('login_nomor_hp')->nullable();
            $table->string('login_username')->unique();
            $table->string('login_password');
            $table->text('login_foto')->nullable();
            $table->tinyInteger('login_level'); // 1 super admin, 2 admin, 3 opd, 4 pegawai
            $table->tinyInteger('login_aktif'); // 1 aktif , 2 tidak aktif
            $table->timestamps();
        });
        DB::table('login')->insert([
            ['login_nama' => 'Administrator', 'login_username' => 'aka', 'login_password' => Hash::make('123456'), 'login_level' => 1, 'login_aktif' => 1],
            ['login_nama' => 'Administrator', 'login_username' => 'admin', 'login_password' => Hash::make('123456'), 'login_level' => 2, 'login_aktif' => 1],
            ['login_nama' => 'Administrator', 'login_username' => 'pu', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Administrator', 'login_username' => 'bappeda', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('login');
    }
}
