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
                            <div class="card-body" id="deskripsiContainer">
                                <div class="form-group revisi-item">
                                    <label>Deskripsi <span class="text-danger">*</span></label>
                                    <textarea name="deskripsi[]" class="form-control @error('desk')is-invalid @enderror" placeholder="Masukkan Deskripsi" rows="3" style="resize: none;"></textarea>
                                    @error('desk')
                                        <div class="invalid-feedback" role="alert">
                                            <span>{{ $message }}</span>
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="button" id="addRevisiButton" class="btn btn-success"><i class="fas fa-plus"></i> Tambah Revisi</button>
                                <button type="submit" class="btn btn-info btn-block btn-flat mt-2"><i class="fa fa-save"></i> Simpan</button>
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
        document.getElementById('addRevisiButton').addEventListener('click', function() {
            const container = document.getElementById('deskripsiContainer');
            
            // Buat elemen baru untuk revisi tambahan
            const newRevisi = document.createElement('div');
            newRevisi.className = 'form-group revisi-item';
            newRevisi.innerHTML = `
                <label>Deskripsi <span class="text-danger">*</span></label>
                <textarea name="deskripsi[]" class="form-control" placeholder="Masukkan Deskripsi" rows="3" style="resize: none;"></textarea>
            `;
            
            // Tambahkan elemen baru ke container
            container.appendChild(newRevisi);
        });

        document.getElementById('deskripsiForm').addEventListener('submit', function(event) {
            // Cegah form dikirim jika data belum siap
            event.preventDefault();

            // Kumpulkan semua textarea dalam array
            const deskripsiArray = Array.from(document.querySelectorAll('textarea[name="deskripsi[]"]'))
                .map(textarea => textarea.value.trim())
                .filter(value => value);

            // Debugging: cek apakah data yang dikirimkan sesuai
            console.log('Deskripsi Array:', deskripsiArray);

            // Set input hidden dengan JSON string dari deskripsiArray
            const hiddenInput = document.createElement('input');
            hiddenInput.type = 'hidden';
            hiddenInput.name = 'deskripsi_array';
            hiddenInput.value = JSON.stringify(deskripsiArray);
            this.appendChild(hiddenInput);

            // Kirim form setelah data disiapkan
            event.target.submit();
        });
    </script>
@endpush
