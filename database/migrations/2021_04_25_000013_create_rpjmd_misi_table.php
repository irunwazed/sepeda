<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdMisiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd_misi', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_visi_id')->unsigned(); 
					$table->text('rpjmd_misi_nama'); 
					$table->timestamps();
					$table->foreign('rpjmd_visi_id')->references('id')->on('ref_rpjmd_visi')->onDelete('cascade')->onUpdate('cascade');

        });
				DB::table('ref_rpjmd_misi')->insert([
					['rpjmd_visi_id' => 1, 'rpjmd_misi_nama' => 'MENCIPTAKAN PEMERINTAHAN YANG BAIK DAN BERSIH MELALUI PENINGKATAN KAPABILITAS, PROFESIONALITAS DAN KESEJAHTERAAN APARATUR PEMERINTAH DAERAH BERDASARKAN NILAI-NILAI  KEBENARAN DAN KEADILAN'],
					['rpjmd_visi_id' => 1, 'rpjmd_misi_nama' => 'MENINGKATKAN PENGELOLAAN SUMBERDAYA ALAM (SDA), PENGEMBANGAN UMKM, IKM, KOPERASI DAN BUMDES UNTUK MENCAPAI KESAJAHTERAAN BERSAMA'],
					['rpjmd_visi_id' => 1, 'rpjmd_misi_nama' => 'MEWUJUDKAN PELAYANAN PENDIDIKAN DAN KESEHATAN YANG BERKUALITAS MELALUI PEMBIAYAAN GRATIS, BERLANDASKAN KEHIDUPAN MASYARAKAT YANG BERIMAN DAN BERTAQWA, SEHINGGA TERCIPTA KERUKUNAN HIDUP ANTAR UMAT BERAGAMA.'],
					['rpjmd_visi_id' => 1, 'rpjmd_misi_nama' => 'MENINGKATKAN KUALITAS HIDUP MASYARAKAT MELALUI PENINGKATAN INFRASTRUKTUR DAERAH, SEHINGGA MENGURANGI KESENJANGAN WILAYAH DAN TERCIPTANYA KEHIDUPAN MASYARAKAT YANG HARMONS DAN BAHAGIA'],
					['rpjmd_visi_id' => 1, 'rpjmd_misi_nama' => 'MEWUJUDKAN LINGKUNGAN HIDUP BERKELANJUTAN, DAN MENINGKATKAN KETAHANAN MASYARAKAT MENGHADAPI PERUBAHAN IKLIM DAN BENCANA'],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd_visi');
    }
}
