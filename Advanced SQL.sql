 SELECT 
    field_1, 
    field_2, 
    ..., 
    field_n, 
    AGGREGATE_FUNCTION(field) AS here_you_are
FROM
    table
WHERE -- if needed
    condition 
GROUP BY 
    field_1, 
    field_2, 
    ..., 
    field_n;

SELECT 
    author, 
    COUNT(name) AS cnt
FROM
    books
GROUP BY 
    author;

SELECT 
    author, 
    genre, 
    COUNT(name) AS cnt
FROM
    books
GROUP BY 
    author, 
    genre;

SELECT 
    author, 
    AVG(pages) AS avg_pages,
    MAX(pages) AS max_pages
FROM
    books
GROUP BY 
    author;

SELECT 
    name_store,
	COUNT(name) AS name_cnt,
    COUNT(DISTINCT name) AS name_uniq_cnt
FROM
	products_data_all
GROUP BY
	name_store;

--- SELECT * FROM products_data_all;

SELECT 
	category,
    MAX(CAST(weight AS real)) AS max_weight
FROM
	products_data_all
	
GROUP BY
    category;

SELECT 
	name_store,
    AVG(price) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM
	products_data_all
GROUP BY
	name_store;

SELECT 
    name,
	CAST(date_upd AS date),
    MAX(price) - MIN(price) AS max_min_diff
FROM
	products_data_all
WHERE
	date_upd :: date = '2019-06-10' AND category = 'milk'
GROUP BY
    name,
    date_upd;

-- SELECT * FROM products_data_all;

SELECT
    date_upd::date AS update_date,
    category,
    COUNT(name) AS name_cnt
FROM
    products_data_all
WHERE
    date_upd::date = '2019-06-05'
GROUP BY
    update_date,
    category
ORDER BY
    name_cnt;

