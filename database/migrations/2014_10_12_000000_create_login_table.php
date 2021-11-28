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
            ['login_nama' => 'Dinas Pendidikan dan Kebudayaan', 'login_username' => 'pendidikan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Rumah Sakit Umum Daerah Morowali', 'login_username' => 'rsud', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Rumah Sakit Pratama', 'login_username' => 'rs-pratama', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Kesehatan, Pengendalian Penduduk dan Keluarga Berencana', 'login_username' => 'dinkes', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Ulunambo', 'login_username' => 'puskesmas_ulunambo', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Kaleroang', 'login_username' => 'puskesmas_kaleroang', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Lafeu', 'login_username' => 'puskesmas_lafeu', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Bahodopi', 'login_username' => 'puskesmas_bahodopi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Bahomotefe', 'login_username' => 'puskesmas_bahomotefe', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Bungku', 'login_username' => 'puskesmas_bungku', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Wosu', 'login_username' => 'puskesmas_wosu', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Bahonsuai', 'login_username' => 'puskesmas_bahonsuai', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Laantula Jaya', 'login_username' => 'puskesmas_jaya', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Tanjung Harapan', 'login_username' => 'puskesmas_harapan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Puskesmas Fonuasingko', 'login_username' => 'puskesmas_fonuasingko', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Pekerjaan Umum dan Penataan Ruang', 'login_username' => 'pu', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Perumahan, Kawasan Pemukiman dan Pertanahan', 'login_username' => 'perumahan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Badan Penanggulangan Bencana Daerah', 'login_username' => 'bencana', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Satuan Polisi Pamongpraja', 'login_username' => 'polpp', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Sosial', 'login_username' => 'sosial', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Transmigrasi Dan Tenaga Kerja Daerah', 'login_username' => 'transmigrasi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Pertanian Dan Ketahanan Pangan', 'login_username' => 'pertanian', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Lingkungan Hidup Daerah', 'login_username' => 'dlhd', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Kependudukan dan Pencatatan Sipil Daerah', 'login_username' => 'capil', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Pemberdayaan Masyarakat, Desa,Pemberdayaan Perempuan dan Perlindungan Anak', 'login_username' => 'pemdes', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Perhubungan Daerah', 'login_username' => 'perhubungan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Komunikasi dan Informatika', 'login_username' => 'kominfo', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Koperasi, Usaha Kecil, dan Menengah', 'login_username' => 'koperasi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'login_username' => 'ptsp', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Kepemudaan, Olahraga dan Pariwisata', 'login_username' => 'dispora', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Perpustakaan Daerah', 'login_username' => 'puskesmas', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Perikanan Daerah', 'login_username' => 'perikanan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Dinas Perdagangan Dan Perindustrian', 'login_username' => 'perindag', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'SEKRETARIAT DAERAH', 'login_username' => 'sekretariat_daerah', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Administrasi Pembangunan', 'login_username' => 'bagian_administrasi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Ekonomi dan Sumber Daya Alam', 'login_username' => 'bagian_ekonomi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Hukum', 'login_username' => 'bagian_hukum', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Kesejahteraan Rakyat', 'login_username' => 'bagian_kesejahteraan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Organisasi', 'login_username' => 'bagian_organisasi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Pemerintahan', 'login_username' => 'bagian_pemerintahan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Pengadaan Barang dan Jasa', 'login_username' => 'bagian_pengadaan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Protokoler dan Komunikasi Pimpinan', 'login_username' => 'bagian_protokoler', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Bagian Umum', 'login_username' => 'bagian_umum', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Sekretariat Dewan Perwakilan Rakyat Daerah', 'login_username' => 'sekretariat_dewan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Badan Perencanaan, Penelitian, dan Pengembangan Daerah', 'login_username' => 'bappeda', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Badan Pengelola Keuangan dan Aset Daerah', 'login_username' => 'bpkad', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Badan Pengelola Pendapatan Daerah', 'login_username' => 'pendapatan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Badan Kepegawaian Daerah dan Pengembangan Sumber Daya Manusia', 'login_username' => 'bkd', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Inspektorat Daerah', 'login_username' => 'inspektorat', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bahodopi', 'login_username' => 'kecamatan_bahodopi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bumi Raya', 'login_username' => 'kecamatan_bumi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bungku Barat', 'login_username' => 'kecamatan_bungku_barat', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bungku Pesisir', 'login_username' => 'kecamatan_bungku_pesisir', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bungku Selatan', 'login_username' => 'kecamatan_bungku_selatan', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bungku Tengah', 'login_username' => 'kecamatan_bungku_tengah', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Bungi', 'login_username' => 'kelurahan_bungi', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Lamberea', 'login_username' => 'kelurahan_lamberea', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Matano', 'login_username' => 'kelurahan_matano', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Marsaole', 'login_username' => 'kelurahan_marsaole', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Tofoiso', 'login_username' => 'kelurahan_tofoiso', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Mendui', 'login_username' => 'kelurahan_mendui', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Bungku Timur', 'login_username' => 'kecamatan_bungku', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Menui Kepulauan', 'login_username' => 'kecamatan_menui', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kelurahan Ulunambo', 'login_username' => 'kelurahan_ulunambo', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Kecamatan Wita Ponda', 'login_username' => 'kecamatan_wita', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],
            ['login_nama' => 'Badan Kesatuan Bangsa dan Politik Daerah', 'login_username' => 'kesbang', 'login_password' => Hash::make('123456'), 'login_level' => 3, 'login_aktif' => 1],

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
