<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateOpdTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_opd', function (Blueprint $table) {
					$table->id();
					$table->integer('urusan1_kode')->nullable();
					$table->integer('bidang1_kode')->nullable();
					$table->integer('urusan2_kode')->nullable();
					$table->integer('bidang2_kode')->nullable();
					$table->integer('urusan3_kode')->nullable();
					$table->integer('bidang3_kode')->nullable();
					$table->string('opd_nama');
					$table->tinyInteger('opd_status'); // 1 aktif, 2 tidak aktif, 3 kunci
					$table->timestamps();
        });
        DB::table('ref_opd')->insert([
					['urusan1_kode' => 1, 'bidang1_kode' => 3, 'urusan2_kode' => null, 'bidang2_kode' => null, 'opd_nama' => 'Dinas Pekerjaan Umum dan Penataan Ruang', 'opd_status' => 1],
					['urusan1_kode' => 5, 'bidang1_kode' => 1, 'urusan2_kode' => 5, 'bidang2_kode' => 5, 'opd_nama' => 'Badan Perencanaan, Penelitian, dan Pengembangan Daerah', 'opd_status' => 1],
					['urusan1_kode' => 5, 'bidang1_kode' => 1, 'urusan2_kode' => 5, 'bidang2_kode' => 5, 'opd_nama' => 'Dinas Kependudukan dan Pencatatan Sipil Daerah', 'opd_status' => 1],
					['urusan1_kode' => 5, 'bidang1_kode' => 1, 'urusan2_kode' => 5, 'bidang2_kode' => 5, 'opd_nama' => 'xxxx', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Kesehatan, Pengendalian Penduduk dan Keluarga Berencana', 'opd_status' => 1],
					// 
					// ['opd_nama' => 'Dinas Perumahan, Kawasan Pemukiman dan Pertanahan', 'opd_status' => 1],
					// ['opd_nama' => 'Badan Penanggulangan Bencana Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Satuan Polisi Pamongpraja', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Sosial', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Transmigrasi Dan Tenaga Kerja Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Pertanian Dan Ketahanan Pangan', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Lingkungan Hidup Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Kependudukan dan Pencatatan Sipil Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Pemberdayaan Masyarakat, Desa,Pemberdayaan Perempuan dan Perlindungan Anak', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Perhubungan Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Komunikasi dan Informatika', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Koperasi, Usaha Kecil, dan Menengah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Kepemudaan, Olahraga dan Pariwisata', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Perpustakaan Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Perikanan Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Perdagangan Dan Perindustrian', 'opd_status' => 1],
					// ['opd_nama' => 'Sekretariat Dewan Perwakilan Rakyat Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Inspektorat Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bahodopi', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bumi Raya', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bungku Barat', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bungku Pesisir', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bungku Selatan', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bungku Tengah', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Bungku Timur', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Menui Kepulauan', 'opd_status' => 1],
					// ['opd_nama' => 'Kecamatan Wita Ponda', 'opd_status' => 1],
					// ['opd_nama' => 'Badan Kesatuan Bangsa dan Politik Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Badan Perencanaan, Penelitian, dan Pengembangan Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Badan Pengelola Keuangan dan Aset Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Badan Pengelola Pendapatan Daerah', 'opd_status' => 1],
					// ['opd_nama' => 'Badan Kepegawaian Daerah dan Pengembangan Sumber Daya Manusia', 'opd_status' => 1],
					// ['opd_nama' => 'SEKRETARIAT DAERAH', 'opd_status' => 1],
					// ['opd_nama' => 'Dinas Pendidikan dan Kebudayaan.', 'opd_status' => 1],

				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('opd');
    }
}
