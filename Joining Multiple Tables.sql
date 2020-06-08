SELECT --enlisting only the necessary fields
    TABLE_1.field_1 AS field_1,
    TABLE_1.field_2 AS field_2,
    ...
    TABLE_3.field_n AS field_n
FROM
    TABLE_1
INNER JOIN TABLE_2 ON TABLE_2.field = TABLE_1.field
INNER JOIN TABLE_3 ON TABLE_3.field = TABLE_1.field;

SELECT 
    books.name AS books_name,
    books.author_id AS books_author_id,
    author.first_name AS author_first_name,
    author.last_name AS author_last_name,
    books.genre_id AS books_genre_id,
    genre.name AS genre_name
FROM
    books
INNER JOIN author ON author.author_id = books.author_id
INNER JOIN genre ON genre.genre_id = books.genre_id;

SELECT 
    books.name AS books_name,
    author.first_name AS author_first_name,
    author.last_name AS author_last_name,
    genre.name AS genre_name
FROM
    books
INNER JOIN author ON author.author_id = books.author_id
INNER JOIN genre ON genres.genre_id = books.genre_id;

SELECT
    books.name AS name,
    genre.name AS genre_name,
    author.first_name AS first_name,
    author.last_name AS last_name
FROM
    books
INNER JOIN author ON author.author_id = books.author_id
RIGHT JOIN genre ON genre.genre_id = books.genre_id;

SELECT 
	transactions.id_transaction,
    stores.name_store,
    products.category,
    products.name
FROM
	transactions
INNER JOIN products ON products.id_product = transactions.id_product
INNER JOIN stores ON stores.id_store = transactions.id_store
WHERE 	
    CAST(transactions.date AS date) = '2019-06-05'

SELECT
	CAST(weather.date AS date),
    weather.temp,
    weather.rain,
    products.name
FROM 
	weather
LEFT JOIN transactions ON CAST(transactions.date AS date) = CAST(weather.date AS date)
LEFT JOIN products ON products.id_product = transactions.id_product
ORDER BY 
    CAST(weather.date AS date) DESC
LIMIT
    30;

SELECT 
	transactions.id_transaction AS id_transaction,
    products.name AS name
FROM
	transactions
INNER JOIN products ON products.id_product = transactions.id_product
INNER JOIN weather ON CAST(weather.date AS date) = CAST(transactions.date AS date)
WHERE 
	weather.rain = False