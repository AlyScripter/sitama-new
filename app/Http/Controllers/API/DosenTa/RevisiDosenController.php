<?php

namespace App\Http\Controllers\API\DosenTa;

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
        try {
            // Validasi input
            $validator = Validator::make($request->all(), [
                'revisi_deskripsi' => 'required',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Validasi gagal',
                    'errors' => $validator->errors(),
                ], 422);
            }

            $mhs = (int)$id; // Nim mahasiswa
            $fileName = null;
            $file_name_original = null;

            // Ambil NIP dosen dari user yang login
            $userId = Auth::user()->id;
            $dosen_nip = User::with('dosen')->findOrFail($userId)->dosen->dosen_nip;

            // Simpan setiap deskripsi revisi
            $createdRevisions = [];
            $revisi = revisi_mahasiswa::create([
                'revisi_deskripsi' => $request->revisi_deskripsi,
                'revisi_status' => 0, // Status default
                'mhs_nim' => $mhs,
                'dosen_nip' => $dosen_nip,
            ]);
            $createdRevisions[] = $revisi;
        

            // Kembalikan respons sukses
            return response()->json([
                'status' => 'success',
                'message' => 'Revisi berhasil disimpan',
                'data' => $createdRevisions,
            ], 201);
        } catch (\Exception $e) {
            // Tangani error jika terjadi
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server',
                'error' => $e->getMessage(),
            ], 500);
        }
    }


    /**
     * Display the specified resource.
     */
    public function show($id, Request $request)
    {
        try {
            $mhs_nim = (int)$id; // Pastikan $id adalah integer
            $userId = Auth::user()->id;

            // Ambil NIP dosen terkait
            $dataTa = User::with('dosen')->findOrFail($userId)->dosen->dosen_nip;

            // Ambil data revisi berdasarkan dosen dan mahasiswa
            $revisi = revisi_mahasiswa::with('dosen', 'bimbingan')
                ->where('dosen_nip', $dataTa)
                ->where('mhs_nim', $mhs_nim)
                ->get();

            // Kembalikan data dalam format JSON
            return response()->json([
                'status' => 'success',
                'message' => 'Data revisi berhasil diambil',
                'data' => $revisi,
            ], 200);
        } catch (\Exception $e) {
            // Tangani error dan kembalikan respons JSON
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server',
                'error' => $e->getMessage(), // Opsional: hapus jika tidak ingin menampilkan pesan error
            ], 500);
        }
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(revisi_mahasiswa $revisi_mahasiswa, Request $request)
    {
        try {
            $id = Auth::user()->id;
            $dataTa = Ta::dataTa($id)->mhs_nim;

            // Cari data revisi berdasarkan ID
            $revisi = revisi_mahasiswa::findOrFail($revisi_mahasiswa->id);

            // Ambil data TA Sidang
            $taSidang = Ta::taSidang2();

            // Temukan dosen yang terkait dengan mahasiswa
            $dosen = collect($taSidang)->where('mhs_nim', $dataTa)->first();

            // Kembalikan data sebagai respons JSON
            return response()->json([
                'status' => 'success',
                'message' => 'Data revisi dan dosen berhasil diambil',
                'data' => [
                    'revisi' => $revisi,
                    'dosen' => $dosen
                ]
            ], 200);
        } catch (\Exception $e) {
            // Tangani error dan kembalikan respons JSON
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server',
                'error' => $e->getMessage() // Opsional: hapus jika tidak ingin menampilkan pesan error
            ], 500);
        }
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, revisi_mahasiswa $revisi_mahasiswa)
    {
        try {
            $id = Auth::user()->id;
            $dataTa = Ta::dataTa($id)->mhs_nim;

            // Cari revisi berdasarkan ID
            $revisi = revisi_mahasiswa::findOrFail($revisi_mahasiswa->id);
            $revisi->dosen_nip = $request->dosen_nip;
            $revisi->mhs_nim = $dataTa;
            $revisi->revisi_deskripsi = $request->revisi_deskripsi;

            if ($request->hasFile('draft')) {
                // Hapus file lama jika ada
                $fileLama = public_path('storage/draft_revisi/' . $revisi->revisi_file);
                if (file_exists($fileLama) && !empty($revisi->revisi_file)) {
                    unlink($fileLama);
                }

                // Simpan file baru
                $draft = $request->file('draft');
                $nama_file = date('Ymdhis') . '.' . $draft->getClientOriginalExtension();
                $draft->storeAs('public/draft_revisi', $nama_file);
                $revisi->revisi_file = $nama_file;
                $revisi->revisi_file_original = $draft->getClientOriginalName();
            }

            // Perbarui data revisi
            $revisi->update();

            // Kembalikan respons JSON sukses
            return response()->json([
                'status' => 'success',
                'message' => 'Revisi berhasil diperbarui',
                'data' => $revisi
            ], 200);
        } catch (\Throwable $th) {
            // Kembalikan respons JSON error jika terjadi masalah
            return response()->json([
                'status' => 'error',
                'message' => 'Terdapat masalah di server',
                'error' => $th->getMessage() // Opsional: hapus jika tidak ingin menampilkan pesan error
            ], 500);
        }
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(revisi_mahasiswa $revisi_mahasiswa)
    {
        try {
            // Cari data revisi berdasarkan ID yang diberikan
            $revisi = revisi_mahasiswa::findOrFail($revisi_mahasiswa->id);
        
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
        
            // Kembalikan respons JSON sukses
            return response()->json([
                'status' => 'success',
                'message' => 'Revisi berhasil dihapus'
            ], 200);
        } catch (\Exception $e) {
            // Jika terjadi kesalahan, kembalikan respons JSON error
            return response()->json([
                'status' => 'error',
                'message' => 'Ada masalah di server',
                'error' => $e->getMessage() // Opsional, hapus jika tidak ingin menampilkan detail error
            ], 500);
        }
    }


    public function setujuiRevisi($id)
    {
        try {
            // Cari revisi mahasiswa berdasarkan ID
            $revisi_mahasiswa = revisi_mahasiswa::findOrFail($id);
            
            // Update status revisi menjadi disetujui
            $revisi_mahasiswa->revisi_status = 1;
            $revisi_mahasiswa->save();

            // Kembalikan respons JSON sukses
            return response()->json([
                'status' => 'success',
                'message' => 'Revisi berhasil diverifikasi',
                'data' => $revisi_mahasiswa
            ], 200);
        } catch (\Exception $e) {
            // Jika terjadi kesalahan, kembalikan respons JSON error
            return response()->json([
                'status' => 'error',
                'message' => 'Ada masalah di server',
                'error' => $e->getMessage() // Opsional, hapus jika tidak ingin menampilkan detail error
            ], 500);
        }
    }

}
