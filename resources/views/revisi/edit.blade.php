@extends('layouts.app')

@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6 text-uppercase">
                    <h4 class="m-0">Edit Revisi</h4>
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
                                <a href="{{ route('revisi-mahasiswa.index') }}" class="btn btn-tool"><i class="fas fa-arrow-alt-circle-left"></i></a>
                            </div>
                        </div>
                        <form action="{{ route('revisi-mahasiswa.update', $revisi->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Pembimbing / Penguji <span class="text-danger">*</span></label>
                                    <select class="custom-select @error('pembimbing')is-invalid @enderror" disabled>
                                        <option value="{{ $revisi->dosen_nip }}">{{ $revisi->dosen->dosen_nama }}</option>
                                        <input type="hidden" name="dosen_nip" value="{{ $revisi->dosen_nip }}">
                                    </select>
                                    @error('pembimbing')
                                        <div class="invalid-feedback" role="alert">
                                            <span>{{ $message }}</span>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Deskripsi <span class="text-danger">*</span></label>
                                    <textarea class="form-control @error('desk')is-invalid @enderror" rows="6" name="revisi_deskripsi" style="resize: none;">{{ $revisi->revisi_deskripsi }}</textarea>
                                    @error('desk')
                                        <div class="invalid-feedback" role="alert">
                                            <span>{{ $message }}</span>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>File Lampiran</label>
                                    <div class="custom-file">
                                        <input class="form-control" type="file" id="draft" name="draft" accept="application/pdf">
                                        <span class="text-danger">Format file : PDF(Max 2MB)</span>
                                        @error('file')
                                            <div class="invalid-feedback" role="alert">
                                                <span>{{ $message }}</span>
                                            </div>
                                        @enderror
                                    </div>
                                </div>                        
                                <div class="d-flex flex-column">
                                    <label>File Sebelumnya</label>
                                    @if (isset($revisi->revisi_file))
                                        <a href="{{ asset('storage/draft_revisi/' . $revisi->revisi_file) }}" target="_blank">{{ $revisi->revisi_file_original }}</a>
                                    @else
                                        <p class="m-0">Tidak Ada Lampiran</p>
                                    @endif
                                </div>
                                <div>
                                    <h6 class="text-bold">Keterangan :</h6>
                                    <p class="text-danger m-0">* Wajib</p>
                                </div>
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
@endpush
