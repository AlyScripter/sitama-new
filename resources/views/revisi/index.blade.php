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
                                    <div class="col-md mb-md-0 mb-2">
                                        <button type="submit" class="btn btn-sm btn-sm-block btn-primary">Filter</button>
                                    </div>
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
                                                    <td>{{ $item->revisi_file_original }}</td>
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
                                                        @if ($item->revisi_status == 1)
                                                            <a class="btn btn-sm btn-primary my-tooltip top"
                                                                href="{{ route('bimbingan-mahasiswa.show', $item->bimbingan_log_id) }}">
                                                                <i class="fas fa-eye"></i>
                                                                <span class="tooltiptext">
                                                                    Detail Bimbingan
                                                                </span>
                                                            </a>
                                                        @else
                                                            <button type="button"
                                                                class="btn btn-block btn-sm btn-outline-info"
                                                                data-toggle="dropdown"><i class="fas fa-cog"></i>
                                                            </button>
                                                            <div class="dropdown-menu" role="menu">
                                                                <a class="dropdown-item text-warning"
                                                                    href="">
                                                                    <i class="fas fa-edit text-warning mr-2"></i>Edit</a>
                                                                <div class="dropdown-divider"></div>
                                                                <form method="POST"
                                                                    action="">
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
@endsection
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
