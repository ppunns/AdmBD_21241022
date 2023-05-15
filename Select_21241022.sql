USE dqlabpraktik2;

SHOW TABLES;

-- CEK Deskripsi tiap Table
DESC ms_pelanggan_dqlab;
DESC ms_produk_dqlab;
DESC tr_penjualan_dqlab;

-- Select 1 kolom dari tabel ms_produkdqlab
SELECT nama_produk FROM ms_produk_dqlab;
--  Select 1 kolom dari tabel ms_pelanggan_dqlab dan tr_penjualan_dqlab
SELECT nama_pelanggan FROM ms_pelanggan_dqlab;
SELECT tgl_transaksi FROM tr_penjualan_dqlab;
-- Select 2 atau lebih dari table ms_produk_dqlab
SELECT nama_produk,harga FROM ms_produk_dqlab;
-- mengambil kolom kode pelanggan,tanggal transaksi dan total hrag dari tabel tr_penjualan_dqlab
SELECT kode_pelanggan,tgl_transaksi,harga FROM tr_penjualan_dqlab;
-- Mengambil seluruh kolom pada table ms_pelanggan_dqlab;
SELECT * FROM ms_pelanggan_dqlab;

-- --------------------------------->>>>>  prefix dan Alias <<<<<<<-------------------------------
-- Prefix dan nama table
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;
SELECT ms_produk_dqlab.nama_produk,ms_produk_dqlab.harga FROM ms_produk_dqlab;
-- Prefix dari nama database dan tabel
SELECT dqlabpraktik2.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;
-- Alias dari nama kolom
SELECT nama_produk as NP, harga as Price FROM ms_produk_dqlab;
--  Alias dari nama tabel
SELECT nama_produk FROM ms_produk_dqlab AS msp;
-- Alias bertemu dengan Prefix
SELECT msp.nama_produk FROM ms_produk_dqlab AS msp;

-- case 1
SELECT mpd.nama_pelanggan , mpd.alamat FROM ms_pelanggan_dqlab AS mpd;
-- case 2
SELECT nama_produk,harga FROM ms_produk_dqlab;