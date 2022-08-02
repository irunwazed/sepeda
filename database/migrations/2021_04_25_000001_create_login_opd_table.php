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
            $table->tinyInteger('login_opd_level'); // 1. kepala OPD, 2. Operator
            $table->timestamps();
        });

        DB::table('ref_login_opd')->insert([
            ['login_id' => 3, 'login_opd_level' => 1, 'opd_id' => 1],
            ['login_id' => 4, 'login_opd_level' => 1, 'opd_id' => 2],
            ['login_id' => 5, 'login_opd_level' => 1, 'opd_id' => 3],
            ['login_id' => 6, 'login_opd_level' => 1, 'opd_id' => 4],
            ['login_id' => 7, 'login_opd_level' => 1, 'opd_id' => 5],
            ['login_id' => 8, 'login_opd_level' => 1, 'opd_id' => 6],
            ['login_id' => 9, 'login_opd_level' => 1, 'opd_id' => 7],
            ['login_id' => 10, 'login_opd_level' => 1, 'opd_id' => 8],
            ['login_id' => 11, 'login_opd_level' => 1, 'opd_id' => 9],
            ['login_id' => 12, 'login_opd_level' => 1, 'opd_id' => 10],
            ['login_id' => 13, 'login_opd_level' => 1, 'opd_id' => 11],
            ['login_id' => 14, 'login_opd_level' => 1, 'opd_id' => 12],
            ['login_id' => 15, 'login_opd_level' => 1, 'opd_id' => 13],
            ['login_id' => 16, 'login_opd_level' => 1, 'opd_id' => 14],
            ['login_id' => 17, 'login_opd_level' => 1, 'opd_id' => 15],
            ['login_id' => 18, 'login_opd_level' => 1, 'opd_id' => 16],
            ['login_id' => 19, 'login_opd_level' => 1, 'opd_id' => 17],
            ['login_id' => 20, 'login_opd_level' => 1, 'opd_id' => 18],
            ['login_id' => 21, 'login_opd_level' => 1, 'opd_id' => 19],
            ['login_id' => 22, 'login_opd_level' => 1, 'opd_id' => 20],
            ['login_id' => 23, 'login_opd_level' => 1, 'opd_id' => 21],
            ['login_id' => 24, 'login_opd_level' => 1, 'opd_id' => 22],
            ['login_id' => 25, 'login_opd_level' => 1, 'opd_id' => 23],
            ['login_id' => 26, 'login_opd_level' => 1, 'opd_id' => 24],
            ['login_id' => 27, 'login_opd_level' => 1, 'opd_id' => 25],
            ['login_id' => 28, 'login_opd_level' => 1, 'opd_id' => 26],
            ['login_id' => 29, 'login_opd_level' => 1, 'opd_id' => 27],
            ['login_id' => 30, 'login_opd_level' => 1, 'opd_id' => 28],
            ['login_id' => 31, 'login_opd_level' => 1, 'opd_id' => 29],
            ['login_id' => 32, 'login_opd_level' => 1, 'opd_id' => 30],
            ['login_id' => 33, 'login_opd_level' => 1, 'opd_id' => 31],
            ['login_id' => 34, 'login_opd_level' => 1, 'opd_id' => 32],
            ['login_id' => 35, 'login_opd_level' => 1, 'opd_id' => 33],
            ['login_id' => 36, 'login_opd_level' => 1, 'opd_id' => 34],
            ['login_id' => 37, 'login_opd_level' => 1, 'opd_id' => 35],
            ['login_id' => 38, 'login_opd_level' => 1, 'opd_id' => 36],
            ['login_id' => 39, 'login_opd_level' => 1, 'opd_id' => 37],
            ['login_id' => 40, 'login_opd_level' => 1, 'opd_id' => 38],
            ['login_id' => 41, 'login_opd_level' => 1, 'opd_id' => 39],
            ['login_id' => 42, 'login_opd_level' => 1, 'opd_id' => 40],
            ['login_id' => 43, 'login_opd_level' => 1, 'opd_id' => 41],
            ['login_id' => 44, 'login_opd_level' => 1, 'opd_id' => 42],
            ['login_id' => 45, 'login_opd_level' => 1, 'opd_id' => 43],
            ['login_id' => 46, 'login_opd_level' => 1, 'opd_id' => 44],
            ['login_id' => 47, 'login_opd_level' => 1, 'opd_id' => 45],
            ['login_id' => 48, 'login_opd_level' => 1, 'opd_id' => 46],
            ['login_id' => 49, 'login_opd_level' => 1, 'opd_id' => 47],
            ['login_id' => 50, 'login_opd_level' => 1, 'opd_id' => 48],
            ['login_id' => 51, 'login_opd_level' => 1, 'opd_id' => 49],
            ['login_id' => 52, 'login_opd_level' => 1, 'opd_id' => 50],
            ['login_id' => 53, 'login_opd_level' => 1, 'opd_id' => 51],
            ['login_id' => 54, 'login_opd_level' => 1, 'opd_id' => 52],
            ['login_id' => 55, 'login_opd_level' => 1, 'opd_id' => 53],
            ['login_id' => 56, 'login_opd_level' => 1, 'opd_id' => 54],
            ['login_id' => 57, 'login_opd_level' => 1, 'opd_id' => 55],
            ['login_id' => 58, 'login_opd_level' => 1, 'opd_id' => 56],
            ['login_id' => 59, 'login_opd_level' => 1, 'opd_id' => 57],
            ['login_id' => 60, 'login_opd_level' => 1, 'opd_id' => 58],
            ['login_id' => 61, 'login_opd_level' => 1, 'opd_id' => 59],
            ['login_id' => 62, 'login_opd_level' => 1, 'opd_id' => 60],
            ['login_id' => 63, 'login_opd_level' => 1, 'opd_id' => 61],
            ['login_id' => 64, 'login_opd_level' => 1, 'opd_id' => 62],
            ['login_id' => 65, 'login_opd_level' => 1, 'opd_id' => 63],
            ['login_id' => 66, 'login_opd_level' => 1, 'opd_id' => 64],
            ['login_id' => 67, 'login_opd_level' => 1, 'opd_id' => 65],
            ['login_id' => 68, 'login_opd_level' => 1, 'opd_id' => 66],

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
