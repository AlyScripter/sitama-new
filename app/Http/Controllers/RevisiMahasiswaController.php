<?php

namespace App\Http\Controllers;

use App\Models\revisi_mahasiswa;
use App\Models\Ta;
use App\Models\Dosen;
use App\Models\Bimbingan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

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
        $revisi = revisi_mahasiswa::with('dosen', 'bimbingan');

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

        return view('revisi.index', compact('revisi'));
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
        return view('revisi.create', compact('dosen'));
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

        DB::table('revisi_mahasiswas')->insert([
            'revisi_deskripsi' => $request->revisi_deskripsi,
            'revisi_file' => $fileName,
            'revisi_file_original' => $file_name_original,
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
    public function edit(revisi_mahasiswa $revisi_mahasiswa)
    {
        $id = Auth::user()->id;
        $dataTa = Ta::dataTa($id)->mhs_nim;
        
        $revisi = revisi_mahasiswa::find($revisi_mahasiswa->id);
        // dd($revisi);
        $taSidang = Ta::taSidang2();

        $dosen = collect(Ta::taSidang2())->where('mhs_nim', $dataTa)->first();

        return view('revisi.edit', compact('dosen', 'revisi'));
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
}
