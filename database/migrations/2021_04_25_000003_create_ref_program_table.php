<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRefProgramTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_program', function (Blueprint $table) {
					$table->integer('permen_ver')->unsigned();
					$table->integer('urusan_kode')->unsigned();
					$table->integer('bidang_kode')->unsigned();
					$table->integer('program_kode')->unsigned();
					$table->text('program_nama');
					$table->timestamps();

					$foreign = [
						'permen_ver', 
						'urusan_kode',
						'bidang_kode',
						'program_kode',
					];

					$table->primary($foreign, 'permen_program_kode');
					array_pop($foreign);
					$table->foreign($foreign, 'foreign_program')->references($foreign)->on('ref_bidang')->onDelete('cascade')->onUpdate('cascade');
        });
				DB::table('ref_program')->insert([
					['permen_ver' => 1, 'urusan_kode' => '0', 'bidang_kode' => '0', 'program_kode' => '1', 'program_nama' => 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH KABUPATEN/KOTA'],
					['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '1', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN PENDIDIKAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '1', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGEMBANGAN KURIKULUM'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '1', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENDIDIK DAN TENAGA KEPENDIDIKAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '1', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGENDALIAN PERIZINAN PENDIDIKAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '1', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENGEMBANGAN BAHASA DAN SASTRA'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '2', 'program_kode' => '2', 'program_nama' => 'PROGRAM PEMENUHAN UPAYA KESEHATAN PERORANGAN DAN UPAYA KESEHATAN MASYARAKAT'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '2', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENINGKATAN KAPASITAS SUMBER DAYA MANUSIA KESEHATAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '2', 'program_kode' => '4', 'program_nama' => 'PROGRAM SEDIAAN FARMASI, ALAT KESEHATAN DAN MAKANAN MINUMAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '2', 'program_kode' => '5', 'program_nama' => 'PROGRAM PEMBERDAYAAN MASYARAKAT BIDANG KESEHATAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN SUMBER DAYA AIR (SDA)'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM PENYEDIAAN AIR MINUM'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGEMBANGAN SISTEM DAN PENGELOLAAN PERSAMPAHAN REGIONAL'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM AIR LIMBAH'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM DRAINASE'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '7', 'program_nama' => 'PROGRAM PENGEMBANGAN PERMUKIMAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '8', 'program_nama' => 'PROGRAM PENATAAN BANGUNAN GEDUNG'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '9', 'program_nama' => 'PROGRAM PENATAAN BANGUNAN DAN LINGKUNGANNYA'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '10', 'program_nama' => 'PROGRAM PENYELENGGARAAN JALAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '11', 'program_nama' => 'PROGRAM PENGEMBANGAN JASA KONSTRUKSI'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '3', 'program_kode' => '12', 'program_nama' => 'PROGRAM PENYELENGGARAAN PENATAAN RUANG'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '4', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGEMBANGAN PERUMAHAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '4', 'program_kode' => '3', 'program_nama' => 'PROGRAM KAWASAN PERMUKIMAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '4', 'program_kode' => '4', 'program_nama' => 'PROGRAM PERUMAHAN DAN KAWASAN PERMUKIMAN KUMUH'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '4', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENINGKATAN PRASARANA, SARANA DAN UTILITAS UMUM (PSU)'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '4', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENINGKATAN PELAYANAN SERTIFIKASI, KUALIFIKASI, KLASIFIKASI, DAN REGISTRASI BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '5', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENINGKATAN KETENTERAMAN DAN KETERTIBAN UMUM'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '5', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENANGGULANGAN BENCANA'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '5', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENCEGAHAN, PENANGGULANGAN, PENYELAMATAN KEBAKARAN DAN PENYELAMATAN NON KEBAKARAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '6', 'program_kode' => '2', 'program_nama' => 'PROGRAM PEMBERDAYAAN SOSIAL'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '6', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENANGANAN WARGA NEGARA MIGRAN KORBAN TINDAK KEKERASAN'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '6', 'program_kode' => '4', 'program_nama' => 'PROGRAM REHABILITASI SOSIAL'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '6', 'program_kode' => '5', 'program_nama' => 'PROGRAM PERLINDUNGAN DAN JAMINAN SOSIAL'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '6', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENANGANAN BENCANA'],
['permen_ver' => 1, 'urusan_kode' => '1', 'bidang_kode' => '6', 'program_kode' => '7', 'program_nama' => 'PROGRAM PENGELOLAAN TAMAN MAKAM PAHLAWAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '7', 'program_kode' => '2', 'program_nama' => 'PROGRAM PERENCANAAN TENAGA KERJA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '7', 'program_kode' => '3', 'program_nama' => 'PROGRAM PELATIHAN KERJA DAN PRODUKTIVITAS TENAGA KERJA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '7', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENEMPATAN TENAGA KERJA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '7', 'program_kode' => '5', 'program_nama' => 'PROGRAM HUBUNGAN INDUSTRIAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '8', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGARUSUTAMAAN GENDER DAN PEMBERDAYAAN PEREMPUAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '8', 'program_kode' => '3', 'program_nama' => 'PROGRAM PERLINDUNGAN PEREMPUAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '8', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENINGKATAN KUALITAS KELUARGA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '8', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGELOLAAN SISTEM DATA GENDER DAN ANAK'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '8', 'program_kode' => '6', 'program_nama' => 'PROGRAM PEMENUHAN HAK ANAK (PHA)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '8', 'program_kode' => '7', 'program_nama' => 'PROGRAM PERLINDUNGAN KHUSUS ANAK'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '9', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN SUMBER DAYA EKONOMI UNTUK KEDAULATAN DAN KEMANDIRIAN PANGAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '9', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENINGKATAN DIVERSIFIKASI DAN KETAHANAN PANGAN MASYARAKAT'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '9', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENANGANAN KERAWANAN PANGAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '9', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGAWASAN KEAMANAN PANGAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN IZIN LOKASI'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENYELESAIAN SENGKETA TANAH GARAPAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENYELESAIAN GANTI KERUGIAN DAN SANTUNAN TANAH UNTUK PEMBANGUNAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '6', 'program_nama' => 'PROGRAM REDISTRIBUSI TANAH, SERTA GANTI KERUGIAN PROGRAM TANAH KELEBIHAN MAKSIMUM DAN TANAH ABSENTEE'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '7', 'program_nama' => 'PROGRAM PENETAPAN TANAH ULAYAT'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '8', 'program_nama' => 'PROGRAM PENGELOLAAN TANAH KOSONG'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '9', 'program_nama' => 'PROGRAM PENGELOLAAN IZIN MEMBUKA TANAH'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '10', 'program_kode' => '10', 'program_nama' => 'PROGRAM PENATAGUNAAN TANAH'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '2', 'program_nama' => 'PROGRAM PERENCANAAN LINGKUNGAN HIDUP'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGENDALIAN PENCEMARAN DAN/ATAU KERUSAKAN LINGKUNGAN HIDUP'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGELOLAAN KEANEKARAGAMAN HAYATI (KEHATI)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGENDALIAN BAHAN BERBAHAYA DAN BERACUN (B3) DAN LIMBAH BAHAN BERBAHAYA DAN BERACUN (LIMBAH B3)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '6', 'program_nama' => 'PROGRAM PEMBINAAN DAN PENGAWASAN TERHADAP IZIN LINGKUNGAN DAN IZIN PERLINDUNGAN DAN PENGELOLAAN LINGKUNGAN HIDUP (PPLH)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '7', 'program_nama' => 'PROGRAM PENGAKUAN KEBERADAAN MASYARAKAT HUKUM ADAT (MHA), KEARIFAN LOKAL DAN HAK MHA YANG TERKAIT DENGAN PPLH'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '8', 'program_nama' => 'PROGRAM PENINGKATAN PENDIDIKAN, PELATIHAN DAN PENYULUHAN LINGKUNGAN HIDUP UNTUK MASYARAKAT'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '9', 'program_nama' => 'PROGRAM PENGHARGAAN LINGKUNGAN HIDUP UNTUK MASYARAKAT'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '10', 'program_nama' => 'PROGRAM PENANGANAN PENGADUAN LINGKUNGAN HIDUP'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '11', 'program_kode' => '11', 'program_nama' => 'PROGRAM PENGELOLAAN PERSAMPAHAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '12', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENDAFTARAN PENDUDUK'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '12', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENCATATAN SIPIL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '12', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGELOLAAN INFORMASI ADMINISTRASI KEPENDUDUKAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '12', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGELOLAAN PROFIL KEPENDUDUKAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '13', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENATAAN DESA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '13', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENINGKATAN KERJASAMA DESA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '13', 'program_kode' => '4', 'program_nama' => 'PROGRAM ADMINISTRASI PEMERINTAHAN DESA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '13', 'program_kode' => '5', 'program_nama' => 'PROGRAM PEMBERDAYAAN LEMBAGA KEMASYARAKATAN, LEMBAGA ADAT DAN MASYARAKAT HUKUM ADAT'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '14', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGENDALIAN PENDUDUK'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '14', 'program_kode' => '3', 'program_nama' => 'PROGRAM PEMBINAAN KELUARGA BERENCANA (KB)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '14', 'program_kode' => '4', 'program_nama' => 'PROGRAM PEMBERDAYAAN DAN PENINGKATAN KELUARGA SEJAHTERA (KS)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '15', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENYELENGGARAAN LALU LINTAS DAN ANGKUTAN JALAN (LLAJ)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '15', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGELOLAAN PELAYARAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '15', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGELOLAAN PENERBANGAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '15', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGELOLAAN PERKERETAAPIAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '16', 'program_kode' => '2', 'program_nama' => 'PROGRAM INFORMASI DAN KOMUNIKASI PUBLIK'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '16', 'program_kode' => '3', 'program_nama' => 'PROGRAM APLIKASI INFORMATIKA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '2', 'program_nama' => 'PROGRAM PELAYANAN IZIN USAHA SIMPAN PINJAM'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGAWASAN DAN PEMERIKSAAN KOPERASI'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENILAIAN KESEHATAN KSP/USP KOPERASI'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENDIDIKAN DAN LATIHAN PERKOPERASIAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '6', 'program_nama' => 'PROGRAM PEMBERDAYAAN DAN PERLINDUNGAN KOPERASI'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '7', 'program_nama' => 'PROGRAM PEMBERDAYAAN USAHA MENENGAH, USAHA KECIL, DAN USAHA MIKRO (UMKM)'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '17', 'program_kode' => '8', 'program_nama' => 'PROGRAM PENGEMBANGAN UMKM'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '18', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGEMBANGAN IKLIM PENANAMAN MODAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '18', 'program_kode' => '3', 'program_nama' => 'PROGRAM PROMOSI PENANAMAN MODAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '18', 'program_kode' => '4', 'program_nama' => 'PROGRAM PELAYANAN PENANAMAN MODAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '18', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGENDALIAN PELAKSANAAN PENANAMAN MODAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '18', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENGELOLAAN DATA DAN SISTEM INFORMASI PENANAMAN MODAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '19', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGEMBANGAN KAPASITAS DAYA SAING KEPEMUDAAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '19', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGEMBANGAN KAPASITAS DAYA SAING KEOLAHRAGAAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '19', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGEMBANGAN KAPASITAS KEPRAMUKAAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '20', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENYELENGGARAAN STATISTIK SEKTORAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '21', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENYELENGGARAAN PERSANDIAN UNTUK PENGAMANAN INFORMASI'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '22', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGEMBANGAN KEBUDAYAAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '22', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGEMBANGAN KESENIAN TRADISIONAL'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '22', 'program_kode' => '4', 'program_nama' => 'PROGRAM PEMBINAAN SEJARAH'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '22', 'program_kode' => '5', 'program_nama' => 'PROGRAM PELESTARIAN DAN PENGELOLAAN CAGAR BUDAYA'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '22', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENGELOLAAN PERMUSEUMAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '23', 'program_kode' => '2', 'program_nama' => 'PROGRAM PEMBINAAN PERPUSTAKAAN'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '23', 'program_kode' => '3', 'program_nama' => 'PROGRAM PELESTARIAN KOLEKSI NASIONAL DAN NASKAH KUNO'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '24', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN ARSIP'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '24', 'program_kode' => '3', 'program_nama' => 'PROGRAM PERLINDUNGAN DAN PENYELAMATAN ARSIP'],
['permen_ver' => 1, 'urusan_kode' => '2', 'bidang_kode' => '24', 'program_kode' => '4', 'program_nama' => 'PROGRAM PERIZINAN PENGGUNAAN ARSIP'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '25', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGELOLAAN PERIKANAN TANGKAP'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '25', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGELOLAAN PERIKANAN BUDIDAYA'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '25', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGAWASAN SUMBER DAYA KELAUTAN DAN PERIKANAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '25', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENGOLAHAN DAN PEMASARAN HASIL PERIKANAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '26', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENINGKATAN DAYA TARIK DESTINASI PARIWISATA'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '26', 'program_kode' => '3', 'program_nama' => 'PROGRAM PEMASARAN PARIWISATA'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '26', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGEMBANGAN EKONOMI KREATIF MELALUI PEMANFAATAN DAN PERLINDUNGAN HAK KEKAYAAN INTELEKTUAL'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '26', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGEMBANGAN SUMBER DAYA PARIWISATA DAN EKONOMI KREATIF'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENYEDIAAN DAN PENGEMBANGAN SARANA PERTANIAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENYEDIAAN DAN PENGEMBANGAN PRASARANA PERTANIAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGENDALIAN KESEHATAN HEWAN DAN KESEHATAN MASYARAKAT VETERINER'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGENDALIAN DAN PENANGGULANGAN BENCANA PERTANIAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'program_kode' => '6', 'program_nama' => 'PROGRAM PERIZINAN USAHA PERTANIAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '27', 'program_kode' => '7', 'program_nama' => 'PROGRAM PENYULUHAN PERTANIAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '28', 'program_kode' => '4', 'program_nama' => 'PROGRAM KONSERVASI SUMBER DAYA ALAM HAYATI DAN EKOSISTEMNYA'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '29', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGELOLAAN ENERGI BARU TERBARUKAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'program_kode' => '2', 'program_nama' => 'PROGRAM PERIZINAN DAN PENDAFTARAN PERUSAHAAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENINGKATAN SARANA DISTRIBUSI PERDAGANGAN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'program_kode' => '4', 'program_nama' => 'PROGRAM STABILISASI HARGA BARANG KEBUTUHAN POKOK DAN BARANG PENTING'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENGEMBANGAN EKSPOR'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'program_kode' => '6', 'program_nama' => 'PROGRAM STANDARDISASI DAN PERLINDUNGAN KONSUMEN'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '30', 'program_kode' => '7', 'program_nama' => 'PROGRAM PENGGUNAAN DAN PEMASARAN PRODUK DALAM NEGERI'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '31', 'program_kode' => '2', 'program_nama' => 'PROGRAM PERENCANAAN DAN PEMBANGUNAN INDUSTRI'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '31', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGENDALIAN IZIN USAHA INDUSTRI KABUPATEN/KOTA'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '31', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGELOLAAN SISTEM INFORMASI INDUSTRI NASIONAL'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '32', 'program_kode' => '2', 'program_nama' => 'PROGRAM PERENCANAAN KAWASAN TRANSMIGRASI'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '32', 'program_kode' => '3', 'program_nama' => 'PROGRAM PEMBANGUNAN KAWASAN TRANSMIGRASI'],
['permen_ver' => 1, 'urusan_kode' => '3', 'bidang_kode' => '32', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGEMBANGAN KAWASAN TRANSMIGRASI'],
['permen_ver' => 1, 'urusan_kode' => '4', 'bidang_kode' => '1', 'program_kode' => '2', 'program_nama' => 'PROGRAM PEMERINTAHAN DAN KESEJAHTERAAN RAKYAT'],
['permen_ver' => 1, 'urusan_kode' => '4', 'bidang_kode' => '1', 'program_kode' => '3', 'program_nama' => 'PROGRAM PEREKONOMIAN DAN PEMBANGUNAN'],
['permen_ver' => 1, 'urusan_kode' => '4', 'bidang_kode' => '2', 'program_kode' => '2', 'program_nama' => 'PROGRAM DUKUNGAN PELAKSANAAN TUGAS DAN FUNGSI DPRD'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '1', 'program_kode' => '2', 'program_nama' => 'PROGRAM PERENCANAAN, PENGENDALIAN DAN EVALUASI PEMBANGUNAN DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '1', 'program_kode' => '3', 'program_nama' => 'PROGRAM KOORDINASI DAN SINKRONISASI PERENCANAAN PEMBANGUNAN DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '2', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN KEUANGAN DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '2', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENGELOLAAN BARANG MILIK DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '2', 'program_kode' => '4', 'program_nama' => 'PROGRAM PENGELOLAAN PENDAPATAN DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '3', 'program_kode' => '2', 'program_nama' => 'PROGRAM KEPEGAWAIAN DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '4', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGEMBANGAN SUMBER DAYA MANUSIA'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '5', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENELITIAN DAN PENGEMBANGAN DAERAH'],
['permen_ver' => 1, 'urusan_kode' => '5', 'bidang_kode' => '6', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGELOLAAN PERBATASAN'],
['permen_ver' => 1, 'urusan_kode' => '6', 'bidang_kode' => '1', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENYELENGGARAAN PENGAWASAN'],
['permen_ver' => 1, 'urusan_kode' => '6', 'bidang_kode' => '1', 'program_kode' => '3', 'program_nama' => 'PROGRAM PERUMUSAN KEBIJAKAN, PENDAMPINGAN DAN ASISTENSI'],
['permen_ver' => 1, 'urusan_kode' => '7', 'bidang_kode' => '1', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENYELENGGARAAN PEMERINTAHAN DAN PELAYANAN PUBLIK'],
['permen_ver' => 1, 'urusan_kode' => '7', 'bidang_kode' => '1', 'program_kode' => '3', 'program_nama' => 'PROGRAM PEMBERDAYAAN MASYARAKAT DESA DAN KELURAHAN'],
['permen_ver' => 1, 'urusan_kode' => '7', 'bidang_kode' => '1', 'program_kode' => '4', 'program_nama' => 'PROGRAM KOORDINASI KETENTRAMAN DAN KETERTIBAN UMUM'],
['permen_ver' => 1, 'urusan_kode' => '7', 'bidang_kode' => '1', 'program_kode' => '5', 'program_nama' => 'PROGRAM PENYELENGGARAAN URUSAN PEMERINTAHAN UMUM'],
['permen_ver' => 1, 'urusan_kode' => '7', 'bidang_kode' => '1', 'program_kode' => '6', 'program_nama' => 'PROGRAM PEMBINAAN DAN PENGAWASAN PEMERINTAHAN DESA'],
['permen_ver' => 1, 'urusan_kode' => '8', 'bidang_kode' => '1', 'program_kode' => '2', 'program_nama' => 'PROGRAM PENGUATAN IDEOLOGI PANCASILA DAN KARAKTER KEBANGSAAN'],
['permen_ver' => 1, 'urusan_kode' => '8', 'bidang_kode' => '1', 'program_kode' => '3', 'program_nama' => 'PROGRAM PENINGKATAN PERAN PARTAI POLITIK DAN LEMBAGA PENDIDIKAN MELALUI PENDIDIKAN POLITIK DAN PENGEMBANGAN ETIKA SERTA BUDAYA POLITIK'],
['permen_ver' => 1, 'urusan_kode' => '8', 'bidang_kode' => '1', 'program_kode' => '4', 'program_nama' => 'PROGRAM PEMBERDAYAAN DAN PENGAWASAN ORGANISASI KEMASYARAKATAN'],
['permen_ver' => 1, 'urusan_kode' => '8', 'bidang_kode' => '1', 'program_kode' => '5', 'program_nama' => 'PROGRAM PEMBINAAN DAN PENGEMBANGAN KETAHANAN EKONOMI, SOSIAL, DAN BUDAYA'],
['permen_ver' => 1, 'urusan_kode' => '8', 'bidang_kode' => '1', 'program_kode' => '6', 'program_nama' => 'PROGRAM PENINGKATAN KEWASPADAAN NASIONAL DAN PENINGKATAN KUALITAS DAN FASILITASI PENANGANAN KONFLIK SOSIAL'],

				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_program');
    }
}
