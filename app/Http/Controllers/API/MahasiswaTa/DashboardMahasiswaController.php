<?php

namespace App\Http\Controllers\API\MahasiswaTa;

use App\Http\Controllers\Controller;
use App\Models\Bimbingan;
use App\Models\mahasiswa;
use App\Models\Ta;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class DashboardMahasiswaController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id);
        $mahasiswa = Bimbingan::Mahasiswa($id);
        
        return response()->json([
            'success' => true,
            'data' => [
                'mahasiswa' => $mahasiswa,
                'dataTa' => $dataTa
            ]
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'judul_ta' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $id = Auth::user()->id;
        $nim = Bimbingan::Mahasiswa($id)->mhs_nim;
        $dataTa = Ta::dataTa($id);
        $thnAkademik = DB::table('master_ta')->select('ta')->where('status', 1)->value('ta');

        try {
            if (!isset($dataTa)) {
                // Buat satu entri TA
                $insert = new Ta();
                $insert->mhs_nim = $nim;
                $insert->ta_judul = $request->judul_ta;
                $insert->tahun_akademik = $thnAkademik;
                $insert->save();

                $ta_id = $insert->ta_id;

                // Tambahkan mhs_nim utama ke tas_mahasiswa
                DB::table('tas_mahasiswa')->insert([
                    "ta_id" => $ta_id,
                    "mhs_nim" => $nim
                ]);

                // Jika tim-id diisi, tambahkan mhs_nim tim ke tas_mahasiswa
                if ($request->post('tim-id')) {
                    $timId = $request->post('tim-id');

                    // Pastikan tim-id tidak duplikat di tas_mahasiswa
                    $existingEntry = DB::table('tas_mahasiswa')
                        ->where('mhs_nim', $timId)
                        ->where('ta_id', $ta_id)
                        ->exists();

                    if (!$existingEntry) {
                        DB::table('tas_mahasiswa')->insert([
                            "ta_id" => $ta_id,
                            "mhs_nim" => $timId
                        ]);
                    }

                    // Buat entri baru di tabel Ta untuk tim-id
                    $teamInsert = new Ta();
                    $teamInsert->mhs_nim = $timId;
                    $teamInsert->ta_judul = $request->judul_ta;
                    $teamInsert->tahun_akademik = $thnAkademik;
                    $teamInsert->save();
                }

                return response()->json([
                    'success' => true,
                    'message' => 'Judul Tugas Akhir berhasil disimpan'
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Judul Tugas Akhir sudah ada'
                ], 400);
            }
        } catch (\Throwable $th) {
            return response()->json([
                'success' => false,
                'message' => 'Terdapat masalah di server',
                'error' => $th->getMessage()
            ], 500);
        }
    }


    public function autocomplete()
    {
        $term = request()->get("term");
        $results = mahasiswa::where("mhs_nama", 'like', "%" . $term . "%")->get();

        $temp = [];
        foreach ($results as $row) {
            $temp[] = [
                "id" => $row->mhs_nim,
                "value" => $row->mhs_nama,
            ];
        }

        return response()->json([
            'success' => true,
            'data' => $temp
        ]);
    }
}
