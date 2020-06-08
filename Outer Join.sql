SELECT 
    TABLE_1.field_1 AS field_1,
    TABLE_1.field_2 AS field_2,
    ...
    TABLE_2.field_n AS field_n
FROM
    TABLE_1
LEFT JOIN TABLE_2 ON TABLE_2.field = TABLE_1.field;

SELECT
    author.first_name AS first_name,
    author.last_name AS last_name,
    author.author_id AS author_id,
    books.name AS name,
    books.author_id AS books_author_id
FROM
    author
LEFT JOIN books ON books.author_id = author.author_id;

SELECT
    author.first_name AS first_name,
    author.last_name AS last_name,
    author.author_id AS author_id,
    books.name AS name,
    books.author_id AS books_author_id
FROM
    books
LEFT JOIN author ON books.author_id = author.author_id;

SELECT 
	products.id_product,
    products.name,
    products_stores.id_store
FROM
	products 
LEFT JOIN products_stores ON products_stores.id_product = products.id_product


SELECT 
	DISTINCT(products.name) AS name
FROM
	products 
LEFT JOIN
	(
	SELECT --select unique products from store 3
        DISTINCT(id_product)
	FROM
		transactions
	WHERE
        id_store = 3
	) AS subquery ON subquery.id_product = products.id_product
	WHERE 
		subquery.id_product IS NULL




SELECT 
	DISTINCT(products.name) AS name
FROM
	products 
LEFT JOIN
	(
	SELECT --select product id and store id for 2019-06-11
        id_product,
        id_store
	FROM
		transactions
	WHERE
        CAST(transactions.date AS date) = '2019-06-11'
	) AS subquery ON subquery.id_product = products.id_product
WHERE 
		subquery.id_store IS NULL

