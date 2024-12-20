<?php

function nim2kelas($nim)
{
    $temp = '';
    $depan_jenjang = substr($nim, 0, 1);
    if ($depan_jenjang == '3') {
        $temp .= 'IK-3';
    } elseif ($depan_jenjang == '4') {
        $temp .= 'TI-4';
    }
    $depan_kelas = substr($nim, 5, 1);
    if ($depan_kelas == 0) {
        $temp .= 'A';
    } elseif ($depan_kelas == 1) {
        $temp .= 'B';
    } elseif ($depan_kelas == 2) {
        $temp .= 'C';
    } elseif ($depan_kelas == 3) {
        $temp .= 'D';
    } elseif ($depan_kelas == 4) {
        $temp .= 'E';
    } elseif ($depan_kelas == 5) {
        $temp .= 'F';
    } elseif ($depan_kelas == 6) {
        $temp .= 'G';
    } elseif ($depan_kelas == 7) {
        $temp .= 'H';
    }

    return $temp;
}
?>
<!DOCTYPE html>
<html>

<head>
    <title></title>
    <style>
        table.main-table,
        table.not-main-table {
            margin-top: 10px;
            margin-bottom: 20px;
        }

        table.main-table td.first-col {
            border-left: 3px solid black !important;
        }

        table.main-table tr.first-row td {
            border-top: 3px solid black !important;
        }

        table.main-table td,
        table.main-table th {
            border-right: 3px solid black;
            border-bottom: 3px solid black;
        }

        table.not-main-table td.first-col,
        table.not-main-table th.first-col {
            border-left: 1px solid black !important;
        }

        table.not-main-table tr.first-row td,
        table.not-main-table tr.first-row th {
            border-top: 1px solid black !important;
        }

        table.not-main-table td,
        table.not-main-table th {
            border-right: 1px solid black;
            border-bottom: 1px solid black;
        }

        h1 {
            font-family: "Times New Roman", serif;
            font-size: 14px;
        }

        h2 {
            font-family: "Times New Roman", serif;
            font-size: 12px;
        }

        p {
            font-family: "Times New Roman", serif;
            font-size: 12px;
            text-align: justify;
        }

        * {
            font-family: "Times New Roman", serif;
            font-size: 12px;
        }
    </style>
</head>

<body style="padding: 100px; font-family: sans-serif;">
    <table cellpadding="5" cellspacing="0" width="100%" class="">
        <thead>
            <tr class="">
                <td style="text-align: center; height: 100px;">
                    <h1>
                        HALAMAN PERSETUJUAN
                    </h1>
                </td>
            </tr>
        </thead>
    </table>
    <div style="padding: 10px; height: 800px;">
        <p style="text-align: justify">
            Skripsi dengan judul <strong>"{{ $judul_ta }}"</strong> dibuat untuk melengkapi sebagian persyaratan menjadi Sarjana Terapan pada Program Studi Teknologi Rekayasa Komputer Jurusan Teknik Elektro Politeknik Negeri Semarang dan disetujui untuk diajukan dalam sidang ujian Skripsi.
        </p>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <table cellpadding="5" cellspacing="0" width="100%">
            <tr>
                <td align="center">
                    <br>
                    <p>Pembimbing I,</p><br>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[0]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $pembimbing[0]['ttd'] }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $pembimbing[0]['nama'] }}<br>
                    NIP. {{ $pembimbing[0]['nip'] }}</p><br>
                </td>
                <td align="center">
                    <p>Semarang, {{ $tanggal_approve }}<br>
                    Pembimbing II,</p><br>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[1]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $pembimbing[1]['ttd'] }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $pembimbing[1]['nama'] }}<br>
                    NIP. {{ $pembimbing[1]['nip'] }}</p><br>
                </td>
            </tr>
        </table>
        <table cellpadding="5" cellspacing="0" width="100%" style="margin-top:50px;">
            <tr>
                <td align="center">
                    <p>Mengetahui<br>
                    Ketua Program Studi S.Tr Teknologi Rekayasa Komputer<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[1]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $infokajur->file_ttd }}"
                        height="72">
                    <br>
                    <p>{{ $infokajur->nama_kajur }}<br>
                    NIP. {{ $infokajur->nip_kajur }}<br></p>
                </td>
            </tr>
        </table>
    </div>


    <div style="page-break-inside: auto"></div>
    <br>

    <table cellpadding="5" cellspacing="0" width="100%" class="">
        <thead>
            <tr class="">
                <td style="text-align: center; height: 100px;">
                    <h1>
                        HALAMAN PENGESAHAN
                    </h1>
                </td>
            </tr>
        </thead>
    </table>
    <div style="padding: 10px; height: 800px;">
        <p style="text-align: justify">
            Skripsi dengan judul "{{ $judul_ta }}" telah dipertahankan dalam ujian wawancara dan diterima sebagai syarat untuk menjadi Sarjana Terapan pada Program Studi Teknologi Rekayasa Komputer, Jurusan Teknik Elektro Politeknik Negeri Semarang pada tanggal {{ $tanggal_approve }}.
        </p>
        <br>
        <p align="center">Tim Penguji</p>
        <table cellpadding="5" cellspacing="0" width="100%">
            <tr>
                <td align="center">
                    <p>Penguji I,<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[0]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $infoujian->penguji1_ttd_path }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $infoujian->penguji1_nama }}<br>
                    NIP. {{ $infoujian->penguji1_nip }}<br></p>
                </td>
                <td align="center">
                    <p>Penguji II,<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[1]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $infoujian->penguji2_ttd_path }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $infoujian->penguji2_nama }}<br>
                    NIP. {{ $infoujian->penguji2_nip }}<br></p>
                </td>
                <td align="center">
                    <p>Penguji III,<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[1]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $infoujian->penguji3_ttd_path }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $infoujian->penguji3_nama }}<br>
                    NIP. {{ $infoujian->penguji3_nip }}<br></p>
                </td>
            </tr>
        </table>
        <table cellpadding="5" cellspacing="0" width="100%">
            <tr>
                <td align="center">
                    <br>
                    <p>Ketua,<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[0]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $pembimbing[0]['ttd'] }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $pembimbing[0]['nama'] }}<br>
                    NIP. {{ $pembimbing[0]['nip'] }}<br></p>
                </td>
                <td align="center">
                    <p>Sekretaris,<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[1]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $infoujian->sekretaris_ttd_path }}"
                        height="72" width="150">
                    <br>
                    <p>{{ $infoujian->sekretaris_nama }}<br>
                    NIP. {{ $infoujian->sekretaris_nip }}<br></p>
                </td>
            </tr>
        </table>
        <table cellpadding="5" cellspacing="0" width="100%" style="margin-top:50px;">
            <tr>
                <td align="center">
                    <p>Mengesahkan<br>
                    Ketua Jurusan Teknik Elektro<br></p>
                    <br>
                    <!-- <img src="https://sitama-elektro.polines.ac.id/dist/img/{{ $pembimbing[1]['ttd'] }}" -->
                    <img src="{{ asset('dist/img') . '/' . $infokajur->file_ttd }}"
                        height="72">
                    <br>
                    <p>{{ $infokajur->nama_kajur }}<br>
                    NIP. {{ $infokajur->nip_kajur }}<br></p>
                </td>
            </tr>
        </table>
    </div>
</body>

</html>
