USE praktikum_abd;

SELECT nama_produk FROM produk;
SELECT nama_produk, harga FROM produk;

SELECT * FROM produk;

SELECT produk.nama_produk FROM produk;
SELECT praktikum_abd.produk.nama_produk FROM produk;

SELECT nama_produk AS nama, harga AS harga_jual FROM produk;
SELECT nama_produk nama, harga harga_jual FROM produk; 

SELECT p.nama_produk FROM produk AS p;
SELECT p.nama_produk, p.harga FROM produk p; 

SELECT nama_customer, alamat FROM pelanggan;
SELECT nama_produk, harga FROM produk;
