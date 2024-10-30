

-- ==================Table: bimbingan_counts================== 

INSERT INTO `bimbingan_counts` (`id`, `total_bimbingan`) VALUES ('1', '3');


-- ==================Table: bimbingan_log================== 

INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('1', '2', '2025-01-20', 'Halo', 'mau bimibngan', 'Jobsheet 4 Naive Bayes.pdf', '20241011092129.pdf', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('2', '3', '2025-01-20', 'halo 2', 'bimbingan', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241011092714.pdf', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('3', '2', '2025-02-23', 'sdfad', 'dsfsdf', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241011094428.pdf', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('4', '2', '2025-01-10', 'rgfsg', 'gsfgdf', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241011094502.pdf', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('5', '3', '2024-01-20', 'dfsdf', 'sdfsdfsdd', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241012110929.pdf', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('6', '3', '2025-04-04', 'sdsgsgd', 'stwffsd', '', '', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('7', '4', '2024-01-20', 'Aku suka kerak telor', 'dfafadsf', '', '', '0');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('8', '4', '2024-02-10', 'Aku suka Tahu Bulat', 'asasfasf', '', '', '0');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('9', '4', '2024-03-10', 'Aku suka Cilor', 'sjfnsdofsdif', '', '', '0');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('10', '5', '2024-04-10', 'Aku cinta PP', 'aofnasf', '', '', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('11', '5', '2024-05-10', 'Aku cinta PP part 2', 'adfiadfoias', '', '', '1');
INSERT INTO `bimbingan_log` (`bimbingan_log_id`, `bimbingan_id`, `bimb_tgl`, `bimb_judul`, `bimb_desc`, `bimb_file_original`, `bimb_file`, `bimb_status`) VALUES ('12', '5', '2024-06-10', 'Aku cinta PP part 3', 'asifjwqrnas', '', '', '0');


-- ==================Table: bimbingans================== 

INSERT INTO `bimbingans` (`bimbingan_id`, `dosen_nip`, `ta_id`, `urutan`, `verified`) VALUES ('2', '12345678', '1', '1', '1');
INSERT INTO `bimbingans` (`bimbingan_id`, `dosen_nip`, `ta_id`, `urutan`, `verified`) VALUES ('3', '234567891', '1', '2', '1');
INSERT INTO `bimbingans` (`bimbingan_id`, `dosen_nip`, `ta_id`, `urutan`, `verified`) VALUES ('4', '345678912', '2', '1', '0');
INSERT INTO `bimbingans` (`bimbingan_id`, `dosen_nip`, `ta_id`, `urutan`, `verified`) VALUES ('5', '456789123', '2', '2', '0');


-- ==================Table: dokumen_syarat_ta================== 

INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('1', 'Surat Keterangan Magang', '', '1', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('2', 'Surat Keterangan KKL', '', '1', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('3', 'Sertifikat TOEIC', '', '1', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('4', 'Naskah Tugas Akhir/Skripsi', '', '1', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('6', 'Lembar Kontrol Bimbingan', '', '0', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('7', 'Surat Keterangan Selesai Bimbingan', '', '1', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('8', 'Form Keterangan Siap Ujian', '', '1', '');
INSERT INTO `dokumen_syarat_ta` (`dokumen_id`, `dokumen_syarat`, `dokumen_file`, `is_active`, `verified`) VALUES ('9', 'Sertifikasi Kompetensi (Oracle, MTCNA, dll)', '', '1', '');


-- ==================Table: dosen================== 

INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('012345678', 'Muhammad Axeylendra Handoko', 'Exel', 'exel@polines.ac.id', '1', '1', '1', '0', '0', '0', 'ttd_exel.jpg');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('12345678', 'Muhammad Januar Rifqi Nanda', 'Januar', 'januar@polines.ac.id', '1', '1', '1', '1', '1', '1', 'ttd_januar.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('234567891', 'Ilham Indra Atmaja', 'Indra', 'indra@polines.ac.id', '2', '1', '1', '1', '1', '1', 'ttd_indra.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('345678912', 'Bagus Sadewa', 'Dewa', 'dewa@polines.ac.id', '1', '1', '1', '1', '1', '1', 'ttd_dewa.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('456789123', 'Muhammad Aly', 'Aly', 'aly@polines.ac.id', '1', '1', '1', '1', '1', '1', 'ttd_aly.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('567891234', 'Zulvikar Kharisma', 'Zul', 'zulvikar@polines.ac.id', '1', '1', '1', '0', '1', '1', 'ttd_zul.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('678912345', 'Azka Nur Vadel', 'Azka', 'azka@polines.ac.id', '1', '1', '1', '0', '1', '1', 'ttd_azka.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('789123456', 'Muhammad Dzaki', 'Dzaki', 'dzaki@polines.ac.id', '1', '1', '0', '0', '1', '1', 'ttd_dzaki.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('891234567', 'Muhammad Bima', 'Bima', 'bima@polines.ac.id', '1', '1', '0', '0', '1', '1', 'ttd_bima.png');
INSERT INTO `dosen` (`dosen_nip`, `dosen_nama`, `dosen_nama_singkatan`, `email`, `homebase`, `is_pembimbing`, `is_penguji`, `is_penguji_utama`, `is_sekretaris`, `is_sekretaris_cadangan`, `file_ttd`) VALUES ('912345678', 'Muhammad Rizal', 'Rizal', 'rizal@polines.ac.id', '1', '1', '1', '0', '0', '0', 'ttd_rizal.png');


-- ==================Table: jadwal_sidang================== 

INSERT INTO `jadwal_sidang` (`jadwal_id`, `tgl_sidang`, `sesi_id`, `ruangan_id`) VALUES ('1', '2024-10-02', '1', '1');
INSERT INTO `jadwal_sidang` (`jadwal_id`, `tgl_sidang`, `sesi_id`, `ruangan_id`) VALUES ('2', '2024-10-04', '2', '2');
INSERT INTO `jadwal_sidang` (`jadwal_id`, `tgl_sidang`, `sesi_id`, `ruangan_id`) VALUES ('3', '2024-10-18', '1', '1');
INSERT INTO `jadwal_sidang` (`jadwal_id`, `tgl_sidang`, `sesi_id`, `ruangan_id`) VALUES ('4', '2025-10-08', '2', '2');


-- ==================Table: kode_prodi================== 

INSERT INTO `kode_prodi` (`prodi_ID`, `inisial_prodi`, `kode_ppddikti`, `program_studi`, `jenjang`, `jurusan`) VALUES ('1', 'IK', '55401', 'Teknik Informatika', 'Diploma III', 'Teknik Elektro');
INSERT INTO `kode_prodi` (`prodi_ID`, `inisial_prodi`, `kode_ppddikti`, `program_studi`, `jenjang`, `jurusan`) VALUES ('2', 'TI', '56301', 'Teknologi Rekayasa Komputer', 'Sarjana Terapan', 'Teknik Elektro');


-- ==================Table: komponen_penilian================== 

INSERT INTO `komponen_penilian` (`komponen_id`, `nama_komponen`, `bobot_komponen`, `jenis_penilian`) VALUES ('1', 'Proposal', '20', '0');
INSERT INTO `komponen_penilian` (`komponen_id`, `nama_komponen`, `bobot_komponen`, `jenis_penilian`) VALUES ('2', 'Laporan', '80', '0');
INSERT INTO `komponen_penilian` (`komponen_id`, `nama_komponen`, `bobot_komponen`, `jenis_penilian`) VALUES ('1', 'Proposal', '20', '0');
INSERT INTO `komponen_penilian` (`komponen_id`, `nama_komponen`, `bobot_komponen`, `jenis_penilian`) VALUES ('2', 'Laporan', '80', '0');


-- ==================Table: komponen_penilian_detail================== 

INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('1', '1', 'Tujuan sasaran Magang');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('2', '1', 'Kelengkapan Proposal Magang
a) Kesesuaian antara tujuan dan sasaran
b) Kesesuaian perencanaan kerja
c) Sistematika penulisan)');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('4', '2', 'Sistematika penulisan');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('5', '2', 'Bahasa 
a) Mudah dan dimengerti
b) Bahasa Indonesia EYD');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('6', '2', 'Isi
a) Kualitas aktivitas mahasiswa
b) Pengalaman baru yang diperoleh
c) Kemampuan memecahkan masalah
d) Kemampuan menyimpulkan
e) Kelengkapan lampiran');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('1', '1', 'Tujuan sasaran Magang');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('2', '1', 'Kelengkapan Proposal Magang
a) Kesesuaian antara tujuan dan sasaran
b) Kesesuaian perencanaan kerja
c) Sistematika penulisan)');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('4', '2', 'Sistematika penulisan');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('5', '2', 'Bahasa 
a) Mudah dan dimengerti
b) Bahasa Indonesia EYD');
INSERT INTO `komponen_penilian_detail` (`komponen_detail_id`, `komponen_id`, `keterangan`) VALUES ('6', '2', 'Isi
a) Kualitas aktivitas mahasiswa
b) Pengalaman baru yang diperoleh
c) Kemampuan memecahkan masalah
d) Kemampuan menyimpulkan
e) Kelengkapan lampiran');


-- ==================Table: lembar_pengesahan================== 

INSERT INTO `lembar_pengesahan` (`id`, `file_name`, `created_at`, `updated_at`, `mhs_nim`, `file_name_original`) VALUES ('2', '20241027090706.pdf', '', '', '43323221', 'Motivation Letter.docx.docx.pdf');


-- ==================Table: mahasiswa================== 

INSERT INTO `mahasiswa` (`mhs_nim`, `mhs_nama`, `prodi_ID`, `email`) VALUES ('43323221', 'Januar', '2', 'januar@gmail.com');
INSERT INTO `mahasiswa` (`mhs_nim`, `mhs_nama`, `prodi_ID`, `email`) VALUES ('43323220', 'Nanda', '1', 'nanda@gmail.com');
INSERT INTO `mahasiswa` (`mhs_nim`, `mhs_nama`, `prodi_ID`, `email`) VALUES ('43323222', 'Rifqi', '2', 'rifqi@gmail.com');


-- ==================Table: master_ta================== 

INSERT INTO `master_ta` (`master_ta_id`, `ta`, `status`) VALUES ('1', '2024/2025', '1');
INSERT INTO `master_ta` (`master_ta_id`, `ta`, `status`) VALUES ('2', '2025/2026', '0');


-- ==================Table: menus================== 

INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('1', 'Menu Manajemen', '#', '', '', '0', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('2', 'Dashboard', 'home', 'fas fa-home', '', '1', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('3', 'Manajemen Pengguna', '#', 'fas fa-users-cog', '', '1', '2');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('4', 'Kelola Pengguna', 'manage-user', '', '', '3', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('5', 'Kelola Role', 'manage-role', '', '', '3', '2');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('6', 'Kelola Menu', 'manage-menu', '', '', '3', '3');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('7', 'Backup Server', '#', '', '', '0', '2');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('8', 'Backup Database', 'dbbackup', 'fas fa-database', '', '7', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('10', 'Dashboard Tugas Akhir', 'dashboard-mahasiswa', 'fas fa-home', '', '32', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('13', 'Pembimbingan', 'bimbingan-mahasiswa', 'fas fa-chalkboard-teacher', '', '32', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('16', 'Daftar Tugas Akhir', 'daftar-tugas-akhir', 'fas fa-clipboard-list', '', '32', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('18', 'Sidang Tugas Akhir', 'sidang-tugas-akhir', 'fas fa-graduation-cap', '', '32', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('19', 'Menu Manajemen', '#', '', '', '0', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('20', 'Dashboard', 'home', 'fas fa-home', '', '19', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('21', 'Manajemen Pengguna', '#', 'fas fa-users-cog', '', '19', '2');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('22', 'Kelola Pengguna', 'manage-user', '', '', '21', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('24', 'Mahasiswa Bimbingan', 'mhsbimbingan', 'fas fa-chalkboard-teacher', '', '46', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('25', 'Sidang Tugas Akhir', 'ujian-sidang', 'fas fa-graduation-cap', '', '46', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('27', 'Bimbingan Tugas Akhir', 'bimbingan', 'fas fa-folder', '', '49', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('29', 'Sidang Tugas Akhir', 'ta', 'fas fa-user-graduate', '', '49', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('30', 'Magang', '#', 'fas fa-industry', '', '43', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('31', 'Info Magang', 'daftar-magang', 'fas fa-info-circle', '', '30', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('32', 'Tugas Akhir', '#', 'fas fa-user-graduate', '', '43', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('33', 'Log Book', 'logbook-magang', 'fas fa-industry', '', '30', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('34', 'Bimbingan', 'jadwal-bimbingan', 'fas fa-clipboard', '', '30', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('35', 'File Magang', 'laporanmagang', 'fas fa-file', '', '30', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('36', 'Seminar', 'seminar-magang', 'fas fa-graduation-cap', '', '30', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('37', 'Nilai', 'nilai-magang', 'fas fa-award', '', '30', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('38', 'Data Bimbingan', 'bimbingan-dosen-magang', 'fas fa-users', '', '45', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('39', 'Penilaian Akhir', 'nilai-dosen-magang', 'fas fa-graduation-cap', '', '45', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('40', 'Grafik', 'grafik', 'fas fa-chart-line', '', '48', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('41', 'Data Magang', 'data-magang', 'fas fa-briefcase', '', '48', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('42', 'Seminar', 'seminar', 'fas fa-laptop', '', '48', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('43', 'Mahasiswa', '#', '-', '', '0', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('44', 'Dosen', '#', '-', '', '0', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('45', 'Magang Dosen', '#', 'fas fa-industry', '', '44', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('46', 'Tugas Akhir Dosen', '#', 'fas fa-user-graduate', '', '44', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('47', 'Admin', '#', '-', '', '0', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('48', 'Magang Admin', '#', 'fas fa-industry', '', '47', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('49', 'Tugas Akhir Admin', '#', 'fas fa-user-graduate', '', '47', '1');
INSERT INTO `menus` (`id`, `nama_menu`, `url`, `icon`, `id_html`, `parent_id`, `urutan`) VALUES ('50', 'Statistik Penguji', 'satistik-penguji', '', '', '49', '1');


-- ==================Table: migrations================== 

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('5', '2024_01_01_234158_create_menus_table', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('6', '2024_02_02_053619_create_permission_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('7', '2024_02_03_232722_create_role_has_menus_tables', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('8', '2024_02_03_235312_add_menu_id_on_permission', '1');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('9', '2024_10_27_195948_create_lembar_pengesahan_table', '2');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('10', '2024_10_27_201632_add_to_lembar_pengesahan_table', '3');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('11', '2024_10_27_210344_add_to_lembar_pengesahan_table', '4');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('12', '2024_10_28_102333_create_revisi_mahasiswas_table', '5');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('13', '2024_10_28_122906_add_to_revisi_mahasiswas_table', '6');
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES ('14', '2024_10_28_130411_add_to_revisi_mahasiswas_table', '7');


-- ==================Table: model_has_roles================== 

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('1', 'App\\Models\\User', '1');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '1');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '2');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '3');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '4');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '5');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '6');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '7');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '7');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '8');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '8');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '9');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '9');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '10');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '10');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '11');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '11');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '12');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '12');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '13');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '14');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '26');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '27');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '28');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '29');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '30');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '31');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '32');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '33');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '34');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '35');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '36');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '37');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '38');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('1', 'App\\Models\\User', '39');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '39');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '39');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '40');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '41');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '42');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('1', 'App\\Models\\User', '43');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '43');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '43');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '44');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '45');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '46');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '47');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '57');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '58');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '59');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '60');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '61');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '62');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '63');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '64');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '65');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '66');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '67');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '68');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '69');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '70');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '71');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '72');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '73');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '74');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '75');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '76');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '77');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '78');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '79');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '80');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '81');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '82');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '83');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '84');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '85');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '86');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '87');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '88');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '89');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '90');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '91');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '92');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '93');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '94');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '95');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '96');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '97');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '98');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '99');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '100');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '101');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '102');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '103');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '104');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '105');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '106');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '107');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '108');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '109');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '110');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '111');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '112');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '113');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '114');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '115');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '116');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '117');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '118');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '119');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '120');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '121');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '122');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '123');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '124');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '125');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '126');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '127');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '128');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '129');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '130');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '131');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '132');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '133');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '134');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '135');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '136');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '137');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '138');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '139');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '140');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '141');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '142');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '143');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '144');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '145');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '146');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '147');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '148');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '149');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '150');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '151');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '152');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '153');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '154');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '155');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '156');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '157');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '158');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '159');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '160');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '161');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '162');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '163');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '164');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '165');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '166');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '167');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '168');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '169');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '170');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '171');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '172');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '173');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '174');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '175');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '176');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '177');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '178');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '179');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '180');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '181');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '182');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '183');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '184');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '185');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '186');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '187');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '188');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '189');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '190');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '191');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '192');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '193');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '194');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '195');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '196');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '197');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '198');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '199');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '200');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '201');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '202');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '203');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '204');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '205');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '206');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '207');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '208');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '209');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '210');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '211');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '212');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '213');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '214');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '215');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '216');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '217');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '218');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '219');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '220');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '221');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '222');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '223');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '224');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '225');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '226');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '227');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '228');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '229');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '230');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '231');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '232');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '233');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '234');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '235');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '236');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '237');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '238');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '239');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '240');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '241');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '242');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '243');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '244');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '245');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '246');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '247');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '248');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '249');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '250');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '251');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '252');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '253');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '254');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '255');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '256');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '257');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '258');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '259');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '260');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '261');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '262');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '263');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '264');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '265');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '266');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '267');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '268');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '269');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '270');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '271');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '272');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '273');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '274');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '275');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '276');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '277');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '278');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '279');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '280');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '281');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '282');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '283');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '284');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '285');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '286');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '287');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '288');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '289');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '290');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '291');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '292');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '293');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '294');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '295');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '296');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '297');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '298');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '299');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '300');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '301');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '302');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '303');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '304');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '305');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '306');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '307');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '308');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '309');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '310');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '311');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '312');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '313');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '314');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '315');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '316');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '317');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '318');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '319');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '320');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '321');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '322');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '323');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '324');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '325');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '326');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '327');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '328');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '329');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '330');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '331');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '332');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '333');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '334');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '335');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '336');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '337');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '338');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '339');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '340');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '341');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '342');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '343');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '344');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '345');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '346');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '347');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '348');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '349');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '350');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '351');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '352');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '353');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '354');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '355');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '356');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '357');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '358');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '359');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '360');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '361');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '362');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '363');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '364');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '365');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '366');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '367');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '368');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '369');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '370');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '371');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '372');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '373');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '374');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '375');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '376');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '377');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '378');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '379');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '380');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '381');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '382');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '383');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '384');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '385');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '386');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '387');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '388');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '389');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '390');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '391');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '392');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '393');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '394');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '395');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '396');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '397');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '398');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '399');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '400');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '401');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '402');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '403');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '404');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '405');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '406');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '407');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '408');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '409');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '410');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '411');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '412');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '413');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '414');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '415');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '416');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '417');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '418');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '419');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '420');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '421');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '422');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '423');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '424');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '425');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '426');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '427');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '428');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '429');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '430');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '431');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '432');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '433');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '434');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '435');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '436');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '437');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '438');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '439');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '440');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '441');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '442');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '443');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '444');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '445');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '446');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '447');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '448');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '449');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '450');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '451');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '452');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '453');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '454');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '455');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '456');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '457');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '458');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '459');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '460');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '461');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '462');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '463');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '464');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '465');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '466');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '467');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '468');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '469');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '470');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '471');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '472');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '473');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '474');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '475');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '476');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '477');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '478');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '479');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '480');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '481');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '482');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '483');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '484');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '485');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '486');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '487');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '488');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '489');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '490');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '491');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '492');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '493');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '494');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '495');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '496');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '497');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '498');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '499');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '500');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '501');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '502');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '503');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '504');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '505');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '506');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '507');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '508');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '509');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '510');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '511');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '512');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '513');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '514');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '515');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '516');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '517');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '518');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '519');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '520');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '521');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '522');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '523');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '524');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '525');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '526');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '527');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '528');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '529');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '530');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '531');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '532');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '533');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '534');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '535');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '536');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '537');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '538');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '539');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '540');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '541');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '542');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '543');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '544');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '545');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '546');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '547');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '548');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '549');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '550');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '551');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '552');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '553');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '554');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '555');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '556');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '557');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '558');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '559');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '560');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '561');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '562');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '563');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '564');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '565');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '566');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '567');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '568');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '569');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '570');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '571');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '572');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '573');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '574');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '575');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '576');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '577');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '578');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '579');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '580');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '581');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '582');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '583');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '584');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '585');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '586');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '587');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '588');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '589');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '590');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '591');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '592');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '593');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '594');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '595');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '596');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '597');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('2', 'App\\Models\\User', '598');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '1080');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('4', 'App\\Models\\User', '1084');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '1085');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '1086');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '1087');
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES ('3', 'App\\Models\\User', '1088');


-- ==================Table: no_sk================== 

INSERT INTO `no_sk` (`id`, `tahun_ajaran`, `no_sk`, `file_ttd`, `prodi`, `prodi_ID`, `nip_kajur`, `nama_kajur`, `file_paraf`) VALUES ('1', '2024/2025', 'NO. 3256/PL4.1.3/PK/2024', 'ttd_kajur.png', 'D4TI', '2', '198504102014041002', 'Prayitno, S.ST., M.T., Ph.D.', 'paraf_kuwat.png');
INSERT INTO `no_sk` (`id`, `tahun_ajaran`, `no_sk`, `file_ttd`, `prodi`, `prodi_ID`, `nip_kajur`, `nama_kajur`, `file_paraf`) VALUES ('2', '2024/2025', 'NO. 3257/PL4.1.3/PK/2024', 'ttd_kajur.png', 'D3IK', '1', '198504102014041002', 'Prayitno, S.ST., M.T., Ph.D.', 'paraf_idha.png');


-- ==================Table: penilaian_pembimbing================== 

INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '1', '12345678', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '2', '12345678', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '3', '12345678', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '4', '12345678', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '1', '234567891', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '2', '234567891', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '3', '234567891', '100');
INSERT INTO `penilaian_pembimbing` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '4', '234567891', '100');


-- ==================Table: penilaian_penguji================== 

INSERT INTO `penilaian_penguji` (`penilaian_id`, `ta_sidang_id`, `dosen_nip`, `urutan`, `catatan_revisi`, `approval_revisi`) VALUES ('0', '0', '456789123', '1', '', '');
INSERT INTO `penilaian_penguji` (`penilaian_id`, `ta_sidang_id`, `dosen_nip`, `urutan`, `catatan_revisi`, `approval_revisi`) VALUES ('0', '0', '567891234', '2', '', '');
INSERT INTO `penilaian_penguji` (`penilaian_id`, `ta_sidang_id`, `dosen_nip`, `urutan`, `catatan_revisi`, `approval_revisi`) VALUES ('0', '0', '678912345', '3', '', '');


-- ==================Table: penilaian_penguji_detail================== 

INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '1', '456789123', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '2', '456789123', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '3', '456789123', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '4', '456789123', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '1', '678912345', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '2', '678912345', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '3', '678912345', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '4', '678912345', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '1', '567891234', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '2', '567891234', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '3', '567891234', '100');
INSERT INTO `penilaian_penguji_detail` (`penilaian_id`, `ta_sidang_id`, `nilai_id`, `dosen_nip`, `berinilai`) VALUES ('0', '0', '4', '567891234', '100');


-- ==================Table: permissions================== 

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('1', 'create_user', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '4');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('2', 'read_user', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '4');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('3', 'update_user', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '4');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('4', 'delete_user', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '4');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('5', 'create_role', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '5');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('6', 'read_role', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '5');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('7', 'update_role', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '5');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('8', 'delete_role', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '5');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('9', 'create_menu', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '6');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('10', 'read_menu', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '6');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('11', 'update_menu', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '6');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('12', 'delete_menu', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '6');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('13', 'backup_database', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53', '8');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('14', 'read_mhsbimbingan', 'web', '2024-06-08 06:04:12', '2024-06-08 06:04:12', '24');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('15', 'create_mhsbimbingan', 'web', '2024-06-08 06:04:29', '2024-06-08 06:04:29', '24');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('16', 'update_mhsbimbingan', 'web', '2024-06-08 06:04:48', '2024-06-08 06:04:48', '24');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('17', 'delete_mhsbimbingan', 'web', '2024-06-08 06:05:00', '2024-06-08 06:05:00', '24');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('18', 'create_bimbingan', 'web', '2024-06-12 12:11:10', '2024-06-12 12:11:10', '27');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('19', 'read_bimbingan', 'web', '2024-06-12 12:11:22', '2024-06-12 12:11:22', '27');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('20', 'update_bimbingan', 'web', '2024-06-12 12:11:37', '2024-06-12 12:11:37', '27');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('21', 'delete_bimbingan', 'web', '2024-06-12 12:11:47', '2024-06-12 12:11:47', '27');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('23', 'read_ta', 'web', '2024-06-12 12:12:46', '2024-06-12 12:12:46', '29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('24', 'create_ta', 'web', '2024-06-12 12:12:56', '2024-06-12 12:12:56', '29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('25', 'delete_ta', 'web', '2024-06-12 12:13:04', '2024-06-12 12:13:04', '29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('26', 'update_ta', 'web', '2024-06-12 12:13:13', '2024-06-12 12:13:13', '29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('27', 'read_magang', 'web', '2024-06-13 17:27:41', '2024-06-13 17:27:41', '41');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('28', 'create_magang', 'web', '2024-06-13 17:27:58', '2024-06-13 17:27:58', '41');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('29', 'update_magang', 'web', '2024-06-13 17:28:10', '2024-06-13 17:28:10', '41');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('30', 'delete_magang', 'web', '2024-06-13 17:28:23', '2024-06-13 17:28:23', '41');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('31', 'read_seminar', 'web', '2024-06-13 17:28:34', '2024-06-13 17:28:34', '42');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('32', 'create_seminar', 'web', '2024-06-13 17:28:44', '2024-06-13 17:28:44', '42');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('33', 'update_seminar', 'web', '2024-06-13 17:28:56', '2024-06-13 17:28:56', '42');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `menu_id`) VALUES ('34', 'delete_seminar', 'web', '2024-06-13 17:29:07', '2024-06-13 17:29:07', '42');


-- ==================Table: personal_access_tokens================== 

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('1', 'App\\Models\\User', '1', 'API Token', 'a045598baff2ca802cdaf6e6b9c16d814b1bcc560a73b81d3dc97d6835f00d9c', '[\"*\"]', '', '', '2024-10-12 09:53:56', '2024-10-12 09:53:56');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('2', 'App\\Models\\User', '2', 'API Token', '8fefaa8bfe7d8c0e1fb101c0e5782c5f835ef249ea5b5ac3733d082a056390ad', '[\"*\"]', '2024-10-12 10:13:56', '', '2024-10-12 10:12:15', '2024-10-12 10:13:56');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('3', 'App\\Models\\User', '2', 'API Token', '2dae8357a5a5623580423bd99fd60915fdcce99f0dfd8f362ade5bdbf556131c', '[\"*\"]', '', '', '2024-10-12 10:21:21', '2024-10-12 10:21:21');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('4', 'App\\Models\\User', '3', 'API Token', '12e881e499910ac7777c92f509e302d1c37414268e921b7284d789cb9dd20559', '[\"*\"]', '', '', '2024-10-12 10:22:58', '2024-10-12 10:22:58');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('5', 'App\\Models\\User', '2', 'API Token', '3f42cdd7b321dbceb4c588da702dbe540f74eb3f2811b51ea56f8e9cef09c13d', '[\"*\"]', '', '', '2024-10-12 10:36:13', '2024-10-12 10:36:13');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('6', 'App\\Models\\User', '2', 'API Token', '580b6fb0cc72816fa3722f2cb998d2a06989d79e3325b5d2d5422faa5031e0ab', '[\"*\"]', '', '', '2024-10-12 10:37:52', '2024-10-12 10:37:52');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('7', 'App\\Models\\User', '2', 'API Token', '0405d3ce303efaf1917d0276130a967fc993e61d61925adb736755538ffd575f', '[\"*\"]', '2024-10-12 10:43:59', '', '2024-10-12 10:40:41', '2024-10-12 10:43:59');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('8', 'App\\Models\\User', '3', 'API Token', '05f920e95426b68815701226d380e84f1cf8a04104bd0fe90e6262c3ba6724fc', '[\"*\"]', '', '', '2024-10-12 10:40:47', '2024-10-12 10:40:47');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('11', 'App\\Models\\User', '2', 'API Token', 'e21c0d307411600ccf3888075307662e35cce565a3aade7aa9e77a65e2e9756e', '[\"*\"]', '', '', '2024-10-13 16:47:20', '2024-10-13 16:47:20');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('12', 'App\\Models\\User', '3', 'API Token', '586abc1ffd629fc473688c6f6e02e43efe4daaaa1442b9b1fa84913c30882671', '[\"*\"]', '2024-10-19 20:18:11', '', '2024-10-19 20:17:14', '2024-10-19 20:18:11');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('13', 'App\\Models\\User', '3', 'API Token', '0db4b659192531b1b459d642f92ada78cb0fb8185ae08761c4a2c2eea361c92d', '[\"*\"]', '', '', '2024-10-19 20:18:21', '2024-10-19 20:18:21');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('14', 'App\\Models\\User', '3', 'API Token', 'ab00ea5bc08d23c87575c9b301e1003e8c30b5cc220fdd86ddf65129635ac186', '[\"*\"]', '', '', '2024-10-19 20:19:48', '2024-10-19 20:19:48');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('16', 'App\\Models\\User', '3', 'API Token', 'd819e7bb48bc993102bf852fcedb50e4cd2d4d6fab05dd30219fa93ec1ef9754', '[\"*\"]', '', '', '2024-10-19 20:23:43', '2024-10-19 20:23:43');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('17', 'App\\Models\\User', '3', 'API Token', '19d66895484afd891b2dde4da86f8e43d75ad982a2cf50ffab12b2bd70469a8c', '[\"*\"]', '', '', '2024-10-19 20:23:45', '2024-10-19 20:23:45');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('18', 'App\\Models\\User', '3', 'API Token', '5002a2241eaafb32e3ebb9589acb19c04c590a5bff315b600219ab9980bb4d5b', '[\"*\"]', '', '', '2024-10-19 20:24:01', '2024-10-19 20:24:01');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('19', 'App\\Models\\User', '3', 'API Token', '4adde825ea4282701e9c669cae22f624b4dca0a41550f726c11274c00390950d', '[\"*\"]', '', '', '2024-10-19 20:24:41', '2024-10-19 20:24:41');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES ('23', 'App\\Models\\User', '2', 'API Token', '373eb23ae6236b2027cdf4bda5950feb8901214c549ec3b02063bb9b8ece4136', '[\"*\"]', '2024-10-21 07:51:00', '', '2024-10-21 07:50:16', '2024-10-21 07:51:00');


-- ==================Table: revisi_mahasiswas================== 

INSERT INTO `revisi_mahasiswas` (`id`, `revisi_deskripsi`, `revisi_file`, `revisi_file_original`, `revisi_status`, `created_at`, `updated_at`, `dosen_nip`, `mhs_nim`) VALUES ('1', 'Halo', '20241028015123.pdf', 'Motivation Letter.docx.docx-1.pdf', '', '', '', '12345678', '43323221');
INSERT INTO `revisi_mahasiswas` (`id`, `revisi_deskripsi`, `revisi_file`, `revisi_file_original`, `revisi_status`, `created_at`, `updated_at`, `dosen_nip`, `mhs_nim`) VALUES ('2', 'halo bang', '20241028025302.pdf', 'LKTI Meenlogy.pdf', '', '', '', '234567891', '43323221');
INSERT INTO `revisi_mahasiswas` (`id`, `revisi_deskripsi`, `revisi_file`, `revisi_file_original`, `revisi_status`, `created_at`, `updated_at`, `dosen_nip`, `mhs_nim`) VALUES ('3', 'gsadgah', '20241028035304.pdf', 'Motivation Letter.docx.docx-1.pdf', '', '', '', '567891234', '43323221');


-- ==================Table: role_has_menus================== 

INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('1', '1', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('2', '2', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('3', '3', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('4', '4', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('5', '5', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('6', '6', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('7', '7', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('8', '8', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('471', '43', '2');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('472', '32', '2');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('473', '10', '2');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('474', '13', '2');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('475', '16', '2');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('476', '18', '2');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('477', '1', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('478', '2', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('479', '3', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('480', '4', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('481', '5', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('482', '6', '1');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('483', '47', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('484', '48', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('485', '40', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('486', '41', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('487', '42', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('488', '49', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('489', '27', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('490', '29', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('491', '50', '4');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('506', '44', '3');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('507', '45', '3');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('508', '38', '3');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('509', '39', '3');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('510', '46', '3');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('511', '24', '3');
INSERT INTO `role_has_menus` (`id`, `menu_id`, `role_id`) VALUES ('512', '25', '3');


-- ==================Table: role_has_permissions================== 

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('2', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('3', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('4', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('5', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('6', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('7', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('8', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('9', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('10', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('11', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('12', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('13', '1');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('14', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('15', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('16', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('17', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('18', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('19', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('20', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('23', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('26', '3');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('18', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('19', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('20', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('21', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('23', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('24', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('25', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('26', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('27', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('28', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('29', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('30', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('31', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('32', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('33', '4');
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES ('34', '4');


-- ==================Table: roles================== 

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('1', 'superadmin', 'web', '2024-10-11 19:51:53', '2024-10-11 19:51:53');
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('2', 'mahasiswa', 'web', '2024-03-28 06:24:10', '2024-03-28 06:24:10');
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('3', 'dosen', 'web', '2024-03-28 06:45:37', '2024-03-28 06:45:37');
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES ('4', 'admin', 'web', '2024-06-13 15:06:41', '2024-06-13 15:06:41');


-- ==================Table: ruangan_ta================== 

INSERT INTO `ruangan_ta` (`ruangan_id`, `ruangan_nama`) VALUES ('1', 'Ruang Dosen SB');
INSERT INTO `ruangan_ta` (`ruangan_id`, `ruangan_nama`) VALUES ('2', 'Ruang Dosen SA');


-- ==================Table: sesi_ta================== 

INSERT INTO `sesi_ta` (`sesi_id`, `sesi_nama`, `sesi_keterangan`, `sesi_waktu_mulai`, `sesi_waktu_selesai`, `sesi_waktu_mulai_jumat`, `sesi_waktu_selesai_jumat`) VALUES ('1', 'sesi 1', 'sidang', '07:00', '11:00', '07:00', '09:00');
INSERT INTO `sesi_ta` (`sesi_id`, `sesi_nama`, `sesi_keterangan`, `sesi_waktu_mulai`, `sesi_waktu_selesai`, `sesi_waktu_mulai_jumat`, `sesi_waktu_selesai_jumat`) VALUES ('2', 'sesi 2', 'sesi', '13:00', '16:00', '13:00', '15:00');


-- ==================Table: syarat_sidang================== 

INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '1', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013014856.pdf', '1');
INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '2', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013014906.pdf', '1');
INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '3', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013015647.pdf', '1');
INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '4', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013015655.pdf', '1');
INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '7', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013015702.pdf', '1');
INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '8', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013015710.pdf', '1');
INSERT INTO `syarat_sidang` (`syarat_sidang_id`, `ta_id`, `dokumen_id`, `dokumen_file_original`, `dokumen_file`, `verified`) VALUES ('0', '1', '9', 'jobsheet5_muhammad_januar_rifqi_nanda_43323221_jaringan_komputer_1.pdf', '20241013015717.pdf', '1');


-- ==================Table: ta_sidang================== 

INSERT INTO `ta_sidang` (`ta_sidang_id`, `ta_id`, `jadwal_id`, `dosen_nip`, `judul_final`, `nilai_akhir`, `nilai_pembimbing`, `nilai_penguji`, `status_lulus`, `revisi_file`, `revisi_file_original`, `verified`) VALUES ('0', '1', '3', '345678912', 'Hello World', '100.00', '50.00', '50.00', '2', '20241028101145.pdf', 'Motivation Letter.docx.docx-1.pdf', '');


-- ==================Table: tas================== 

INSERT INTO `tas` (`ta_id`, `mhs_nim`, `ta_judul`, `tahun_akademik`) VALUES ('0', '43323222', 'Aku suka Sempolan', '2024/2025');
INSERT INTO `tas` (`ta_id`, `mhs_nim`, `ta_judul`, `tahun_akademik`) VALUES ('1', '43323221', 'Hello World', '2024/2025');
INSERT INTO `tas` (`ta_id`, `mhs_nim`, `ta_judul`, `tahun_akademik`) VALUES ('2', '43323220', 'Aku suka Makaroni Telor', '2024/2025');


-- ==================Table: tas_mahasiswa================== 

INSERT INTO `tas_mahasiswa` (`ta_id`, `mhs_nim`) VALUES ('0', '43323222');
INSERT INTO `tas_mahasiswa` (`ta_id`, `mhs_nim`) VALUES ('1', '43323221');
INSERT INTO `tas_mahasiswa` (`ta_id`, `mhs_nim`) VALUES ('2', '43323220');


-- ==================Table: unsur_nilai_pembimbing================== 

INSERT INTO `unsur_nilai_pembimbing` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('1', 'Kedisiplinan dalam bimbingan', '0.10');
INSERT INTO `unsur_nilai_pembimbing` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('2', 'Kreativitas pemecahan masalah', '0.15');
INSERT INTO `unsur_nilai_pembimbing` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('3', 'Penguasaan materi', '0.20');
INSERT INTO `unsur_nilai_pembimbing` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('4', 'Kelengkapan dan referensi', '0.05');


-- ==================Table: unsur_nilai_penguji================== 

INSERT INTO `unsur_nilai_penguji` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('1', 'Isi dan Bobot Naskah', '0.15');
INSERT INTO `unsur_nilai_penguji` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('2', 'Penguasaan materi', '0.15');
INSERT INTO `unsur_nilai_penguji` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('3', 'Presentasi dan penampilan', '0.05');
INSERT INTO `unsur_nilai_penguji` (`nilai_id`, `unsur_nilai`, `bobot`) VALUES ('4', 'Hasil rancang bangun', '0.15');


-- ==================Table: users================== 

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('1', 'Super Admin', 'superadmin@gmail.com', '2024-10-22 12:09:14', '$2y$10$SLcQSzCHgOO.hMA/ZKvFQe26/.CEFjhojoBOm1UilutLVKuWyo7aq', '3nwWaj0GkIYafCbBavzkDBideUWHHGqNUc0dZeEhkvX487ORfkKj5mwAt1aS', '2024-10-11 19:51:53', '2024-10-22 12:09:14');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('2', 'Muhammad Januar Rifqi Nanda', 'januar@gmail.com', '2024-10-11 20:10:56', '$2y$10$QcE7eThrX97yFK3f47UusOWHKloC7m4y1TdEW48eAF3m5LitM4vJC', '', '2024-10-11 20:10:56', '2024-10-11 20:10:56');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('3', 'Muhammad Januar Rifqi Nanda Dosen', 'januar@polines.ac.id', '2024-10-11 20:27:48', '$2y$10$nscHBebbwy4bbaxUo9tOxOtYDN64W4y6uYV42kwORAJWGYYv9Xn8a', '', '2024-10-11 20:27:48', '2024-10-11 20:27:48');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('4', 'Ilham Indra Atmaja', 'indra@polines.ac.id', '', '$2y$10$lM7GgOnYtLDszLcY0dSQtuvo1wcFDsv8igavF.degi2uoBzpH6f76', '', '2024-10-11 20:44:59', '2024-10-11 20:55:50');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('5', 'Bagus Sadewa', 'dewa@polines.ac.id', '2024-10-27 19:07:34', '$2y$10$VuQa8.3YH71n69ooIN7NEeO/AR25pq37fLP3bNsR0r0/.f6UQPDs.', '', '2024-10-13 16:20:00', '2024-10-27 19:07:34');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('6', 'Muhammad Aly', 'aly@polines.ac.id', '2024-10-27 19:07:43', '$2y$10$SHmPtSHEmIQzpav8kQHAyu4DGkuxp/LDH.db89UQZWMXr1SuHKfNe', '', '2024-10-13 16:20:25', '2024-10-27 19:07:43');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('7', 'Zulvikar Kharisma', 'zulvikar@polines.ac.id', '2024-10-13 16:26:17', '$2y$10$KOlzinJvmbFlOs/.9H5a4uKH3ze4kMkFLDU.yWQJi2PklMH3BkoMS', '', '2024-10-13 16:21:00', '2024-10-13 16:26:17');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('8', 'Azka Nur Vadel', 'azka@polines.ac.id', '2024-10-13 16:21:20', '$2y$10$//ggh4c1nO4nKZx4g671h.i.2Hc.krIXqj9Za.uSF1hMnCTG58Rsa', '', '2024-10-13 16:21:20', '2024-10-13 16:21:20');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('9', 'Muhammad Dzaki', 'dzaki@polines.ac.id', '2024-10-13 16:22:00', '$2y$10$L2inEPRCfcxyoZBQt/a3teJ49iPiBD1ZtAAb9cAJJKB6mSMoBM6oG', '', '2024-10-13 16:21:51', '2024-10-13 16:22:00');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('10', 'Muhammad Bima', 'bima@polines.ac.id', '2024-10-13 16:22:23', '$2y$10$BHqeJ9PzZpGPivLywWaHY.6.hAPzx1D/AOAah5WhUicNQk3XSnM9m', '', '2024-10-13 16:22:23', '2024-10-13 16:22:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('11', 'Muhammad Rizal', 'rizal@polines.ac.id', '2024-10-13 16:22:59', '$2y$10$xmpkJ611/Ng4kXoXzUvU2Osp66.eemToQjwzCArMQ4L3c8fBgmAfG', '', '2024-10-13 16:22:59', '2024-10-13 16:22:59');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('12', 'Muhammad Axeylendra Handoko', 'exel@polines.ac.id', '2024-10-13 16:23:23', '$2y$10$VkzX4OVeuPA9KugGFoGW4.r815PqaAGl3aJrZrnDFfZPHTurEJeWm', '', '2024-10-13 16:23:23', '2024-10-13 16:23:23');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('13', 'Nanda', 'nanda@gmail.com', '2024-10-27 18:30:11', '$2y$10$QATrasV2Qa/RwrhMuo81JOy2xCJ0QCFMUJN4wxztqNZi9rZqXm7oy', '', '2024-10-27 18:30:11', '2024-10-27 18:30:11');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES ('14', 'Rifqi', 'rifqi@gmail.com', '2024-10-27 19:16:53', '$2y$10$MwPZi4QqRpYEBek9LrSRGeYfZ9m8wnp8DHnlbFUjSl.b5pOPWEgg6', '', '2024-10-27 19:16:53', '2024-10-27 19:16:53');
