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
                                            <a href="{{ route('ujian-sidang.index') }}" class="btn btn-tool"><i
                                                    class="fas fa-arrow-left"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col table-responsive">
                                    <table id="datatable-mhsbimb" class="table-striped table-bordered table-hover table">
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
                                                        @if (!isset($item->revisi_file))
                                                            <span class="badge badge-danger">Belum Upload</span>
                                                        @else
                                                            {{-- <a href="{{ asset('storage/draft_revisi/' . $item->revisi_file) }}"
                                                                target="_blank" class="btn btn-sm btn-success"><i
                                                                    class="fa fa-eye"></i></a> --}}
                                                            <a href="#" data-toggle="modal"
                                                                data-target="#modal-{{ $item->id }}"
                                                                class="btn btn-sm btn-success">
                                                                <i class="fa fa-eye"></i>
                                                            </a>
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
                                                            <form
                                                                action="{{ route('setujui-revisi', $item->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                <button
                                                                    class="confirm-verif btn btn-block btn-sm btn-success my-tooltip top">
                                                                    <i class="fa fa-check"></i>
                                                                    <span class="tooltiptext">Validasi Revisi</span>
                                                                </button>
                                                            </form>
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
@endsection


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


@push('js')
    <script>
        $('.toast').toast('show')

        $(function() {
            $("#datatable-mhsbimb").DataTable({
                "responsive": true,
                "searching": true,
                lengthMenu: [
                    [10, 20, -1],
                    [10, 20, 'All']
                ],
                pageLength: 10,
            });
        });
    </script>
@endpush
