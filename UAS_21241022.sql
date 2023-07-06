USE dqlabpraktik2;
SELECT * FROM tr_penjualan_dqlab;
SELECT * FROM ms_produk_dqlab;
SELECT kode_pelanggan, SUM(qty), SUM(harga), qty%3 FROM tr_penjualan_dqlab;

SELECT  nama_produk,qty,harga,qty*harga AS total  FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_l%' AND qty*harga> 100000;

SELECT kode_transaksi,kode_produk,tgl_transaksi,nama_produk,tgl_transaksi FROM tr_penjualan_dqlab WHERE YEAR(tgl_transaksi)>2019 ORDER BY tgl_transaksi ASC;