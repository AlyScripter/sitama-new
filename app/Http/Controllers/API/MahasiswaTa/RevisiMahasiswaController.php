<?php

namespace App\Http\Controllers\API\MahasiswaTa;

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
        $revisiQuery = revisi_mahasiswa::where('mhs_nim', $dataTa)->with('dosen');
        $lembar = DB::table('revisi_mahasiswas')
            ->join('dosen', 'revisi_mahasiswas.dosen_nip', '=', 'dosen.dosen_nip')
            ->where('mhs_nim', $dataTa)
            ->get();
        $dosen = collect(Ta::taSidang2())->where('mhs_nim', $dataTa)->first();

        if ($request->filled('penguji')) {
            $revisiQuery->where('dosen_nip', $request->input('penguji'));
        }

        $revisi = $revisiQuery->get();

        // Format data untuk respons JSON
        $response = [
            'status' => 'success',
            'data' => [
                'revisi' => $revisi,
                'dosen' => $dosen,
                'lembar' => $lembar,
            ],
        ];

        return response()->json($response);
    }



    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, revisi_mahasiswa $revisi_mahasiswa)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(revisi_mahasiswa $revisi_mahasiswa)
    {
        //
    }

    public function CetakLembarRevisi($id)
    {
        $dosen_nip = dosen::with('revisiMahasiswa')->find($id)->dosen_nip;
        // dd($dosen_nip);
        
        $id = Auth::user()->id;
        $ta = Ta::dataTa($id);
        $dataTa = $ta->mhs_nim;
        
        // $dosen = $revisi->revisiMahasiswa->value('id');
        $mahasiswa = Bimbingan::Mahasiswa($id);
        $revisi = revisi_mahasiswa::with('mahasiswa', 'dosen')->where('mhs_nim', $dataTa)->where('dosen_nip', $dosen_nip)->get();

        // dd($mahasiswa);
        // $revisi = $revisi->revisiMahasiswa->where('mhs_nim', $nim);
        // dd($mhs);
        $nim = $mahasiswa->mhs_nim;
        // dd($nim);
        $nama = $mahasiswa->mhs_nama;
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
        foreach ($revisi as $index => $item) {
            // dd($index);
            $rowData = [
                $index+1,
                $item->revisi_deskripsi. "\n" . " ",
                '' // This will be replaced with the image
            ];
            // dd($revisi->dosen->file_ttd);
            // Get the signature image path
            if (!$item->dosen->file_ttd || !file_exists(public_path('dist/img/' . $item->dosen->file_ttd))) {
                return redirect()->route('revisi-mahasiswa.index')->with('error', 'File tanda tangan tidak ditemukan');
            }
            // dd($revisi->where('revisi_status', 0));
            if($item->revisi_status == 1) {
                $signatureImagePath = public_path('dist/img/' . $item->dosen->file_ttd);
                $images = [null, null, $signatureImagePath];
            } else {
                $images = [null, null, null];
            }
            // dd($images);
            // $pdf()
            $pdf->Row($rowData, [0, 0, 0], $images);
        }
        
        // Add some space after the table
        $pdf->Ln(10); // Adjust as needed
        
        // Add the footer section
        $this->addFooterSection($pdf, $revisi);
        $pdfContent = $pdf->Output('S'); // Output PDF as a string
        return response($pdfContent, 200)
            ->header('Content-Type', 'application/pdf')
            ->header('Content-Disposition', 'attachment; filename="Lembar_Revisi_' . ucwords(strtolower($nama)) . '_Dosen_' . ucwords(strtolower($item->dosen->dosen_nama)) . '.pdf"');

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

        foreach ($revisi as $rvs => $item) {
            # code...
            $data = $item->dosen->dosen_nip;
            $file_ttd = $item->dosen->file_ttd;
            // dd($data);
        }
        
        $pdf->Cell(0, 5, "Penguji", 0, 1, 'L');


        
        // $pdf->Ln(30);

        $dosenName = Bimbingan::getDosenName($data);
        // dd($dosenName);

        // Get the signature image path for the lecturer
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id)->mhs_nim;
        $lembar = DB::table('revisi_mahasiswas')->join('dosen', 'revisi_mahasiswas.dosen_nip', '=', 'dosen.dosen_nip')->where('mhs_nim', $dataTa)->get();
        foreach ($revisi as $key => $item) {
            if($lembar->where('dosen_nip', $item->dosen_nip)->where('revisi_status', 1)->count() >= $lembar->where('dosen_nip', $item->dosen_nip)->count()) {
                $signatureImagePath = public_path('dist/img/' . $file_ttd); // Ganti ke file_ttd
            } else {
                $signatureImagePath = null;
            }
        }
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
        $pdf->Cell(0, $nipHeight, "NIP. " . $data, 0, 1, 'L');
    }
}
