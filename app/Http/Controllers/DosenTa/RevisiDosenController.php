<?php

namespace App\Http\Controllers\DosenTa;

use App\Http\Controllers\Controller;
use App\Models\Ta;
use App\Models\Dosen;
use App\Models\User;
use App\Models\revisi_mahasiswa;
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
        $id = Auth::user()->id;
        $dataTa = User::with('dosen')->find($id)->dosen->dosen_nip;
        // dd($dataTa);
        // Mulai dengan query builder
        $revisi = revisi_mahasiswa::with('dosen', 'bimbingan')->where('dosen_nip', $dataTa);
        // Eksekusi query dan ambil data yang difilter
        $revisi = $revisi->get();

        return view('revisi-dosen.index', compact('revisi'));
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
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
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
            return redirect()->route('revisi-dosen.index', $id);
        } catch (\Exception $e) {
            toastr()->error('Ada masalah di server');
            return redirect()->route('revisi-dosen.index');
        }
    }
}
