USE praktikum_abd;

    praktikum_abd.tr_penjualan.kode_transaksi, 
    praktikum_abd.tr_penjualan.kode_produk, 
    praktikum_abd.tr_penjualan.jumlah_barang, 
    praktikum_abd.tr_penjualan.harga_barang, 
    (praktikum_abd.tr_penjualan.jumlah_barang * praktikum_abd.tr_penjualan.harga_barang) AS total_bayar  
FROM tr_penjualan;

SELECT 
    (10 = 10) AS Soal_1,
    (5 != 5) AS Soal_2,
    (12 > 15) AS Soal_3,
    (20 <= 20) AS Soal_4,
    ('A' = 'a') AS Soal_5,
    (100 > NULL) AS Soal_6;

SELECT 
    kode_transaksi, 
    kode_produk, 
    jumlah_barang, 
    (jumlah_barang > 3) AS Lebih_Dari_3 
FROM tr_penjualan;

SELECT * FROM tr_penjualan WHERE jumlah_barang = 2;

SELECT * FROM pelanggan WHERE nama_customer LIKE '%a';

SELECT * FROM tr_penjualan WHERE jumlah_barang > 1 AND harga_barang > 5000;
