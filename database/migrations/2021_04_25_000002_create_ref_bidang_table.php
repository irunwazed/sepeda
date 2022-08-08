<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRefBidangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_bidang', function (Blueprint $table) {
					$table->integer('permen_ver')->unsigned();
					$table->integer('urusan_kode')->unsigned();
					$table->integer('bidang_kode')->unsigned();
					$table->string('bidang_nama');
					$table->timestamps();

					$foreign = [
						'permen_ver', 
						'urusan_kode',
						'bidang_kode'
					];

					$table->primary($foreign, 'permen_bidang_kode');
					array_pop($foreign);
					$table->foreign($foreign, 'foreign_bidang')->references($foreign)->on('ref_urusan')->onDelete('cascade')->onUpdate('cascade');
        });
				DB::table('ref_bidang')->insert([
					['permen_ver' => 1, 'urusan_kode' => '0', 'bidang_kode' => '0', 'bidang_nama' => ''],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '01', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PENDIDIKAN'],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '02', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KESEHATAN'],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '03', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PEKERJAAN UMUM DAN PENATAAN RUANG'],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '04', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN'],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '05', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KETENTERAMAN DAN KETERTIBAN UMUM SERTA PERLINDUNGAN MASYARAKAT'],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '06', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG SOSIAL'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '07', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG TENAGA KERJA'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '08', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '09', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PANGAN'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERTANAHAN'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG LINGKUNGAN HIDUP'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '12', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG ADMINISTRASI KEPENDUDUKAN DAN PENCATATAN SIPIL'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '13', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PEMBERDAYAAN MASYARAKAT DAN DESA'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '14', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '15', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERHUBUNGAN'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '16', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KOMUNIKASI DAN INFORMATIKA'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KOPERASI, USAHA KECIL, DAN MENENGAH'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '18', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PENANAMAN MODAL'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '19', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KEPEMUDAAN DAN OLAHRAGA'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '20', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG STATISTIK'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '21', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERSANDIAN'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '22', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KEBUDAYAAN'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '23', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERPUSTAKAAN'],
					['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '24', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KEARSIPAN'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '25', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KELAUTAN DAN PERIKANAN'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '26', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PARIWISATA'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERTANIAN'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '28', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG KEHUTANAN'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '29', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG ENERGI DAN SUMBER DAYA MINERAL'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERDAGANGAN'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '31', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG PERINDUSTRIAN'],
					['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '32', 'bidang_nama' => 'URUSAN PEMERINTAHAN BIDANG TRANSMIGRASI'],
					['permen_ver' => 1, 'urusan_kode' => '4', 'bidang_kode' => '01', 'bidang_nama' => 'SEKRETARIAT DAERAH'],
					['permen_ver' => 1, 'urusan_kode' => '4', 'bidang_kode' => '02', 'bidang_nama' => 'SEKRETARIAT DPRD'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '01', 'bidang_nama' => 'PERENCANAAN'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '02', 'bidang_nama' => 'KEUANGAN'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '03', 'bidang_nama' => 'KEPEGAWAIAN'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '04', 'bidang_nama' => 'PENDIDIKAN DAN PELATIHAN'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '05', 'bidang_nama' => 'PENELITIAN DAN PENGEMBANGAN'],
					['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '06', 'bidang_nama' => 'PENGELOLAAN PERBATASAN'],
					['permen_ver' => 1, 'urusan_kode' => '6', 'bidang_kode' => '01', 'bidang_nama' => 'INSPEKTORAT DAERAH'],
					['permen_ver' => 1, 'urusan_kode' => '7', 'bidang_kode' => '01', 'bidang_nama' => 'KECAMATAN'],
					['permen_ver' => 1, 'urusan_kode' => '8', 'bidang_kode' => '01', 'bidang_nama' => 'KESATUAN BANGSA DAN POLITIK'],


				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_bidang');
    }
}
