<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class revisi_mahasiswa extends Model
{
    use HasFactory;

    protected $fillable = [
        'revisi_deskripsi',
        'revisi_file',
        'revisi_file_original',
        'revisi_status',
        'mhs_nim',
        'dosen_nip',
    ];

    public function dosen()
    {
        return $this->belongsTo(Dosen::class, 'dosen_nip', 'dosen_nip');
    }

    public function bimbingan()
    {
        return $this->belongsTo(Bimbingan::class, 'dosen_nip', 'dosen_nip');
    }

    public function mahasiswa()
    {
        return $this->belongsTo(mahasiswa::class, 'mhs_nim', 'mhs_nim');
    }
}
