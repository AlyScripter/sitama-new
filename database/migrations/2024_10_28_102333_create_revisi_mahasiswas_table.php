<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('revisi_mahasiswas', function (Blueprint $table) {
            $table->id();
            $table->string('revisi_deskripsi');
            $table->string('revisi_file');
            $table->string('revisi_file_original');
            $table->integer('revisi_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('revisi_mahasiswas');
    }
};
