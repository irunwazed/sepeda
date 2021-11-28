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
            ['login_id' => 5, 'opd_id' => 3],
            ['login_id' => 6, 'opd_id' => 4],
            ['login_id' => 7, 'opd_id' => 5],
            ['login_id' => 8, 'opd_id' => 6],
            ['login_id' => 9, 'opd_id' => 7],
            ['login_id' => 10, 'opd_id' => 8],
            ['login_id' => 11, 'opd_id' => 9],
            ['login_id' => 12, 'opd_id' => 10],
            ['login_id' => 13, 'opd_id' => 11],
            ['login_id' => 14, 'opd_id' => 12],
            ['login_id' => 15, 'opd_id' => 13],
            ['login_id' => 16, 'opd_id' => 14],
            ['login_id' => 17, 'opd_id' => 15],
            ['login_id' => 18, 'opd_id' => 16],
            ['login_id' => 19, 'opd_id' => 17],
            ['login_id' => 20, 'opd_id' => 18],
            ['login_id' => 21, 'opd_id' => 19],
            ['login_id' => 22, 'opd_id' => 20],
            ['login_id' => 23, 'opd_id' => 21],
            ['login_id' => 24, 'opd_id' => 22],
            ['login_id' => 25, 'opd_id' => 23],
            ['login_id' => 26, 'opd_id' => 24],
            ['login_id' => 27, 'opd_id' => 25],
            ['login_id' => 28, 'opd_id' => 26],
            ['login_id' => 29, 'opd_id' => 27],
            ['login_id' => 30, 'opd_id' => 28],
            ['login_id' => 31, 'opd_id' => 29],
            ['login_id' => 32, 'opd_id' => 30],
            ['login_id' => 33, 'opd_id' => 31],
            ['login_id' => 34, 'opd_id' => 32],
            ['login_id' => 35, 'opd_id' => 33],
            ['login_id' => 36, 'opd_id' => 34],
            ['login_id' => 37, 'opd_id' => 35],
            ['login_id' => 38, 'opd_id' => 36],
            ['login_id' => 39, 'opd_id' => 37],
            ['login_id' => 40, 'opd_id' => 38],
            ['login_id' => 41, 'opd_id' => 39],
            ['login_id' => 42, 'opd_id' => 40],
            ['login_id' => 43, 'opd_id' => 41],
            ['login_id' => 44, 'opd_id' => 42],
            ['login_id' => 45, 'opd_id' => 43],
            ['login_id' => 46, 'opd_id' => 44],
            ['login_id' => 47, 'opd_id' => 45],
            ['login_id' => 48, 'opd_id' => 46],
            ['login_id' => 49, 'opd_id' => 47],
            ['login_id' => 50, 'opd_id' => 48],
            ['login_id' => 51, 'opd_id' => 49],
            ['login_id' => 52, 'opd_id' => 50],
            ['login_id' => 53, 'opd_id' => 51],
            ['login_id' => 54, 'opd_id' => 52],
            ['login_id' => 55, 'opd_id' => 53],
            ['login_id' => 56, 'opd_id' => 54],
            ['login_id' => 57, 'opd_id' => 55],
            ['login_id' => 58, 'opd_id' => 56],
            ['login_id' => 59, 'opd_id' => 57],
            ['login_id' => 60, 'opd_id' => 58],
            ['login_id' => 61, 'opd_id' => 59],
            ['login_id' => 62, 'opd_id' => 60],
            ['login_id' => 63, 'opd_id' => 61],
            ['login_id' => 64, 'opd_id' => 62],
            ['login_id' => 65, 'opd_id' => 63],
            ['login_id' => 66, 'opd_id' => 64],
            ['login_id' => 67, 'opd_id' => 65],
            ['login_id' => 68, 'opd_id' => 66],

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
