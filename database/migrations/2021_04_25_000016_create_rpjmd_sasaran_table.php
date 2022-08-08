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


				DB::table('ref_rpjmd_sasaran')->insert([

					['rpjmd_tujuan_id' => 1, 'rpjmd_sasaran_nama' => 'Meningkatkan Kualitas Pembangunan dan Pemberdayaan Desa'],
					['rpjmd_tujuan_id' => 1, 'rpjmd_sasaran_nama' => 'Meningkatnya akuntabilitas pengelolaan keuangan daerah'],
					['rpjmd_tujuan_id' => 1, 'rpjmd_sasaran_nama' => 'Meningkatnya akuntabilitas kinerja pemerintah daerah'],
					['rpjmd_tujuan_id' => 1, 'rpjmd_sasaran_nama' => 'Meningkatnya Kinerja Pelayanan Publik'],

					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Meningkatkan Kesejahteran Petani dan Nelayan'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Meningkatkan ketersedian pangan'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Meningkatnya Kesejahteraan Masyarakat'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Meningkatnya PDRB perkapita'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Meningktanya Pertumbuhan Ekonomi'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Menurunnya Jumlah Pengganguran'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Menurunnya Penduduk Miskin'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Rendahnya ketimpangan pendapatan antar masyarakat'],
					['rpjmd_tujuan_id' => 2, 'rpjmd_sasaran_nama' => 'Tumbuhnya Investasi Daerah'],

					['rpjmd_tujuan_id' => 3, 'rpjmd_sasaran_nama' => 'Meningkatkan keimanan dan ketakwaan umat beragama Kab Morowali'],
					['rpjmd_tujuan_id' => 3, 'rpjmd_sasaran_nama' => 'Meningkatnya partisipasi organisasi kepemudaan dan Prestasi Olahraga Daerah'],
					['rpjmd_tujuan_id' => 3, 'rpjmd_sasaran_nama' => 'Meningkatnya Partisipasi Perempuan dalam Pembagunan Daerah'],
					['rpjmd_tujuan_id' => 3, 'rpjmd_sasaran_nama' => 'Meningkatnya Pelestrian seni dan Budaya Lokal'],
					['rpjmd_tujuan_id' => 3, 'rpjmd_sasaran_nama' => 'Meningkatnya Standar Pelayanan Minimal (SPM) Pendidikan dalam menciptakan generasi muda yang Imtaq'],
					['rpjmd_tujuan_id' => 3, 'rpjmd_sasaran_nama' => 'Terpenuhinya Standar Pelayanan Minimal (SPM) Bidang Kesehatan'],


					['rpjmd_tujuan_id' => 4, 'rpjmd_sasaran_nama' => 'Meningkatnya Pemanfaatan teknologi informasi dan komunikasi'],
					['rpjmd_tujuan_id' => 4, 'rpjmd_sasaran_nama' => 'Meningkatnya kualitas infrastruktur dasar daerah'],


					['rpjmd_tujuan_id' => 5, 'rpjmd_sasaran_nama' => 'Meningkatnya Kualitas Lingkungan Hidup'],
					['rpjmd_tujuan_id' => 5, 'rpjmd_sasaran_nama' => 'Meningkatnya layanan kebersihan dan penataan lingkungan Kota Bungku'],
					['rpjmd_tujuan_id' => 5, 'rpjmd_sasaran_nama' => 'Meningkatnya respon dan layanan kebakaran kabupaten'],
					['rpjmd_tujuan_id' => 5, 'rpjmd_sasaran_nama' => 'Menurunnya gangguan ketentraman dan ketertiban'],

				]);
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
