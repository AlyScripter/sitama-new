<?php

namespace App\Http\Controllers\DosenTa;

use App\Http\Controllers\Controller;
use App\Models\Ta;
use App\Models\Dosen;
use App\Models\User;
use App\Models\revisi_mahasiswa;
use App\Models\Bimbingan;
use App\Models\UjianSidang;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class RevisiDosenController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create($mhs_nim)
    {   
        // dd($dataTa);
        // dd((int)$mhs_nim);
        $dataTa = revisi_mahasiswa::value('mhs_nim');
        // $dataTa = Ta::dataTa($id)->mhs_nim;
        $revisi = revisi_mahasiswa::get();
        $taSidang = Ta::taSidang2();

        $dosen = collect(Ta::taSidang2())->where('mhs_nim', $dataTa)->first();

        //  dd($dosen);
        return view('revisi-dosen.create', compact('dosen', 'mhs_nim'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'deskripsi_array' => 'required',
        ]);

        // dd($id);
        $mhs = (int)$id;
        // $mhs = $mahasiswa->mhs_nim;


        $revisi_status = 0;

        $id = Auth::user()->id;
        $dosen_nip = User::with('dosen')->find($id)->dosen->dosen_nip;

        $deskripsiArray = json_decode($request->get('deskripsi_array'));
        // dd($deskripsiArray);
        
        foreach ($deskripsiArray as $deskripsiItem) {
            $revisi = revisi_mahasiswa::create([
                'revisi_deskripsi' => $deskripsiItem,
                'revisi_status' => $revisi_status,
                'mhs_nim' => $mhs,
                'dosen_nip' => $dosen_nip,
            ]);

            // dd($revisi);
        }

        // DB::table('revisi_mahasiswas')->insert([
        //     'revisi_deskripsi' => $request->revisi_deskripsi,
        //     'revisi_file' => $fileName,
        //     'revisi_file_original' => $file_name_original,
        //     'revisi_status' => $revisi_status,
        //     'mhs_nim' => $mhs,
        //     'dosen_nip' => $dosen_nip,
        // ]);

        return redirect('revisi-dosen/'. $mhs);
    }

    /**
     * Display the specified resource.
     */
    public function show($id, Request $request)
    {
        $mhs_nim = (int)$id;
        $id = Auth::user()->id;
        $dataTa = User::with('dosen')->find($id)->dosen->dosen_nip;
        $revisi = revisi_mahasiswa::with('dosen', 'bimbingan')->where('dosen_nip', $dataTa)->where('mhs_nim', $mhs_nim);
        // dd($dataTa);
        // Eksekusi query dan ambil data yang difilter
        $revisi = $revisi->get();

        return view('revisi-dosen.index', compact('revisi', 'mhs_nim'));
        return redirect()->route('create-revisi-dosen', ['mhs_nim' => $mhs_nim]);
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
        return view('revisi-dosen.edit', compact('dosen', 'revisi'));
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
            return redirect()->route('revisi-dosen.index');
        } catch (\Throwable $th) {
            toastr()->warning('Terdapat masalah diserver' . $th->getMessage());
            return redirect()->route('revisi-dosen.index');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(revisi_mahasiswa $revisi_mahasiswa)
    {
        try {
            $revisi = revisi_mahasiswa::findOrFail($revisi_mahasiswa->id);
            // Cari data revisi berdasarkan ID yang diberikan
    
            // Cek apakah revisi memiliki file yang terkait
            if ($revisi->revisi_file) {
                // Hapus file dari storage
                $filePath = public_path('storage/draft_revisi/' . $revisi->revisi_file);
                if (file_exists($filePath)) {
                    unlink($filePath);  // Menghapus file yang ada
                }
            }
    
            // Hapus data revisi dari database
            $revisi->delete();
    
            // Menampilkan pesan sukses
            toastr()->success('Revisi berhasil dihapus');
    
            // Redirect ke halaman yang sesuai, bisa ke halaman revisi mahasiswa
            return redirect()->route('revisi-dosen.show', $revisi->mhs_nim);
        } catch (\Exception $e) {
            // Menangani error jika terjadi masalah saat penghapusan
            toastr()->error('Ada masalah di server: ' . $e->getMessage());
            return redirect()->route('revisi-dosen.show', $revisi->mhs_nim);
        }
    }

    public function setujuiRevisi($id)
    {
        try {         
            $revisi_mahasiswa = revisi_mahasiswa::findOrFail($id);
            // dd($revisi_mahasiswa); 
            $revisi_mahasiswa->revisi_status = 1;
            $revisi_mahasiswa->save();

            // $id = Auth::user()->id;
            
            // $dataTa = User::with('dosen')->find($id)->dosen->value('dosen_nip');
            // $revisi = revisi_mahasiswa::with('dosen', 'bimbingan')->where('dosen_nip', $dataTa);
            // $revisi = $revisi->get();
            // dd($revisi);
    
            toastr()->success('Berhasil diverifikasi');
            return redirect()->route('revisi-dosen.show', $revisi_mahasiswa->mhs_nim);
        } catch (\Exception $e) {
            toastr()->error('Ada masalah di server');
            return redirect()->route('revisi-dosen.show', $revisi_mahasiswa->mhs_nim);
        }
    }
}
