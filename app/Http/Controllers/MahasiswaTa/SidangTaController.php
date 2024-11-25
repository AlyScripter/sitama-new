<?php

namespace App\Http\Controllers\MahasiswaTa;

use App\Http\Controllers\Controller;
use App\Models\Bimbingan;
use App\Models\Ta;
use App\Models\TaSidang;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

// Mahasiswa
class SidangTaController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        $mahasiswa = Bimbingan::Mahasiswa($id);
        Carbon::setLocale('id');
        $tanggal_sidang = Carbon::parse($mahasiswa->tgl_sidang)->translatedFormat('l, j F Y');
        $hari_sidang = Carbon::parse($mahasiswa->tgl_sidang)->translatedFormat('l');

        $dataTa = Ta::dataTa($id);
        $dosenNip = Bimbingan::Mahasiswa($id)->dosen_nip;
        $dosenNama = Bimbingan::Mahasiswa($id)->dosen_nama;
        $bimbinganId = Bimbingan::Mahasiswa($id)->bimbingan_id;

        if (!isset($dataTa)) {
            toastr()->error('Isikan Judul Proposal Terlebih Dahulu');
            return redirect('/dashboard-mahasiswa');
        } elseif (!isset($dosenNama, $dosenNip, $bimbinganId)) {
            toastr()->error('Anda Belum Mendapatkan Dosen Pembimbing');
            return redirect('/dashboard-mahasiswa');
        } else {
            $taSidang = TaSidang::where('ta_id', $dataTa->ta_id)->first();
            return view('sidang-ta.index', compact('mahasiswa', 'taSidang', 'tanggal_sidang', 'hari_sidang'));
        }
    }

    public function suratTugas()
    {
    }

    public function store(Request $request)
    {
        $id = Auth::user()->id;
        $taId = Bimbingan::Mahasiswa($id)->ta_id;

        $validator = Validator::make($request->all(), [
            'draft_revisi' => 'required|mimetypes:application/pdf|max:2048'
        ]);

        if ($validator->fails()) {
            toastr()->error('File Gagal diupload </br> Periksa kembali data anda');
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        };

        $taSidang = TaSidang::where('ta_id', $taId)->first();

        if ($taSidang) {
            $fileLama = public_path('storage/draft_revisi/' . $taSidang->revisi_file);
            if (file_exists($fileLama) && !empty($taSidang->revisi_file)) {
                unlink($fileLama);
            }
        }

        try {
            $draft_revisi = $request->file('draft_revisi');
            $revisi_file = date('Ymdhis') . '.' . $draft_revisi->getClientOriginalExtension();
            $draft_revisi->storeAs('public/draft_revisi', $revisi_file);

            TaSidang::updateOrCreate(
                ['ta_id' => $taId],
                [
                    'revisi_file_original' => $draft_revisi->getClientOriginalName(),
                    'revisi_file' => $revisi_file,
                ]
            );
            toastr()->success('File Revisi berhasil terupload');
            return redirect()->route('sidang-tugas-akhir.index');
        } catch (\Throwable $th) {
            toastr()->warning('Terdapat masalah diserver' . $th->getMessage());
            return redirect()->route('sidang-tugas-akhir.index');
        }
    }

    public function cetak_lembar_pengesahan() {
        $mhs = mahasiswa::where("email", Auth::user()->email)->first();
        $ta_mhs = collect(DB::select("SELECT mhs_nim FROM tas_mahasiswa WHERE ta_id IN (SELECT ta_id FROM tas_mahasiswa WHERE mhs_nim = '" . $mhs->mhs_nim . "') ORDER BY ta_id ASC"));
        // $ta_mhs = collect(DB::select("SELECT mhs_nim FROM tas WHERE ta_id IN (SELECT ta_id FROM tas WHERE mhs_nim = '" . $mhs->mhs_nim . "') ORDER BY ta_id ASC"));
        $prodi_id = $mhs->prodi_ID;
        $ta = DB::selectOne("SELECT * FROM tas WHERE mhs_nim = '" . $mhs->mhs_nim . "'");
        $prodi = KodeProdi::where("prodi_ID", $prodi_id)->first();

        $temp = [];
        foreach ($ta_mhs->pluck('mhs_nim') as $row) {
            $temp[] = $row;
        }

        $mahasiswa = DB::select("SELECT * FROM mahasiswa WHERE mhs_nim IN (" . implode(",", $temp) . ")");

        $pembimbings = collect(DB::select("SELECT D.file_ttd, D.dosen_nama, B.* FROM bimbingans B JOIN dosen D ON B.dosen_nip = D.dosen_nip WHERE ta_id = " . $ta->ta_id));

        $pembimbing = [];
        $bimb_id = [];
        $approve = "";
        foreach ($pembimbings as $row) {
            $bimb_id[] = $row->bimbingan_id;
            $pembimbing[] = [
                "nama" => $row->dosen_nama,
                "nip" => $row->dosen_nip,
                "ttd" => $row->file_ttd
            ];
        }

        $tgl = DB::selectOne("SELECT MAX(bimb_tgl) tgl FROM bimbingan_log WHERE bimbingan_id IN (" . implode(",", $bimb_id) . ")");

        $jenis = ["1" => "Tugas Akhir", "2" => "Skripsi"];

        Carbon::setLocale('id');
        
        if (!$pembimbing[0]['ttd'] || !file_exists(public_path('dist/img/' . $pembimbing[0]['ttd']))) {
            return redirect()->route('bimbingan-mahasiswa.index')->with('error', 'File tanda tangan tidak ditemukan untuk dosen: ' . $pembimbing[0]['nama']);
        }

        if (!$pembimbing[1]['ttd'] || !file_exists(public_path('dist/img/' . $pembimbing[1]['ttd']))) {
            return redirect()->route('bimbingan-mahasiswa.index')->with('error', 'File tanda tangan tidak ditemukan untuk dosen: ' . $pembimbing[1]['nama']);
        }

        $view = view("cetak-cetak.persetujuan-sidang", [
            "jenis" => $jenis,
            "prodi_id" => $prodi_id,
            "prodi_nama" => $prodi->program_studi,
            "mahasiswa" => $mahasiswa,
            "judul_ta" => $ta->ta_judul,
            "tanggal_approve" => Carbon::parse($tgl->tgl)->translatedFormat('j F Y'),
            "pembimbing" => $pembimbing
        ]);
        $mpdf = new MpdfMpdf();
        $mpdf->WriteHTML($view);
        $mpdf->SetProtection(['copy', 'print']);
        $mpdf->showImageErrors = true;
        $mpdf->Output('Persetujuan Sidang ' . ucwords(strtolower($mhs->mhs_nama)) . '.pdf', 'I');

        //echo $view;
    }

}
