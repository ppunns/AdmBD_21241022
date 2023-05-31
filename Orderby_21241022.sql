-- Learning Day 4
-- Mengurutkan data menggunakan ORDER BY
-- Ambil nama produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty
SELECT nama_produk,qty FROM tr_penjualan_dqlab ORDER BY qty;
SELECT nama_produk,qty FROM tr_penjualan_dqlab ORDER BY nama_produk;

-- Mengurutkan labih dari 1 kolom menggunakan ORDER BY
-- Diurutkan dari terkecil ke terbesar
SELECT nama_produk,qty FROM tr_penjualan_dqlab ORDER BY qty,nama_produk;

-- Latihan Mandiri
SELECT * FROM tr_penjualan_dqlab ORDER BY qty,tgl_transaksi;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- ASC dan DESC mengurutkan dari kecil ke besar dan besar ke kecil
-- Ambil nama produk dan quantity dari table tr_penjualan_dqlab urutkan berdasarkan qty secara Descending
SELECT nama_produk,qty FROM tr_penjualan_dqlab ORDER BY qty DESC;
-- Mengurutkan 2  kolom dengan ascendingndan descending
SELECT nama_produk,qty FROM tr_penjualan_dqlab ORDER BY qty DESC,nama_produk ASC;

-- Latihan Mandiri
SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
SELECT *FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

-- Ambil nama produk,qty,harga dan total beli, dari tr_penjualann_dqlab urutkan berdasarkan total beli;
SELECT nama_produk,qty,harga,qty*harga AS total_beli FROM tr_penjualan_dqlab ORDER BY total_beli DESC;
SELECT * FROM tr_penjualan_dqlab;
USE dqlabpraktik2;
SELECT nama_produk,qty,harga,diskon_persen,(qty*harga)-(diskon_persen/100) AS Total_harga FROM  tr_penjualan_dqlab ORDER BY Total_harga;