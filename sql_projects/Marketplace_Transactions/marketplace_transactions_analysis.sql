1. Q: Selama transaksi yang terjadi selama 2021, pada bulan apa total nilai transaksi
(after_discount) paling besar? Gunakan is_valid = 1 untuk memfilter data transaksi.
Source table: order_detail

SELECT
    EXTRACT(MONTH FROM order_date) AS bulan,
    SUM(after_discount) AS total_penjualan
FROM
    `market_place.order_detail`
WHERE
    EXTRACT(YEAR FROM order_date) = 2021
    AND is_valid = 1
GROUP BY
    bulan
ORDER BY
    total_penjualan DESC;


2. Q: Selama transaksi pada tahun 2022, kategori apa yang menghasilkan nilai transaksi paling
besar? Gunakan is_valid = 1 untuk memfilter data transaksi.
Source table: order_detail, sku_detail

SELECT
    sd.category AS kategori,
    SUM(od.after_discount) AS total_penjualan
FROM
    `market_place.order_detail` od
JOIN
    `market_place.sku_detail` sd
ON
    od.sku_id = sd.id
WHERE
    EXTRACT(YEAR FROM od.order_date) = 2022
    AND od.is_valid = 1
GROUP BY
    kategori
ORDER BY
    total_penjualan DESC;


3. Q: Bandingkan nilai transaksi dari masing-masing kategori pada tahun 2021 dengan 2022.
Sebutkan kategori apa saja yang mengalami peningkatan dan kategori apa yang mengalami
penurunan nilai transaksi dari tahun 2021 ke 2022. Gunakan is_valid = 1 untuk memfilter data
transaksi.
Source table: order_detail, sku_detail

WITH transaksi_per_tahun AS (
    SELECT
        sd.category AS kategori,
        EXTRACT(YEAR FROM od.order_date) AS tahun,
        SUM(od.after_discount) AS total_penjualan
    FROM
        `market_place.order_detail` od
    JOIN
        `market_place.sku_detail` sd
    ON
        od.sku_id = sd.id
    WHERE
        od.is_valid = 1
    GROUP BY
        kategori,
        tahun
),
perbandingan_penjualan AS (
    SELECT
        kategori,
        SUM(CASE WHEN tahun = 2021 THEN total_penjualan ELSE 0 END) AS penjualan_2021,
        SUM(CASE WHEN tahun = 2022 THEN total_penjualan ELSE 0 END) AS penjualan_2022
    FROM
        transaksi_per_tahun
    GROUP BY
        kategori
)
SELECT
    kategori,
    penjualan_2021,
    penjualan_2022,
    penjualan_2022 - penjualan_2021 AS perbedaan_penjualan,
    CASE
        WHEN penjualan_2022 > penjualan_2021 THEN 'Meningkat'
        WHEN penjualan_2022 < penjualan_2021 THEN 'Menurun'
        ELSE 'Tidak Berubah'
    END AS tren_penjualan
FROM
    perbandingan_penjualan
ORDER BY
    perbedaan_penjualan DESC;


4. Q: Tampilkan top 5 metode pembayaran yang paling populer digunakan selama 2022
(berdasarkan total unique order). Gunakan is_valid = 1 untuk memfilter data transaksi.
Source table: order_detail, payment_method

SELECT
    pd.payment_method AS metode_pembayaran,
    COUNT(DISTINCT od.id) AS total_unique_orders
FROM
    `market_place.order_detail` od
JOIN
    `market_place.payment_detail` pd
ON
    od.payment_id = pd.id
WHERE
    EXTRACT(YEAR FROM od.order_date) = 2022
    AND od.is_valid = 1
GROUP BY
    metode_pembayaran
ORDER BY
    total_unique_orders DESC
LIMIT 5;


5. Q: Urutkan dari ke-5 produk ini berdasarkan nilai transaksinya.
	1. Samsung
	2. Apple
	3. Sony
	4. Huawei
	5. Lenovo
Gunakan is_valid = 1 untuk memfilter data transaksi.
Source table: order_detail, sku_detail

WITH top_produk AS (
    SELECT 
        CASE
            WHEN LOWER(sd.sku_name) LIKE '%samsung%' THEN 'Samsung'
            WHEN LOWER(sd.sku_name) LIKE '%apple%' THEN 'Apple'
            WHEN LOWER(sd.sku_name) LIKE '%iphone%' THEN 'Apple'
            WHEN LOWER(sd.sku_name) LIKE '%imac%' THEN 'Apple'
            WHEN LOWER(sd.sku_name) LIKE '%macbook%' THEN 'Apple'
            WHEN LOWER(sd.sku_name) LIKE '%sony%' THEN 'Sony'
            WHEN LOWER(sd.sku_name) LIKE '%huawe%' THEN 'Huawei'
            WHEN LOWER(sd.sku_name) LIKE '%lenovo%' THEN 'Lenovo' 
            ELSE 'Other Brand'
        END AS nama_produk,
        od.after_discount AS nilai_transaksi
    FROM 
        `market_place.order_detail` AS od 
    LEFT JOIN 
        `market_place.sku_detail` AS sd 
    ON 
        od.sku_id = sd.id
    WHERE 
        od.is_valid = 1 
        AND od.id IS NOT NULL
)

SELECT 
    nama_produk, 
    SUM(transaction_value) AS total_nilai_transaksi 
FROM 
    top_produk
WHERE 
    nama_produk != 'Other Brand'
GROUP BY 
    nama_produk
ORDER BY 
    total_nilai_transaksi DESC;
