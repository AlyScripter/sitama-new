<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\MahasiswaTa\BimbinganMahasiswaController;
use App\Http\Controllers\API\MahasiswaTa\DashboardMahasiswaController;
use App\Http\Controllers\API\MahasiswaTa\DaftarTaController;
use App\Http\Controllers\API\MahasiswaTa\SidangTaController;
use App\Http\Controllers\API\MahasiswaTa\RevisiMahasiswaController;

use App\Http\Controllers\API\DosenTa\MahasiswaBimbinganController;
use App\Http\Controllers\API\DosenTa\UjianSidangController;
use App\Http\Controllers\API\DosenTa\RevisiDosenController;

use App\Http\Controllers\API\HomeController;
use App\Http\Controllers\API\Auth\AuthController;
use Laravel\Sanctum\Http\Controllers\SanctumController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('v1')->group(function () {
    // Authentication Login
    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');

    // Mahasiswa TA
    Route::middleware('auth:sanctum')->group(function () {
        // Home
        Route::get('/home', [HomeController::class, 'index'])->name('home');
        Route::get('stream-document/{enc_path}', [HomeController::class, 'streamDocument']);

        // Mahasiswa TA
        Route::get('dashboard-mahasiswa/autocomplete', [DashboardMahasiswaController::class, 'autocomplete']);
        Route::resource('dashboard-mahasiswa', DashboardMahasiswaController::class);

        Route::get('bimbingan-mahasiswa/cetak-persetujuan-sidang', [BimbinganMahasiswaController::class, 'cetak_persetujuan_sidang'])->name('bimbingan-mahasiswa.cetak_persetujuan_sidang');
        Route::get('bimbingan-mahasiswa/cetak_lembar_kontrol/{id}/{sebagai}', [BimbinganMahasiswaController::class, 'CetakLembarKontrol'])->name('bimbingan-mahasiswa.CetakLembarKontrol');
        Route::resource('bimbingan-mahasiswa', BimbinganMahasiswaController::class);
        
        Route::get('daftar-tugas-akhir/{daftar_tugas_akhir}/upload', [DaftarTaController::class, 'upload'])->name('daftar-tugas-akhir.upload');
        Route::post('daftar-tugas-akhir/daftar', [DaftarTaController::class, 'daftar'])->name('daftar-tugas-akhir.daftar');
        Route::post('daftar-tugas-akhir/upload', [DaftarTaController::class, 'uploadSingle'])->name('daftar-tugas-akhir.uploadSingle');
        Route::resource('daftar-tugas-akhir', DaftarTaController::class);

        Route::resource('sidang-tugas-akhir', SidangTaController::class);
        
        Route::resource('revisi-mahasiswa', RevisiMahasiswaController::class);
        Route::get('revisi-mahasiswa/cetak_lembar_revisi/{id}', [RevisiMahasiswaController::class, 'CetakLembarRevisi'])->name('revisi-mahasiswa.CetakLembarRevisi');

        Route::get('/download-lembar-pengesahan', [SidangTaController::class, 'cetak_lembar_pengesahan_api']);


        // Dosen TA
        Route::post('/ujian-sidang/kelayakan/{ta_id}', [UjianSidangController::class, 'storeKelayakan'])->name('ujian-sidang.storeKelayakan');

        Route::get('/mhsbimbingan/{ta_id}', [MahasiswaBimbinganController::class, 'pembimbingan'])->name('mhsbimbingan.pembimbingan');
        Route::post('/setujui-sidang-akhir/{ta_id}', [MahasiswaBimbinganController::class, 'setujuiSidangAkhir'])->name('setujui.sidang.akhir');
        Route::post('/setujui-pembimbingan/{ta_id}', [MahasiswaBimbinganController::class, 'setujuiPembimbingan'])->name('setujui-pembimbingan');
        Route::resource('mhsbimbingan', MahasiswaBimbinganController::class);

        Route::get('ujian-sidang/kelayakan/{ta_id}', [UjianSidangController::class, 'kelayakan'])->name('ujian-sidang.kelayakan');
        Route::get('ujian-sidang/penguji/{ta_id}', [UjianSidangController::class, 'penguji'])->name('ujian-sidang.penguji');
        Route::post('/ujian-sidang/kelayakan/{ta_id}', [UjianSidangController::class, 'storeKelayakan'])->name('ujian-sidang.storeKelayakan');
        Route::post('/ujian-sidang/penguji/{ta_id}', [UjianSidangController::class, 'storePenguji'])->name('ujian-sidang.storePenguji');
        Route::get('ujian-sidang/cetak_surat_tugas/{id}', [UjianSidangController::class, 'CetakSuratTugas'])->name('ujian-sidang.CetakSuratTugas');
        Route::get('ujian-sidang/nilai-pembimbing/{ta_sidang_id}', [UjianSidangController::class, 'nilaiPembimbing'])->name('ujian-sidang.nilai-pembimbing');
        Route::get('ujian-sidang/nilai-penguji/{ta_sidang_id}', [UjianSidangController::class, 'nilaiPenguji'])->name('ujian-sidang.nilai-penguji');
        Route::get('ujian-sidang/berita-acara/{ta_sidang_id}', [UjianSidangController::class, 'beritaAcara'])->name('ujian-sidang.berita-acara');
        Route::get('/ujian-sidang', [UjianSidangController::class, 'index'])->name('ujian-sidang.index');

        Route::get('revisi-dosen/{id}/create', [RevisiDosenController::class, 'create'])->name('create-revisi-dosen');
        Route::delete('revisi-dosen/{revisi_mahasiswa}', [RevisiDosenController::class, 'destroy'])->name('revisi-dosen.destroy');
        Route::resource('revisi-dosen', RevisiDosenController::class)->except(['create', 'store', 'destroy']);
        Route::post('revisi-dosen/{id}/store', [RevisiDosenController::class, 'store'])->name('store-revisi-dosen');
        Route::post('/setujui-revisi/{id}', [RevisiDosenController::class, 'setujuiRevisi'])->name('setujui-revisi');
    });
});