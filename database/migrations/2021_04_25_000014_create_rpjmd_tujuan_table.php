<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class CreateRpjmdTujuanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ref_rpjmd_tujuan', function (Blueprint $table) {
					$table->id();
					$table->bigInteger('rpjmd_misi_id')->unsigned(); 
					$table->text('rpjmd_tujuan_nama'); 
					$table->timestamps();

					$table->foreign('rpjmd_misi_id')->references('id')->on('ref_rpjmd_misi')->onDelete('cascade')->onUpdate('cascade');
        });

				DB::table('ref_rpjmd_tujuan')->insert([
					['rpjmd_misi_id' => 1, 'rpjmd_tujuan_nama' => 'Menciptakan pemerintahan yang baik dan bersih'],
					['rpjmd_misi_id' => 2, 'rpjmd_tujuan_nama' => 'Meningkatkan skala ekonomi Daerah untuk Kesejahteraan bersama'],
					['rpjmd_misi_id' => 3, 'rpjmd_tujuan_nama' => 'Meningkatkan Daya Saing Sumberdaya Manusia (SDM)'],
					['rpjmd_misi_id' => 4, 'rpjmd_tujuan_nama' => 'Meningkatkan kualitas infrastruktur dasar'],
					['rpjmd_misi_id' => 5, 'rpjmd_tujuan_nama' => 'Meningkatkan Daya Dukung dan Daya Tampung Lingkungan Hidup (DDDTLH) dan berkurangnya Resiko Bencana'],
				]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ref_rpjmd_tujuan');
    }
}
