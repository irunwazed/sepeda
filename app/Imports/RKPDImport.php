<?php

namespace App\Imports;

// use App\rkpd;
use Maatwebsite\Excel\Concerns\ToModel;
use DB;

class RKPDImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */


    private $urusan_kode, $bidang_kode, $program_kode, $kegiatan_kode, $sub_kegiatan_kode, $data, $opd, $sumber_data, $lokasi;
    public function __construct()
    {
        $this->data = [];
    }



    public function model(array $row)
    {

        $simpan = false;
        if (
            is_numeric($row[0])
            && is_numeric($row[1])
            && is_numeric($row[2])
            && is_numeric($row[3])
            && is_numeric($row[4])
        ) {
            $this->urusan_kode = $row[0];
            $this->bidang_kode = $row[1];
            $this->program_kode = $row[2];
            $this->kegiatan_kode = @$row[3][0] . @$row[3][2] . @$row[3][3];
            $this->sub_kegiatan_kode = $row[4];

            if($this->program_kode == 1){
                $this->urusan_kode = 0;
                $this->bidang_kode = 0;
            }
            
            $this->lokasi = (string)$row[9];
            $this->sumber_data = (string)$row[10];
            $this->opd = (int)$row[11];

            if (
                is_numeric($this->urusan_kode)
                && is_numeric($this->bidang_kode)
                && is_numeric($this->program_kode)
                && is_numeric($this->kegiatan_kode)
                && is_numeric($this->sub_kegiatan_kode)
                && $row[6] != ''
            ) {

                $simpan = true;

            }
        } else if (
            $row[0] == ''
            && $row[6] != ''
            && is_numeric(@$this->urusan_kode)
        ) {

            $simpan = true;
        }

        if ($simpan) {

            $volume = str_replace("\xc2\xa0", ' ', $row[7]);
            $volumeArr = explode(" ", $volume);
            $target = (int)@$volumeArr[0];
            array_shift($volumeArr);
            $satuan = implode(" ", $volumeArr);

            $dataSub = [
                'tahun_ke' => session('tahun'),
                'opd_id' => session('opd'), //$this->opd,
                'permen_ver' => 1,
                'urusan_kode' => $this->urusan_kode,
                'bidang_kode' => $this->bidang_kode,
                'program_kode' => $this->program_kode,
                'kegiatan_kode' => $this->kegiatan_kode,
                'sub_kegiatan_kode' => $this->sub_kegiatan_kode,
            ];

            $subId = DB::table('ref_rkpd_sub_kegiatan')->where($dataSub)->first();
            if(@$subId->id){
                $subId = $subId->id;
            }else{
                $subId = DB::table('ref_rkpd_sub_kegiatan')->insertGetId($dataSub);
            }

            $dataIndi = [
                'rkpd_sub_kegiatan_id' => $subId,
                'rkpd_sub_kegiatan_indikator_nama' => (string)$row[6],
                'rkpd_sub_kegiatan_indikator_nilai_jenis' => 1,
                'rkpd_sub_kegiatan_indikator_nilai_json' => '[]',
                'rkpd_sub_kegiatan_indikator_target' => $target,
                'rkpd_sub_kegiatan_indikator_satuan' => $satuan,
                'rkpd_sub_kegiatan_indikator_pagu' => (float)$row[8],
                'rkpd_sub_kegiatan_indikator_pagu_perubahan' => (float)$row[8],
                'rkpd_sub_kegiatan_indikator_lokasi' => $this->lokasi,
            ];
            $status = DB::table('ref_rkpd_sub_kegiatan_indikator')->insert($dataIndi);

            // echo "<pre>";
            // print_r([
            //     'urusan_kode' => $this->urusan_kode,
            //     'bidang_kode' => $this->bidang_kode,
            //     'program_kode' => $this->program_kode,
            //     'kegiatan_kode' => $this->kegiatan_kode,
            //     'sub_kegiatan_kode' => $this->sub_kegiatan_kode,
            //     'uraian' => $row[5],
            //     'indikator' => $row[6],
            //     'target' => @$target,
            //     'satuan' => @$satuan,
            //     'pagu' => (float)@$row[8],
            //     'lokasi' => $this->lokasi,
            //     'sumber_data' => $this->sumber_data,
            //     'opd' => $this->opd,
            //     'tahun' => session('tahun'),
            // ]);
            // // print_r($row);
            // echo "</pre>";
        }

        

        // return $status;


        // return new rkpd([
        //     'urusan_kode' => $row[1],
        //     'bidang_kode' => $row[2],
        //     'program_kode' => $row[3],
        // ]);
    }
}
