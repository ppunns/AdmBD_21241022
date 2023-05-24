-- Menggunakan SELECT statement untuk 1 nilai literal
SELECT 77 AS literalInteger; -- literal untuk bilangan bulat
SELECT 'mataram' AS kota; -- literal untuk char;
SELECT '2023/05/20' AS date;
SELECT 77 < 3 AS booleanliteral;

-- Menggunakan SELECT statement untuk 2 atau lebih literal
SELECT  77 AS angka, true AS nilai_logika,'UNDIKMA' AS teks;

-- Menggunakan SELECT untuk NULL
SELECT 5 % 2 AS sisabagi, 5/2 AS pembagian, 5 DIV 2 AS hasil_bagi_int;

-- Latihan Mandiri
SELECT 4*2 AS pertama, (4*8) % 7 AS kedua, (4*8) MOD 7 AS ketiga;
-- Operator Matematika untuk menghasilkan total beli (qty * harga) pada tabel tr_penjualan
USE dqlabpraktik2;
SELECT * FROM tr_penjualan_dqlab;
SELECT nama_produk,qty,harga,qty*harga AS total_beli FROM tr_penjualan_dqlab;

SELECT 5=5, 5<>5, 5<>4, 5!=5,5!=4,5>4;
SELECT 1=true, 1=false, 5>=5, 5.2=5.20000 ,NULL=1 ,NULL = NULL;
SELECT nama_produk, qty,qty >= 3 FROM tr_penjualan_dqlab;