<?php

namespace App\Imports;

// use App\rkpd;
use Maatwebsite\Excel\Concerns\ToModel;
use DB;

class RKPDPaguImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */


    private $urusan_kode, $bidang_kode, $program_kode, $kegiatan_kode, $sub_kegiatan_kode, $data, $opd, $sumber_data, $lokasi;
    private $pagu, $paguPerubahan;
		public function __construct($pagu = false, $paguPerubahan = false)
    {
        $this->data = [];
				$this->pagu = $pagu;
				$this->paguPerubahan = $paguPerubahan;
    }



    public function model(array $row)
    {
			$pagu = (float)$row[2];

			$this->opd = session('opd');
			$kode = explode(' ', $row[1]);
			$kode = explode('.', $kode[0]);

			if(count($kode) == 6){

				$this->urusan_kode = $kode[0];
				$this->bidang_kode = (int)$kode[1];
				$this->program_kode = (int)$kode[2];
				$this->kegiatan_kode = (int)($kode[3].$kode[4]);
				$this->sub_kegiatan_kode = (int)$kode[5];

				if($this->program_kode == 1){
					$this->urusan_kode = 0;
					$this->bidang_kode = 0;
				}

				$dataSub = [
					'tahun_ke' => session('tahun'),
					'opd_id' => @$this->opd,
					'permen_ver' => 1,
					'urusan_kode' => @$this->urusan_kode,
					'bidang_kode' => @$this->bidang_kode,
					'program_kode' => @$this->program_kode,
					'kegiatan_kode' => @$this->kegiatan_kode,
					'sub_kegiatan_kode' => @$this->sub_kegiatan_kode,
				];
	
				$subId = DB::table('ref_rkpd_sub_kegiatan')->where($dataSub)->first();
				if(@$subId->id){
						$subId = $subId->id;
						$data = [];
						if($this->pagu){
							$data['sub_kegiatan_pagu'] = $pagu;
							$data['sub_kegiatan_pagu_perubahan'] = 0;
						}
						if($this->paguPerubahan){
							$data['sub_kegiatan_pagu_perubahan'] = $pagu;
						}
						if(count($data) > 0){
							DB::table('ref_rkpd_sub_kegiatan')->where($dataSub)->update($data);
						}
	
				}else{

					$dataSub = [];
					if($this->pagu){
						$dataSub['sub_kegiatan_pagu'] = $pagu;
						$dataSub['sub_kegiatan_pagu_perubahan'] = 0;
					}
					if($this->paguPerubahan){
						$dataSub['sub_kegiatan_pagu_perubahan'] = $pagu;
					}

					if(count($dataSub) > 0){
						$subId = DB::table('ref_rkpd_sub_kegiatan')->insertGetId($dataSub);
					}
				}
	
				// echo "<pre>";
				// print_r($this->pagu);
				// echo "</pre>";
			}


    }
}
