-- FUNGSI ATAU FUNCTION
USE dqlabpraktik2;
SELECT * FROM tr_penjualan_dqlab;

SELECT POW(3,2),ROUND(3.14), ROUND(3.54), ROUND(3.155,1), ROUND(3.155,2),FLOOR(4.28),FLOOR(4.78),CEILING(4.39),CEILING(4.55);
SELECT NOW(), YEAR('2023-05-20'),DATEDIFF('2023-05-20','2023-05-01'),DAY(NOW());
-- Mendapatkan lastest buy dari produk
SELECT nama_produk, DATEDIFF(NOW(),tgl_transaksi) AS laterst_but, YEAR(tgl_transaksi) FROM tr_penjualan_dqlab;

-- FILLTERING ATAU PENYARINGAN
SELECT nama_produk,qty FROM tr_penjualan_dqlab WHERE qty > 2;

-- AND
SELECT nama_produk,tgl_transaksi,qty,harga,qty*harga AS total_beli 
FROM tr_penjualan_dqlab 
WHERE kode_pelanggan = 'dqlabcust07' AND  qty > 1;

-- LIKE
-- %a memilih nilai yang berrakhir a, a% memilih nilai awalnya a,%ama% dimanapun kata ama,NOT LIKE yang tidak disukai
-- c_t mencocokan nilai awanya a dan nilai akhirnya t seperti cut, _a 
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%';
-- Latihan Mandiri
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE 'a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%un%';