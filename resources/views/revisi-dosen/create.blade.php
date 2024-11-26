@extends('layouts.app')

@section('content')
@section('title', 'Tambah Revisi')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6 text-uppercase">
                    <h4 class="m-0">Tambah Revisi</h4>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h5 class="card-title m-0"></h5>
                            <div class="card-tools">
                                <a href="{{ route('revisi-dosen.show', $mhs_nim) }}" class="btn btn-tool"><i class="fas fa-arrow-alt-circle-left"></i></a>
                            </div>
                        </div>
                        <form action="{{ route('store-revisi-dosen', $mhs_nim) }}" method="POST" enctype="multipart/form-data" id="deskripsiForm">
                            @csrf
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Deskripsi <span class="text-danger">*</span></label>
                                    <p class="text-gray font-italic">Untuk menambahkan dua revisi atau lebih gunakan enter</p>
                                    <textarea id="deskripsiInput" name="deskripsi" class="form-control @error('desk')is-invalid @enderror" placeholder="Masukkan Deskripsi" rows="6" style="resize: none;"></textarea>
                                    @error('desk')
                                        <div class="invalid-feedback" role="alert">
                                            <span>{{ $message }}</span>
                                        </div>
                                    @enderror
                                </div>
                                <input type="hidden" name="deskripsi_array" id="deskripsiArrayInput" />
                            </div>
                            <div class="card-footer">
                                <button type="submit" class="btn btn-info btn-block btn-flat"><i class="fa fa-save"></i>
                                    Simpan</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script>
        document.getElementById('deskripsiForm').addEventListener('submit', function(event) {
        // Cegah form dikirim jika data belum siap
        event.preventDefault();  // Mencegah form submit sebelum data siap

        const deskripsi = document.getElementById('deskripsiInput').value;
        const deskripsiArray = deskripsi.split('\n').map(item => item.trim()).filter(item => item);
        
        // Debugging: cek apakah data yang dikirimkan sesuai
        console.log('Deskripsi Array:', deskripsiArray);

        // Set input hidden dengan JSON string dari deskripsiArray
        document.getElementById('deskripsiArrayInput').value = JSON.stringify(deskripsiArray);

        // Kirim form setelah data disiapkan
        event.target.submit();  // Form akan disubmit hanya sekali di sini
    });

    </script>
@endpush
