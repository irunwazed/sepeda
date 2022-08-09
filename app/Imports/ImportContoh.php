<?php

namespace App\Imports;

// use App\rkpd;
use Maatwebsite\Excel\Concerns\ToModel;
use DB;

class ImportContoh implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */


    private $no, $urusan_kode, $bidang_kode, $program_kode, $kegiatan_kode, $opd_id, $uraian, $indikator, $level;
    public function __construct()
    {
        $this->data = [];
    }



    public function model(array $row)
    {


			echo "<pre>";

                
        
        $data = [];
        $where = [];


        if(
            !($row[0] == ''
            && $row[1] == ''
            && $row[2] == ''
            && $row[3] == ''
            && $row[4] == ''
            && $row[5] == '') && $row[4] != '' && $row[2] != ''
        ){

            //program kegiatan
            if($row[2] != ''){
                $kode = explode(".", $row[2]);
                $this->urusan_kode = (int)$kode[0];
                $this->bidang_kode = (int)@$kode[1];
                $this->program_kode = (int)@$kode[2];
                $this->uraian = $row[3];
                $this->indikator = @$row[4];
                $this->opd_id = @$row[19];
                
                $data['urusan_kode'] = $this->urusan_kode;
                $data['bidang_kode'] = $this->bidang_kode;
                $data['program_kode'] = $this->program_kode;
                $data['opd_id'] = $this->opd_id;
                $where = $data;

								$dataRPJMD = DB::table('ref_rpjmd_program')->where($where)->get();

								if(count($dataRPJMD) > 0){
									if(count($kode) == 3){
                    //program
                    $data['level'] = 3;


										$exp = explode(" ", @$row[5]);
										$satuan = @$exp[1];
										$target[0] = @$exp[0]?$exp[0]:0;

										$exp = explode(" ", @$row[6]);
										$target[1] = @$exp[0]?(double)$exp[0]:0;
										$exp = explode(" ", @$row[8]);
										$target[2] = @$exp[0]?(double)$exp[0]:0;
										$exp = explode(" ", @$row[10]);
										$target[3] = @$exp[0]?(double)$exp[0]:0;
										$exp = explode(" ", @$row[12]);
										$target[4] = @$exp[0]?(double)$exp[0]:0;
										$exp = explode(" ", @$row[14]);
										$target[5] = @$exp[0]?(double)$exp[0]:0;
										$exp = explode(" ", @$row[16]);
										$target[6] = @$exp[0]?(double)$exp[0]:0;

											$data = [
												'rpjmd_program_id' => @$dataRPJMD[0]->id,
												'rpjmd_program_indikator_nama' => $this->indikator,
												'rpjmd_program_indikator_nilai_jenis' => 1,
												'rpjmd_program_indikator_nilai_json' => @$row[20],
												'rpjmd_program_indikator_satuan' => $satuan,
												'rpjmd_program_indikator_th0_realisasi_target' => $target[0],
												'rpjmd_program_indikator_th1_capaian_target' => $target[1],
												'rpjmd_program_indikator_th1_capaian_pagu' => $row[7],
												'rpjmd_program_indikator_th2_capaian_target' => $target[2],
												'rpjmd_program_indikator_th2_capaian_pagu' => $row[9],
												'rpjmd_program_indikator_th3_capaian_target' => $target[3],
												'rpjmd_program_indikator_th3_capaian_pagu' => $row[11],
												'rpjmd_program_indikator_th4_capaian_target' => $target[4],
												'rpjmd_program_indikator_th4_capaian_pagu' => $row[13],
												'rpjmd_program_indikator_th5_capaian_target' => $target[5],
												'rpjmd_program_indikator_th5_capaian_pagu' => $row[15],
												'rpjmd_program_indikator_th6_capaian_target' => $target[6],
												'rpjmd_program_indikator_th6_capaian_pagu' => $row[17],

											];

											$kegiatanId = DB::table('ta_rpjmd_program_indikator')->insertGetId($data);

                    
                	}else if(count($kode) == 5){
                    // kegiatan
                    $this->kegiatan_kode = (int)($kode[3].$kode[4]);

										$kegiatanId = DB::table('ref_renstra_kegiatan')->where([
											'rpjmd_program_id' => $dataRPJMD[0]->id,
											'permen_ver' => 1,
											'urusan_kode' => $this->urusan_kode,
											'bidang_kode' => $this->bidang_kode,
											'program_kode' => $this->program_kode,
											'kegiatan_kode' => $this->kegiatan_kode,
										])->first();
										if(!@$kegiatanId->id){

											$kegiatanId = DB::table('ref_renstra_kegiatan')->insertGetId([
												'rpjmd_program_id' => $dataRPJMD[0]->id,
												'permen_ver' => 1,
												'urusan_kode' => $this->urusan_kode,
												'bidang_kode' => $this->bidang_kode,
												'program_kode' => $this->program_kode,
												'kegiatan_kode' => $this->kegiatan_kode,
											]);
										}else{
											$kegiatanId = $kegiatanId->id;
										}
										if($this->indikator != ''){

											$target[0] = explode(" ", $row[16]);

											$exp = explode(" ", @$row[5]);
											$satuan = @$exp[1];
											$target[0] = @$exp[0]?$exp[0]:0;

											$exp = explode(" ", @$row[6]);
											$target[1] = @$exp[0]?(double)$exp[0]:0;
											$exp = explode(" ", @$row[8]);
											$target[2] = @$exp[0]?(double)$exp[0]:0;
											$exp = explode(" ", @$row[10]);
											$target[3] = @$exp[0]?(double)$exp[0]:0;
											$exp = explode(" ", @$row[12]);
											$target[4] = @$exp[0]?(double)$exp[0]:0;
											$exp = explode(" ", @$row[14]);
											$target[5] = @$exp[0]?(double)$exp[0]:0;
											$exp = explode(" ", @$row[16]);
											$target[6] = @$exp[0]?(double)$exp[0]:0;

											$data = [
												'renstra_kegiatan_id' => @$kegiatanId,
												'renstra_kegiatan_indikator_nama' => $this->indikator,
												'renstra_kegiatan_indikator_nilai_jenis' => 1,
												'renstra_kegiatan_indikator_nilai_json' => '[]',
												'renstra_kegiatan_indikator_satuan' => $satuan,
												'renstra_kegiatan_indikator_th0_realisasi_target' => $target[0],
												'renstra_kegiatan_indikator_th0_capaian_target' => $target[0],
												'renstra_kegiatan_indikator_th1_capaian_target' => $target[1],
												'renstra_kegiatan_indikator_th1_capaian_pagu' => $row[7],
												'renstra_kegiatan_indikator_th2_capaian_target' => $target[2],
												'renstra_kegiatan_indikator_th2_capaian_pagu' => $row[9],
												'renstra_kegiatan_indikator_th3_capaian_target' => $target[3],
												'renstra_kegiatan_indikator_th3_capaian_pagu' => $row[11],
												'renstra_kegiatan_indikator_th4_capaian_target' => $target[4],
												'renstra_kegiatan_indikator_th4_capaian_pagu' => $row[13],
												'renstra_kegiatan_indikator_th5_capaian_target' => $target[5],
												'renstra_kegiatan_indikator_th5_capaian_pagu' => $row[15],
												'renstra_kegiatan_indikator_th6_capaian_target' => $target[6],
												'renstra_kegiatan_indikator_th6_capaian_pagu' => $row[17],

											];

											// print_r($data);
											$kegiatanId = DB::table('ta_renstra_kegiatan_indikator')->insertGetId($data);
										}
                    // $data['level'] = 4;
                	}
								}else{

									// $OPD = DB::table('ref_opd')->where('id', $this->opd_id)->first();
									// 	echo "<table>";
									// 	echo "<tr>";
									// 	echo "<td>".$row[2]."</td>";
									// 	echo "<td>".$row[3]."</td>";
									// 	echo "<td>".$row[4]."</td>";
									// 	echo "<td>".@$OPD->opd_nama."</td>";
									// 	echo "</tr>";
									// 	echo "</table>";
								}


                
                // $data['uraian'] = $row[3];
                // $data['indikator'] = $row[4];
                
                
    

                // ->where('ref_rpjmd_program.urusan_kode', $this->urusan_kode)
                // ->where('ref_rpjmd_program.bidang_kode', $this->bidang_kode)
                // ->where('ref_rpjmd_program.program_kode', $this->program_kode)
                // ->where('ref_rpjmd_program.opd_id', $this->opd_id)
            }

        }

				echo "</pre>";

    }
}