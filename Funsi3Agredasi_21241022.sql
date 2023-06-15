-- FUNGSI AGREGASI
USE dqlabpraktik2;
SELECT * FROM tr_penjualan_dqlab;
-- Menghitung penjumlahan nilai qty seluruh row pada table penjualan
SELECT sum(qty) FROM tr_penjualan_dqlab;
-- Menghitung jumlah seluruh row pada table penjualan
SELECT count(*) FROM tr_penjualan_dqlab;
-- Menghitung penjumlahan nilai qty dan jumlah seluruhj row di table penjualan
SELECT sum(qty), count(*) FROM tr_penjualan_dqlab;
-- Menghitung rata-rata qty, niali maks qty. dan nilai minumum qty di table penjualan
SELECT AVG(qty), MAX(qty), MIN(qty) FROM tr_penjualan_dqlab;
-- Menghitung jumlah nilai nama unik dari nama produk pada table penjualan
SELECT count(distinct nama_produk) from tr_penjualan_dqlab;

-- GROUP BY
-- Mengambil grouping nilai dari kolom nama_produk dari tabel tr_penjualan
SELECT nama_produk FROM tr_penjualan_dqlab
GROUP BY nama_produk;
-- Mengambil niali grouping dari kolom nama_produk dan qty pada table penjualan
SELECT nama_produk,qty FROM tr_penjualan_dqlab
GROUP BY nama_produk,qty;
-- Mengambil jumlah qty  dari grouping nama_produk terhadapat seluruh row di table penjualan
SELECT nama_produk,SUM(qty) FROM tr_penjualan_dqlab 
GROUP BY nama_produk
ORDER BY qty DESC;

-- HAVING
-- Mengambil jumlah qty diatas 2 dari grouping nama produk terhadap seluruh row pada table penjualan
SELECT nama_produk,SUM(qty) FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 2;

-- Latihan
SELECT nama_produk,SUM(qty) FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 4;

SELECT nama_produk,SUM(qty) FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) = 9;

SELECT nama_produk,(harga*qty)-(diskon_persen/100) FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY (harga*qty)-(diskon_persen/100) DESC;