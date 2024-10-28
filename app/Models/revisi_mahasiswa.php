<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class revisi_mahasiswa extends Model
{
    use HasFactory;

    public function dosen()
    {
        return $this->belongsTo(Dosen::class, 'dosen_nip', 'dosen_nip');
    }
}
