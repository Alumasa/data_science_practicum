SELECT 
    TABLE_1.field_1 AS field_1,
    TABLE_1.field_2 AS field_2,
    ...
    TABLE_2.field_n AS field_n
FROM
    TABLE_1
RIGHT JOIN TABLE_2 ON TABLE_1.field = TABLE_2.field;

SELECT
    books.name AS name,
    genre.name AS genre_name
FROM
    books
RIGHT JOIN genre ON genre.genre_id = books.genre_id;

SELECT
    books.name AS name,
    genre.name AS genre_name
FROM
    genre
RIGHT JOIN books ON books.genre_id = genre.genre_id;

SELECT 
    CAST(weather.date AS date)
FROM
	transactions
RIGHT JOIN weather ON CAST(weather.date AS date) = CAST(transactions.date AS date)
WHERE 
    transactions.date IS NULL

SELECT
    DISTINCT(products.name) AS name
FROM
	(
	SELECT --select unique products from the store 3
        DISTINCT(id_product)
	FROM
        transactions
	WHERE
        id_store = 3
	) AS subquery
RIGHT JOIN products ON products.id_product = subquery.id_product
WHERE 
    subquery.id_product IS NULL

