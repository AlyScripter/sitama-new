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
@section('title', 'Revisi')
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
                                    <div class="col-md mb-md-0 mb-2">
                                        <select class="custom-select" name="penguji" onchange="this.form.submit()">
                                            <option value="">All Penguji</option>
                                            @foreach ($dosen->penguji as $penguji)
                                                <option value="{{ $penguji['dosen_nip_penguji'] }}"
                                                    @if (request('penguji') == $penguji['dosen_nip_penguji']) selected @endif>Penguji
                                                    {{ $loop->iteration . ' - ' . $penguji['penguji_nama'] }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col table-responsive">
                                    <table id="datatable-main" class="table-striped table-bordered table-hover table">                            
                                        <thead>
                                            <th>No</th>
                                            <th>Dosen Penguji</th>
                                            <!-- <th>Revisi</th> -->
                                            <th>Deskripsi</th>
                                            <th>Status</th>
                                        </thead>
                                        <tbody>
                                            @foreach ($revisi as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $item->dosen->dosen_nama }}</td>
                                                    <!-- <td class="text-center">
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
                                                    </td> -->
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
