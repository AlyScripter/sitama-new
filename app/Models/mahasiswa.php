<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class mahasiswa extends Model
{
    protected $table = 'mahasiswa';
    use HasFactory;

    public function revisiMahasiswa()
    {
        return $this->hasMany(RevisiMahasiswa::class, 'mhs_nim', 'mhs_nim');
    }
}
