SELECT --listing only the fields that are needed
    TABLE_1.field_1 AS field_1,
    TABLE_1.field_2 AS field_2,
    ...
    TABLE_2.field_n AS field_n
FROM
    TABLE_1
INNER JOIN TABLE_2 ON TABLE_2.field_1 = TABLE_1.field_2;

SELECT 
    books.name AS name,
    books.author_id AS books_author_id,
    author.author_id AS author_id,
    author.first_name AS first_name,
    author.last_name AS last_name
FROM
    books
INNER JOIN author ON author.author_id = books.author_id
LIMIT 3;

SELECT 
    books.name AS name,
    author.first_name AS first_name,
    author.last_name AS last_name
FROM
    books
INNER JOIN author ON author.author_id = books.author_id
WHERE 
    author.first_name = 'Dean'
    AND author.last_name = 'Koontz';

SELECT 
	id_transaction,
    products.category,
    products.name
FROM
	transactions
INNER JOIN products ON products.id_product = transactions.id_product
ORDER BY 
    id_transaction
LIMIT
    10;

SELECT 
     DISTINCT(transactions.date),
     weather.temp,
     weather.rain,
     id_transaction
FROM
	transactions
INNER JOIN weather ON CAST(weather.date AS date) = CAST(transactions.date AS date)
ORDER BY
    date DESC;


SELECT 
    DISTINCT(products.name) AS name
FROM
	products
INNER JOIN products_stores ON products_stores.id_product = products.id_product
WHERE 
	products_stores.price > 5

SELECT 
	transactions.date,
    id_transaction,
    products.category,
    products.name
FROM
	transactions
INNER JOIN products ON products.id_product = transactions.id_product
WHERE 
	products.category = 'butter' AND CAST(transactions.date AS date) = '2019-06-20'

SELECT 
	products.name,
    products.category,
    products.units,
    products.weight,
    products_stores.price
FROM
	products
INNER JOIN products_stores ON products_stores.id_product = products.id_product
WHERE 
	products.units = 'oz' AND CAST(products_stores.date_upd AS date) = '2019-06-13';