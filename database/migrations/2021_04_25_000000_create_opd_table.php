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
			$table->tinyInteger('opd_level'); // 1 SKPD, 2 unit
			$table->bigInteger('opd_id')->nullable(); // 1 SKPD, 2 unit
			$table->tinyInteger('opd_status'); // 1 aktif, 2 tidak aktif, 3 kunci
			$table->timestamps();
		});
		DB::table('ref_opd')->insert([
			['urusan1_kode' => 1, 'bidang1_kode' => 1, 'urusan2_kode' => 2, 'bidang2_kode' => 22, 'opd_nama' => 'Dinas Pendidikan dan Kebudayaan', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Rumah Sakit Umum Daerah Morowali', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Rumah Sakit Pratama', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Dinas Kesehatan, Pengendalian Penduduk dan Keluarga Berencana', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Ulunambo', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Kaleroang', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Lafeu', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Bahodopi', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Bahomotefe', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Bungku', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Wosu', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Bahonsuai', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Laantula Jaya', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Tanjung Harapan', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 2, 'urusan2_kode' => 2, 'bidang2_kode' => 14, 'opd_nama' => 'Puskesmas Fonuasingko', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 4],
			['urusan1_kode' => 1, 'bidang1_kode' => 3, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Pekerjaan Umum dan Penataan Ruang', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 1, 'bidang1_kode' => 4, 'urusan2_kode' => 2, 'bidang2_kode' => 10, 'opd_nama' => 'Dinas Perumahan, Kawasan Pemukiman dan Pertanahan', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 1, 'bidang1_kode' => 5, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Badan Penanggulangan Bencana Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 1, 'bidang1_kode' => 5, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Satuan Polisi Pamongpraja', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 1, 'bidang1_kode' => 6, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Sosial', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 7, 'urusan2_kode' => 3, 'bidang2_kode' => 32, 'opd_nama' => 'Dinas Transmigrasi Dan Tenaga Kerja Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 9, 'urusan2_kode' => 3, 'bidang2_kode' => 27, 'opd_nama' => 'Dinas Pertanian Dan Ketahanan Pangan', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 11, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Lingkungan Hidup Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 12, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Kependudukan dan Pencatatan Sipil Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 13, 'urusan2_kode' => 2, 'bidang2_kode' => 8, 'opd_nama' => 'Dinas Pemberdayaan Masyarakat, Desa,Pemberdayaan Perempuan dan Perlindungan Anak', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 15, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Perhubungan Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 16, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Komunikasi dan Informatika', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 17, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Koperasi, Usaha Kecil, dan Menengah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 18, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 19, 'urusan2_kode' => 3, 'bidang2_kode' => 26, 'opd_nama' => 'Dinas Kepemudaan, Olahraga dan Pariwisata', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 2, 'bidang1_kode' => 23, 'urusan2_kode' => 2, 'bidang2_kode' => 24, 'opd_nama' => 'Dinas Perpustakaan Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 3, 'bidang1_kode' => 25, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Dinas Perikanan Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 3, 'bidang1_kode' => 30, 'urusan2_kode' => 3, 'bidang2_kode' => 31, 'opd_nama' => 'Dinas Perdagangan Dan Perindustrian', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'SEKRETARIAT DAERAH', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Administrasi Pembangunan', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Ekonomi dan Sumber Daya Alam', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Hukum', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Kesejahteraan Rakyat', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Organisasi', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Pemerintahan', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Pengadaan Barang dan Jasa', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Protokoler dan Komunikasi Pimpinan', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Bagian Umum', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 34],
			['urusan1_kode' => 4, 'bidang1_kode' => 2, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Sekretariat Dewan Perwakilan Rakyat Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 5, 'bidang1_kode' => 1, 'urusan2_kode' => 5, 'bidang2_kode' => 5, 'opd_nama' => 'Badan Perencanaan, Penelitian, dan Pengembangan Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 5, 'bidang1_kode' => 2, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Badan Pengelola Keuangan dan Aset Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 5, 'bidang1_kode' => 2, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Badan Pengelola Pendapatan Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 5, 'bidang1_kode' => 3, 'urusan2_kode' => 5, 'bidang2_kode' => 4, 'opd_nama' => 'Badan Kepegawaian Daerah dan Pengembangan Sumber Daya Manusia', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 6, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Inspektorat Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bahodopi', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bumi Raya', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bungku Barat', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bungku Pesisir', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bungku Selatan', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bungku Tengah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Bungi', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 55],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Lamberea', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 55],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Matano', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 55],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Marsaole', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 55],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Tofoiso', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 55],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Mendui', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 55],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Bungku Timur', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Menui Kepulauan', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kelurahan Ulunambo', 'opd_status' => 1, 'opd_level' => 2, 'opd_id' => 63],
			['urusan1_kode' => 7, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Kecamatan Wita Ponda', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],
			['urusan1_kode' => 8, 'bidang1_kode' => 1, 'urusan2_kode' => 0, 'bidang2_kode' => 0, 'opd_nama' => 'Badan Kesatuan Bangsa dan Politik Daerah', 'opd_status' => 1, 'opd_level' => 1, 'opd_id' => null],

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
