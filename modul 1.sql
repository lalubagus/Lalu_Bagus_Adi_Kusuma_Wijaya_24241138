CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(20),
  `sp` varchar(20),
  `no_tlpn` int,
  `kode_poli` int
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(100),
  `BOD` date
);

CREATE TABLE `pendaftaran` (
  `no_antrean` int PRIMARY KEY,
  `tgl_daftar` date,
  `NIK` int,
  `id_dokter` int
);

CREATE TABLE `rekam_medis` (
  `no_rm` int PRIMARY KEY,
  `no_antrean` int
);

CREATE TABLE `obat` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(50),
  `harga` int
);

CREATE TABLE `resep` (
  `no_resep` int PRIMARY KEY,
  `tgl_resep` date,
  `kode_obat` int,
  `no_rm` int
);

CREATE TABLE `kamar` (
  `no_kamar` int PRIMARY KEY,
  `tipe` varchar(100)
);

CREATE TABLE `rawat_inap` (
  `no_rawat_inap` int PRIMARY KEY,
  `no_kamar` int,
  `NIK` int
);

ALTER TABLE `POLIKLINIK` ADD FOREIGN KEY (`kode_poli`) REFERENCES `DOKTER` (`kode_poli`);

ALTER TABLE `pendaftaran` ADD FOREIGN KEY (`id_dokter`) REFERENCES `DOKTER` (`id_dokter`);

ALTER TABLE `pendaftaran` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `rekam_medis` ADD FOREIGN KEY (`no_antrean`) REFERENCES `pendaftaran` (`no_antrean`);

ALTER TABLE `resep` ADD FOREIGN KEY (`no_rm`) REFERENCES `rekam_medis` (`no_rm`);

ALTER TABLE `obat` ADD FOREIGN KEY (`kode_obat`) REFERENCES `resep` (`kode_obat`);

ALTER TABLE `kamar` ADD FOREIGN KEY (`no_kamar`) REFERENCES `rawat_inap` (`no_kamar`);
