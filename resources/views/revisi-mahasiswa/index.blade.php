@extends('layouts.app')
@push('css')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <style>
        @media (max-width: 767.98px) {
            .btn-sm-block {
                display: block;
                width: 100%;
            }
        }
    </style>
@endpush
@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h4 class="m-0">Revisi</h4>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right"></ol>
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
                            <form action="{{ route('revisi-mahasiswa.index') }}" method="GET">
                                @csrf
                                <div class="row d-flex align-items-center">
                                    <div class="col text-right">
                                        <div class="card-tools">
                                            <a href="{{ route('revisi-mahasiswa.create') }}"
                                                class="btn btn-sm btn-success">
                                                <i class="fas fa-plus-circle"></i>
                                                Tambah Revisi
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col table-responsive">
                                    <table id="" class="table-striped table-bordered table-hover table">                            
                                        <thead>
                                            <th>No</th>
                                            <th>Dosen Pembimbing / Penguji</th>
                                            <th>Revisi</th>
                                            <th>Deskripsi</th>
                                            <th>Status</th>
                                            <th>Aksi</th>
                                        </thead>
                                        <tbody>
                                            @foreach ($revisi as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $item->dosen->dosen_nama }}</td>
                                                    <td class="text-center">
                                                        @if (isset($item->revisi_file))
                                                            {{-- <a href="{{ asset('storage/draft_revisi/' . $item->revisi_file) }}"
                                                                target="_blank" class="btn btn-sm btn-success"><i
                                                                    class="fa fa-eye"></i></a> --}}
                                                            <a href="#" data-toggle="modal"
                                                                data-target="#modal-{{ $item->id }}"
                                                                class="btn btn-sm btn-success">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
                                                        @else
                                                            <div class="text-center">
                                                                -
                                                            </div>
                                                        @endif
                                                    </td>
                                                    <td>{{ $item->revisi_deskripsi }}</td>
                                                    <td>
                                                        @if ($item->revisi_status == 0)
                                                            <span class="badge badge-danger">Belum Diverifikasi</span>
                                                        @elseif ($item->revisi_status == 1)
                                                            <span class="badge badge-success">Diverifikasi</span>
                                                        @else
                                                            Invalid status
                                                        @endif
                                                    </td>
                                                    <td class="text-center">
                                                        @if ($item->revisi_status == 0)
                                                        <button type="button"
                                                            class="btn btn-block btn-sm btn-outline-info"
                                                            data-toggle="dropdown"><i class="fas fa-cog"></i>
                                                        </button>
                                                        <div class="dropdown-menu" role="menu">
                                                            <a class="dropdown-item text-warning"
                                                                href="{{ route('revisi-mahasiswa.edit', $item->id) }}">
                                                                <i class="fas fa-edit text-warning mr-2"></i>Edit</a>
                                                            <div class="dropdown-divider"></div>
                                                            <form method="POST"
                                                                action="{{ route('revisi-mahasiswa.destroy', $item->id) }}">
                                                                @csrf
                                                                @method('DELETE')
                                                                <a class="dropdown-item confirm-button text-danger"
                                                                    href="#">
                                                                    <i
                                                                        class="fas fa-trash-alt text-danger mr-2"></i>Hapus</a>
                                                            </form>
                                                        </div>
                                                        @endif
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if($lembarCount == $lembarCountFull)
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h5 class="m-0">Status Revisi</h5>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th width ="20px">No</th>
                                        <th>Nama</th>
                                        <th width="250px">Lembar Revisi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($lembar->unique('dosen_nama') as $item)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $item->dosen_nama }}</td>
                                            <td class="text-center">                                                
                                                <a target="_blank"
                                                    href="{{ route('revisi-mahasiswa.CetakLembarRevisi', $item->dosen_nip) }}"
                                                    class="btn btn-sm btn-danger text-white"
                                                    style="text-decoration: none; color: inherit;">
                                                    <i class="fas fa-file-pdf mr-1"></i> Cetak Lembar Revisi
                                                </a>
                                                <!-- <p class="text-gray">Belum Bisa Mencetak Lembar Revisi</p> -->                                                
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
    
    @foreach ($revisi as $s)
        <div class="modal fade" id="modal-{{ $s->id }}" tabindex="-1" role="dialog"
            aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalLabel">{{ $s->dokumen_syarat }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {{-- <p>{{ $dst->revisi_file_original }}</p> --}}
                        <embed
                            src="/stream-document/{{ encrypt(env('APP_FILE_SYARAT_TA_PATH') . $s->revisi_file) . '?dl=0&filename=' . $s->revisi_file_original }}&directory=draft_revisi"
                            type="application/pdf" width="100%" height="400px">
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@endsection


@push('js')
    <script>
        $(document).ready(function() {
            // Check if DataTable is already initialized
            if (!$.fn.DataTable.isDataTable('#datatable-revisi')) {
                $('#datatable-revisi').DataTable({
                    "responsive": true,
                    "lengthChange": false,
                    "autoWidth": false,
                    "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
                }).buttons().container().appendTo('#datatable-revisi_wrapper .col-md-6:eq(0)');
            }
        });
    </script>
@endpush
