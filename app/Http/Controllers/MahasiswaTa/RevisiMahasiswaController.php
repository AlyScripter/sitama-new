<?php

namespace App\Http\Controllers\MahasiswaTa;

use App\Http\Controllers\Controller;
use App\Models\revisi_mahasiswa;
use App\Models\Ta;
use App\Models\Dosen;
use App\Models\Bimbingan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Mccarlosen\LaravelMpdf\Facades\LaravelMpdf;
use Mpdf;
use Carbon\Carbon;
use Mpdf\Mpdf as MpdfMpdf;

class RevisiMahasiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id)->mhs_nim;

        // Mulai dengan query builder
        $revisi = revisi_mahasiswa::where('mhs_nim', $dataTa)->with('dosen', 'bimbingan');

        // Periksa apakah ada parameter 'dosen' dan terapkan filter yang sesuai
        if ($request->filled('dosen')) {
            if ($request->input('dosen') == "0") {
                // Tampilkan hanya Dosen Pembimbing (yang memiliki relasi dengan bimbingan)
                $revisi->whereHas('bimbingan');
            } elseif ($request->input('dosen') == "1") {
                // Tampilkan hanya Dosen Penguji (yang tidak memiliki relasi dengan bimbingan)
                $revisi->whereDoesntHave('bimbingan');
            }
        }

        // Eksekusi query dan ambil data yang difilter
        $revisi = $revisi->get();

        $lembar = DB::table('revisi_mahasiswas')->join('dosen', 'revisi_mahasiswas.dosen_nip', '=', 'dosen.dosen_nip')->where('mhs_nim', $dataTa)->get();

        $lembarCountFull = $lembar->select('revisi_status', 'dosen_nip')->count();
        // dd($lembarCountFull);
        $lembarCount = $lembar->where('revisi_status', 1)->count('revisi_status');

        return view('revisi-mahasiswa.index', compact('revisi', 'lembar', 'lembarCount', 'lembarCountFull'));
    }



    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id)->mhs_nim;
        
        $revisi = revisi_mahasiswa::get();
        $taSidang = Ta::taSidang2();

        $dosen = collect(Ta::taSidang2())->where('mhs_nim', $dataTa)->first();

        //  dd($dosen);
        return view('revisi-mahasiswa.create', compact('dosen'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file_name' => 'required|mimetypes:application/pdf|max:2048'
        ]);

        $id = Auth::user()->id;
        $mahasiswa = Bimbingan::Mahasiswa($id);
        $mhs = $mahasiswa->mhs_nim;
        
        $file = $request->file('file');
        $fileName = date('Ymdhis') . '.' . $file->getClientOriginalExtension();
        $file->storeAs('public/draft_revisi', $fileName);
        $file_name_original = $file->getClientOriginalName();

        $revisi_status = 0;

        DB::table('revisi_mahasiswas')->insert([
            'revisi_deskripsi' => $request->revisi_deskripsi,
            'revisi_file' => $fileName,
            'revisi_file_original' => $file_name_original,
            'revisi_status' => $revisi_status,
            'mhs_nim' => $mhs,
            'dosen_nip' => $request->pembimbing,
        ]);

        return redirect('revisi-mahasiswa');
    }

    /**
     * Display the specified resource.
     */
    public function show(revisi_mahasiswa $revisi_mahasiswa)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(revisi_mahasiswa $revisi_mahasiswa, Request $request)
    {
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id)->mhs_nim;
        
        $revisi = revisi_mahasiswa::find($revisi_mahasiswa->id);
        // dd($revisi);
        $taSidang = Ta::taSidang2();

        $dosen = collect(Ta::taSidang2())->where('mhs_nim', $dataTa)->first();
        
        // dd($dosen);
        return view('revisi-mahasiswa.edit', compact('dosen', 'revisi'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, revisi_mahasiswa $revisi_mahasiswa)
    {
        // $validator = Validator::make($request->all(), [
        //     'revisi_deskripsi' => 'required',
        //     'revisi_file' => 'required',
        //     'dosen_nip' => 'required',
        //     'mhs_nim' => 'required',
        // ]);

        // if ($validator->fails()) {
        //     toastr()->error('Revisi gagal diupdate </br> Periksa kembali data anda');
        //     return redirect()->back()
        //         ->withErrors($validator)
        //         ->withInput();
        // };

        try {
            $id = Auth::user()->id;
            $dataTa = Ta::dataTa($id)->mhs_nim;
            // dd($dataTa);
            
            $revisi = revisi_mahasiswa::find($revisi_mahasiswa->id);
            $revisi->dosen_nip = $request->dosen_nip;
            $revisi->mhs_nim = $dataTa;
            $revisi->revisi_deskripsi = $request->revisi_deskripsi;

            if ($request->hasFile('draft')) {
                $fileLama = public_path('storage/draft_revisi/' . $revisi->revisi_file);
                if (file_exists($fileLama) && !empty($revisi->revisi_file)) {
                    unlink($fileLama);
                }

                $draft = $request->file('draft');
                $nama_file = date('Ymdhis') . '.' . $draft->getClientOriginalExtension();
                $draft->storeAs('public/draft_revisi', $nama_file);
                $revisi->revisi_file = $nama_file;
                $revisi->revisi_file_original = $draft->getClientOriginalName();
            }

            $revisi->update();
            toastr()->success('Revisi berhasil diupdate');
            return redirect()->route('revisi-mahasiswa.index');
        } catch (\Throwable $th) {
            toastr()->warning('Terdapat masalah diserver' . $th->getMessage());
            return redirect()->route('revisi-mahasiswa.index');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(revisi_mahasiswa $revisi_mahasiswa)
    {
        try {
            $revisi = revisi_mahasiswa::findorfail($revisi_mahasiswa->id);

            $fileLama = public_path('storage/draft_revisi/' . $revisi->revisi_file);
            if (file_exists($fileLama)) {
                unlink($fileLama);
            }

            $revisi->delete();

            toastr()->success('Log berhasil dihapus');
            return redirect()->route('revisi-mahasiswa.index');
        } catch (\Throwable $th) {
            toastr()->warning('Terdapat masalah diserver' . $th->getMessage());
            return redirect()->route('revisi-mahasiswa.index');
        }
    }

    public function CetakLembarRevisi($id)
    {
        $revisi = dosen::with('revisiMahasiswa')->find($id);
        $dosen = $revisi->revisiMahasiswa->value('id');
        $mhs = revisi_mahasiswa::with('mahasiswa')->find($dosen);
        
        $nim = $mhs->mhs_nim;
        $nama = $mhs->mahasiswa->mhs_nama;
        // dd($nama);
        $depan_jenjang = substr($nim, 0, 1);
        if ($depan_jenjang == '3')
            $jen = "D3";
        elseif ($depan_jenjang == '4')
            $jen = "D4";

        $belakang_jenjang = substr($nim, 1, 2);
        if ($belakang_jenjang == '33') {
            $prod = "TI";
            $kelasnya = "4";
        } elseif ($belakang_jenjang == '34') {
            $prod = "IK";
            $kelasnya = "3";
        }
        $kode_prodi = $jen . $prod;
        $depan_kelas = substr($nim, 5, 1);
        if ($depan_kelas == 0) {
            $kelas = 'A';
        } elseif ($depan_kelas == 1) {
            $kelas = 'B';
        } elseif ($depan_kelas == 2) {
            $kelas = 'C';
        } elseif ($depan_kelas == 3) {
            $kelas = 'D';
        } elseif ($depan_kelas == 4) {
            $kelas = 'E';
        } elseif ($depan_kelas == 5) {
            $kelas = 'F';
        } elseif ($depan_kelas == 6) {
            $kelas = 'G';
        } elseif ($depan_kelas == 7) {
            $kelas = 'H';
        }
        $susun_kelas = $prod . "-" . $kelasnya . $kelas;

        $pdf = new CustomPdfMahasiswa('P', 'mm', 'A4');
        $pdf->AddPage();

        // Path gambar header
        $imagePath = public_path('dist/img/header_lembar_kontrol.png');
        $pdf->Image($imagePath, 10, 10, 190);
        $pdf->Ln(45); // Jarak setelah gambar

        $pdf->SetFont('Arial', '', 12);
        $pdf->SetWidths([90, 100]);

        $ta = ta::where('mhs_nim', $nim)->value('ta_judul');
        // dd($ta);
        $data = [
            "Nama : " . $nama . "\n\nKelas : " . $susun_kelas . "\n\nNIM : " . $nim . "\n\n",
            "Judul Tugas Akhir/Skripsi : " . $ta
        ];

        $underline = [0, 1, 0];
        $pdf->Row($data, $underline);

        // Add the second table
        $pdf->SetWidths([10, 140, 40]); // Adjust widths as needed
        $pdf->Row(["No.", "Uraian", "Tandatangan Pembimbing"], [0, 0, 0]);
        // Loop through your bimbingan data
        foreach ($revisi->revisiMahasiswa as $index => $item) {
            // dd($index);
            $rowData = [
                $index+1,
                $item->revisi_deskripsi. "\n" . " ",
                '' // This will be replaced with the image
            ];
            // dd($revisi->dosen->file_ttd);
            // Get the signature image path
            $signatureImagePath = public_path('dist/img/' . $revisi->file_ttd);
            $images = [null, null, $signatureImagePath];
            // dd($images);
            // $pdf()
            $pdf->Row($rowData, [0, 0, 0], $images);
        }

        // Add some space after the table
        $pdf->Ln(10); // Adjust as needed

        // Add the footer section
        $this->addFooterSection($pdf, $revisi);

        return response($pdf->Output('S'), 200)->header('Content-Type', 'application/pdf');
    }

    function addFooterSection($pdf, $revisi)
    {
        $currentY = $pdf->GetY();
        $pageHeight = $pdf->GetPageHeight();
        $bottomMargin = 20;

        $footerHeight = 5 + 5 + 30 + 5 + 5;

        if (($pageHeight - $bottomMargin - $currentY) < $footerHeight) {
            $pdf->AddPage();
        }

        $pdf->SetX(120);
        $pdf->Cell(0, 5, "Semarang, " . Carbon::now()->format('d-m-Y'), 0, 1, 'L');
        $pdf->SetX(120);

        $data = $revisi->dosen_nip;
        $dosenQuery = revisi_mahasiswa::where('dosen_nip', $data)->with('dosen', 'bimbingan');

        // Check if the 'bimbingan' relationship exists and get the filtered data
        if ($dosenQuery->whereHas('bimbingan')->exists()) {
            $dosen = $dosenQuery->get();
            $pdf->Cell(0, 5, "Pembimbing", 0, 1, 'L');    
        } else{
            $pdf->Cell(0, 5, "Penguji", 0, 1, 'L');
        }


        
        // $pdf->Ln(30);

        $dosenNip = $revisi->dosen_nip;
        $dosenName = Bimbingan::getDosenName($dosenNip);

        // Get the signature image path for the lecturer
        $signatureImagePath = public_path('dist/img/' . $revisi->file_ttd); // Ganti ke file_ttd
        if (file_exists($signatureImagePath)) {
            // Menentukan ukuran gambar
            list($originalWidth, $originalHeight) = getimagesize($signatureImagePath);
            $maxWidth = 50; // Lebar maksimum gambar
            $maxHeight = 20; // Tinggi maksimum gambar

            // Menghitung rasio aspek
            $aspectRatio = $originalWidth / $originalHeight;

            // Menghitung dimensi baru
            if ($maxWidth / $aspectRatio <= $maxHeight) {
                $newWidth = $maxWidth;
                $newHeight = $maxWidth / $aspectRatio;
            } else {
                $newHeight = $maxHeight;
                $newWidth = $maxHeight * $aspectRatio;
            }

            // Menambahkan gambar tanda tangan dosen
            $pdf->Image($signatureImagePath, 130, $pdf->GetY(), $newWidth, $newHeight);
            $pdf->Ln(5); // Jarak setelah gambar
        }
        $pdf->Ln(20);

        $pdf->SetX(120);
        $nameHeight = 5;
        if (($pageHeight - $bottomMargin - $pdf->GetY()) < $nameHeight) {
            $pdf->AddPage();
        }
        $pdf->Cell(0, $nameHeight, $dosenName, 0, 1, 'L');

        $textWidth = $pdf->GetStringWidth($dosenName);
        $currentLineY = $pdf->GetY() - $nameHeight + 5;
        $pdf->Line(120, $currentLineY, 120 + $textWidth, $currentLineY);

        $pdf->SetXY(120, $currentLineY + 1);
        $nipHeight = 5;
        if (($pageHeight - $bottomMargin - $pdf->GetY()) < $nipHeight) {
            $pdf->AddPage();
        }
        $pdf->Cell(0, $nipHeight, "NIP. " . $dosenNip, 0, 1, 'L');
    }
}
