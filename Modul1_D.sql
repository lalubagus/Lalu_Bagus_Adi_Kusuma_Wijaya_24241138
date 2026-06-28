-- Nama		: Adam Bachtiar
-- NIM		: 0708078505
-- Kelas	: D
-- Modul	: 1

-- 1. membuat database
CREATE DATABASE kelas_d_mart;

-- 2. menggunakan database
USE kelas_d_mart;

-- 3. membuat tabel
CREATE TABLE pelanggan(
	kode_pelanggan varchar(20) PRIMARY KEY,
    no_urut int NOT NULL,
    nama_pelanggan text NOT NULL,
    alamat text 
);

-- 4. Mengisi tabel
INSERT INTO pelanggan(
	kode_pelanggan,
    no_urut,
    nama_pelanggan
)VALUES
("dqlabcust00",	0,	"Pelanggan Non Member");

-- cek isi tabel pelanggan
SELECT * FROM pelanggan;

-- 4.1. Mengisi multiple value dalam tabel
INSERT INTO pelanggan(
	kode_pelanggan,
    no_urut,
    nama_pelanggan,
    alamat
)VALUES
("dqlabcust01",	1,	"Eva Novianti, S.H.",	"Vila Sempilan, No. 67 - Kota B"),
("dqlabcust02",	2	,"Heidi Goh"	,"Vila Sempilan, No. 11 - Kota B"),
("dqlabcust03",	3	,"Unang Handoko",	"Vila Sempilan, No. 1 - Kota B");
