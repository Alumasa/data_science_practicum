SELECT
    genre.name AS genre_name,
    COUNT(books.name) AS name_cnt
FROM
    books
INNER JOIN genre ON genre.genre_id = books.genre_id
GROUP BY 
    genre_name;

SELECT
    genre.name AS genre_name,
    author.first_name AS author_first_name,
    author.last_name AS author_last_name,
    COUNT(books.name) AS name_cnt
FROM
    books
INNER JOIN genre ON genre.genre_id = books.genre_id
INNER JOIN author ON author.author_id = books.author_id
GROUP BY 
    genre_name,
    author_first_name,
    author_last_name;

SELECT 
	id_transaction,
    COUNT(products.name) AS name_cnt,
    COUNT(DISTINCT products.name) AS name_uniq_cnt
FROM
	transactions
INNER JOIN products ON products.id_product = transactions.id_product
GROUP BY 
    id_transaction
LIMIT 
    10;

SELECT 
	id_transaction,
    COUNT(products.name) AS name_cnt,
    COUNT(DISTINCT products.name) AS name_uniq_cnt
FROM
	transactions
INNER JOIN products ON products.id_product = transactions.id_product
GROUP BY
    id_transaction
HAVING
    COUNT(products.name) != COUNT(DISTINCT products.name)

SELECT 
	weather.rain,
    COUNT(DISTINCT id_transaction) AS uniq_transactions
FROM
		transactions
INNER JOIN weather ON CAST(weather.date AS date) = CAST(transactions.date AS date)
GROUP BY 
	weather.rain

SELECT 
	CAST(weather.date AS date),
    weather.temp,
    COUNT(DISTINCT id_transaction) AS uniq_transactions
FROM 
	weather
LEFT JOIN transactions ON CAST(transactions.date AS date) = CAST(weather.date AS date)
GROUP BY 
    CAST(weather.date AS date),
    weather.temp
ORDER BY 
        CAST(weather.date AS date)


SELECT 
    id_transaction,
    SUM(products_stores.price) AS total,
    COUNT(products_stores.id_product) AS amount
FROM 
	transactions
LEFT JOIN products_stores ON CAST(products_stores.date_upd AS date) = CAST(transactions.date AS date) AND products_stores.id_product = transactions.id_product AND products_stores.id_store = transactions.id_store
GROUP BY 
	transactions.id_transaction
HAVING
     SUM(products_stores.price) > 35;


