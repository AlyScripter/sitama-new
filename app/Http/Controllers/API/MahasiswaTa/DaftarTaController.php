<?php

namespace App\Http\Controllers\API\MahasiswaTa;

use App\Http\Controllers\Controller;
use App\Models\Bimbingan;
use App\Models\BimbinganLog;
use App\Models\DokumenSyaratTa;
use App\Models\JadwalSidang;
use App\Models\SyaratTa;
use App\Models\Ta;
use App\Models\TaSidang;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

// Mahasiswa
class DaftarTaController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id);

        $dosenNip = Bimbingan::Mahasiswa($id)->dosen_nip;
        $dosenNama = Bimbingan::Mahasiswa($id)->dosen_nama;
        $bimbinganId = Bimbingan::Mahasiswa($id)->bimbingan_id;

        if (!isset($dataTa)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Isikan Judul Proposal Terlebih Dahulu'
            ], 400);
        } elseif (!isset($dosenNama, $dosenNip, $bimbinganId)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Anda Belum Mendapatkan Dosen Pembimbing'
            ], 400);
        }

        $mahasiswa = Bimbingan::Mahasiswa($id);
        $dokumenSyaratTa = SyaratTa::dokumenSyaratTa($id);

        Carbon::setLocale('id');
        $jadwal = JadwalSidang::DaftarTa()->get()->sortBy('jadwal_id');
        foreach ($jadwal as $jd) {
            $temp_tgl = $jd->tgl_sidang;
            $jd->tgl_sidang = Carbon::parse($temp_tgl)->translatedFormat('l, j F Y');
            $jd->hari_sidang = Carbon::parse($temp_tgl)->translatedFormat('l');
        }

        $jadwalAda = DB::table('ta_sidang')->pluck('jadwal_id')->toArray();

        $BimbinganLog = BimbinganLog::BimbinganLog($id);
        $jumlahBimbingan1 = $BimbinganLog->where('urutan', 1)->where('bimb_status', 1)->count();
        $jumlahBimbingan2 = $BimbinganLog->where('urutan', 2)->where('bimb_status', 1)->count();

        $masterJumlah = DB::table('bimbingan_counts')->value('bimbingan_counts.total_bimbingan');

        $memenuhiBimbingan = $jumlahBimbingan1 >= $masterJumlah && $jumlahBimbingan2 >= $masterJumlah;

        $memenuhiSyarat = $dokumenSyaratTa->every(function ($item) {
            return $item->dokumen_file != null && $item->verified == 1;
        });

        $taSidang = TaSidang::where('ta_id', $dataTa->ta_id)->first();
        $verifikasiPembimbing = collect($mahasiswa->dosen)->every(function ($item) {
            return $item['verified'] == 1;
        });

        // GET DATA PARTNER
        $partner = DB::selectOne("SELECT
                    TAM1.mhs_nim,
                    tas.ta_id
                FROM
                    `tas_mahasiswa` TAM
                JOIN tas_mahasiswa TAM1 ON
                    TAM.ta_id = TAM1.ta_id AND TAM.mhs_nim <> TAM1.mhs_nim
                JOIN tas ON 
                    TAM1.mhs_nim = tas.mhs_nim
                WHERE
                    TAM.mhs_nim = '" . $mahasiswa->mhs_nim . "';");

        $partner_valid = isset($partner->mhs_nim) ? $this->is_mhs_eligible_sidang($partner->mhs_nim) : NULL;

        // Prepare the final response
        $response = [
            'status' => 'success',
            'BimbinganLog' => $BimbinganLog,
            'jadwal' => $jadwal,
            'jadwalAda' => $jadwalAda,
            'dokumenSyaratTa' => $dokumenSyaratTa,
            'memenuhiSyarat' => $memenuhiSyarat,
            'memenuhiBimbingan' => $memenuhiBimbingan,
            'taSidang' => $taSidang,
            'masterJumlah' => $masterJumlah,
            'mahasiswa' => $mahasiswa,
            'verifikasiPembimbing' => $verifikasiPembimbing,
            'partner' => $partner,
            'partner_valid' => $partner_valid,
        ];

        return response()->json($response, 200);
    }

    
    public function is_mhs_eligible_sidang($mhs_nim)
    {
        $setting_bimbingan = DB::selectOne("SELECT * FROM bimbingan_counts");

        $pembimbingan = DB::select("SELECT * FROM v_dosen_aktifitas_bimbingan WHERE mhs_nim = '" . $mhs_nim . "';");

        $is_valid = 1;
        foreach ($pembimbingan as $row) {
            if ($row->jml_aktivitas_pembimbingan_valid < $setting_bimbingan->total_bimbingan) {
                $is_valid = 0;
            }
            if ($row->verified != '1') {
                $is_valid = 0;
            }
        }

        $dokumen_lengkap_valid = DB::select("SELECT 
            DST.dokumen_id, 
            DST.dokumen_syarat,
            IF(SS.syarat_sidang_id IS NOT NULL,1,0) sudah_upload,
            SS.verified
        FROM `dokumen_syarat_ta` DST 
            LEFT JOIN syarat_sidang SS 
                ON DST.dokumen_id = SS.dokumen_id 
                AND SS.ta_id = (SELECT ta_id FROM tas WHERE mhs_nim = " . $mhs_nim . ") WHERE DST.is_active = 1;");

        foreach ($dokumen_lengkap_valid as $row) {
            if ($row->sudah_upload == 0) {
                $is_valid = 0;
            }
            if ($row->verified != 1) {
                $is_valid = 0;
            }
        }

        return $is_valid;
    }

    public function uploadSingle(Request $request)
    {
        $id = Auth::user()->id;
        $taId = Bimbingan::Mahasiswa($id)->ta_id;

        $validator = Validator::make($request->all(), [
            'draft_syarat' => 'required|mimetypes:application/pdf|max:2048000',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal mengupload, periksa kembali data anda',
                'errors' => $validator->errors()
            ], 422);
        }

        $dokumen = DokumenSyaratTa::where('dokumen_id', $request->post('dokumen_id'))->first();

        if (!$dokumen) {
            return response()->json([
                'status' => 'error',
                'message' => 'Dokumen tidak ditemukan'
            ], 404);
        }

        $syaratTa = SyaratTa::where('dokumen_id', $request->post('dokumen_id'))
            ->where('ta_id', $taId)
            ->first();

        if ($syaratTa) {
            $fileLama = public_path('storage/syarat_ta/' . $syaratTa->dokumen_file);
            if (file_exists($fileLama) && !empty($syaratTa->dokumen_file)) {
                unlink($fileLama);
            }
        }

        try {
            $draftSyarat = $request->file('draft_syarat');
            $namaFile = date('Ymdhis') . '.' . $draftSyarat->getClientOriginalExtension();
            $draftSyarat->storeAs('public/syarat_ta', $namaFile);

            SyaratTa::updateOrCreate(
                ['dokumen_id' => $request->post('dokumen_id'), 'ta_id' => $taId],
                [
                    'dokumen_file_original' => $draftSyarat->getClientOriginalName(),
                    'dokumen_file' => $namaFile,
                    'verified' => 0
                ]
            );

            return response()->json([
                'status' => 'success',
                'message' => $dokumen->dokumen_syarat . ' berhasil terupload',
                'data' => [
                    'dokumen_id' => $request->post('dokumen_id'),
                    'file_name' => $namaFile,
                    'original_name' => $draftSyarat->getClientOriginalName()
                ]
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server: ' . $th->getMessage()
            ], 500);
        }
    }


    public function upload($id)
    {
        $idUser = Auth::user()->id;

        // Mengambil dokumen syarat TA berdasarkan user ID dan dokumen ID
        $dokumenSyaratTa = SyaratTa::dokumenSyaratTa($idUser)->where('dokumen_id', $id)->first();

        if (!$dokumenSyaratTa) {
            return response()->json([
                'status' => 'error',
                'message' => 'Dokumen tidak ditemukan'
            ], 404);
        }

        // Cek status verifikasi dokumen
        if ($dokumenSyaratTa->verified == 1) {
            return response()->json([
                'status' => 'warning',
                'message' => 'Syarat sudah diverifikasi'
            ], 200);
        }

        // Mengembalikan data dokumen jika belum diverifikasi
        return response()->json([
            'status' => 'success',
            'message' => 'Data dokumen ditemukan',
            'data' => [
                'dokumen_id' => $dokumenSyaratTa->dokumen_id,
                'dokumen_file_original' => $dokumenSyaratTa->dokumen_file_original,
                'verified' => $dokumenSyaratTa->verified
            ]
        ], 200);
    }

    public function show($id)
    {
        $idUser = Auth::user()->id;
        $dokumenSyaratTa = SyaratTa::dokumenSyaratTa($idUser)->where('dokumen_id', $id)->first();
        
        // Check if the document exists
        if (!$dokumenSyaratTa) {
            return response()->json([
                'status' => 'error',
                'message' => 'Document not found'
            ], 404);
        }
        
        $filePath = public_path('storage/syarat_ta/' . $dokumenSyaratTa->dokumen_file); // Adjust this path as needed
        // dd($filePath);

        // Check if the file exists
        if (!file_exists($filePath)) {
            return response()->json([
                'status' => 'error',
                'message' => 'File not found'
            ], 404);
        }

        // Return the file as a download response
        return response()->download($filePath, $dokumenSyaratTa->dokumen_file_original);
    }

    public function store(Request $request)
    {
        $id = Auth::user()->id;
        $taId = Bimbingan::Mahasiswa($id)->ta_id;

        // Validasi input
        $validator = Validator::make($request->all(), [
            'draft_syarat' => 'required|mimetypes:application/pdf|max:2048',
            'dokumenId' => 'required|integer|exists:dokumen,id'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Validasi gagal',
                'errors' => $validator->errors()
            ], 422);
        }

        // Cek jika dokumen sebelumnya ada dan hapus file lama
        $syaratTa = SyaratTa::where('dokumen_id', $request->dokumenId)
            ->where('ta_id', $taId)
            ->first();

        if ($syaratTa) {
            $fileLama = public_path('storage/syarat_ta/' . $syaratTa->dokumen_file);
            if (file_exists($fileLama) && !empty($syaratTa->dokumen_file)) {
                unlink($fileLama);
            }
        }

        try {
            // Upload file baru
            $draftSyarat = $request->file('draft_syarat');
            $namaFile = date('Ymdhis') . '.' . $draftSyarat->getClientOriginalExtension();
            $draftSyarat->storeAs('public/syarat_ta', $namaFile);

            // Simpan atau update data di database
            $data = SyaratTa::updateOrCreate(
                ['dokumen_id' => $request->dokumenId, 'ta_id' => $taId],
                [
                    'dokumen_file_original' => $draftSyarat->getClientOriginalName(),
                    'dokumen_file' => $namaFile,
                    'verified' => 0
                ]
            );

            // Return respons sukses
            return response()->json([
                'status' => 'success',
                'message' => 'Syarat berhasil terupload',
                'data' => $data
            ], 200);

        } catch (\Throwable $th) {
            // Return respons error jika terjadi masalah
            return response()->json([
                'status' => 'error',
                'message' => 'Terjadi masalah di server',
                'error' => $th->getMessage()
            ], 500);
        }
    }

    public function daftar(Request $request)
    {
        $id = Auth::user()->id;
        $taId = Bimbingan::Mahasiswa($id)->ta_id;

        // Validasi input
        $validator = Validator::make($request->all(), [
            'judulFinal' => 'Required',
            'jadwal' => 'Required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Validasi gagal',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            // Simpan atau perbarui data TA Sidang untuk pengguna
            $dataUser = TaSidang::updateOrCreate(
                ['ta_id' => $taId],
                [
                    'jadwal_id' => $request->jadwal,
                    'judul_final' => $request->judulFinal,
                    'status_lulus' => 0
                ]
            );

            // Cari partner jika ada
            $partner = DB::selectOne("
                SELECT TAM1.mhs_nim, tas.ta_id
                FROM tas_mahasiswa TAM
                JOIN tas_mahasiswa TAM1 ON TAM.ta_id = TAM1.ta_id AND TAM.mhs_nim <> TAM1.mhs_nim
                JOIN tas ON TAM1.mhs_nim = tas.mhs_nim
                WHERE TAM.mhs_nim = ?
            ", [Bimbingan::Mahasiswa($id)->mhs_nim]);

            if ($partner) {
                // Simpan atau perbarui data TA Sidang untuk partner
                $dataPartner = TaSidang::updateOrCreate(
                    ['ta_id' => $partner->ta_id],
                    [
                        'jadwal_id' => $request->jadwal,
                        'judul_final' => $request->judulFinal,
                        'status_lulus' => 0
                    ]
                );
            }

            // Respons sukses
            return response()->json([
                'status' => 'success',
                'message' => 'Berhasil mendaftar sidang',
                'data' => [
                    'user_ta_sidang' => $dataUser,
                    'partner_ta_sidang' => $partner ?? null
                ]
            ], 200);

        } catch (\Throwable $th) {
            // Respons error server
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server',
                'error' => $th->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $syaratTa = SyaratTa::findOrFail($id);

            // Hapus file yang terkait jika ada
            $fileLama = public_path('storage/syarat_ta/' . $syaratTa->dokumen_file);
            if (file_exists($fileLama)) {
                unlink($fileLama);
            }

            // Hapus data di database
            $syaratTa->delete();

            // Respons sukses
            return response()->json([
                'status' => 'success',
                'message' => 'File berhasil dihapus',
                'data' => $syaratTa
            ], 200);
        } catch (\Throwable $th) {
            // Respons error server
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server',
                'error' => $th->getMessage()
            ], 500);
        }
    }

}
