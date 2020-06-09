SELECT 
column_name_1  
FROM 
table_1
UNION --( or UNION ALL)
SELECT 
column_name_1  
FROM 
table_2;

SELECT 
    year_tag, 
    name, 
    weight
FROM 
    cows_grandpa
UNION 
SELECT 
    tag, 
    name, 
    weight
FROM 
    cows_grandma;

SELECT 
    year_tag,
    name,
    weight
FROM 
    cow
UNION ALL
SELECT 
    year_tag,
    name,
    weight
FROM
    bulls;

SELECT
    DISTINCT(products.name) AS name --write your code here
FROM
    products
LEFT JOIN
	(
	SELECT
		id_product--write your code here
	FROM
		transactions 
	WHERE
		CAST(transactions.date AS date) = '2019-06-01'-- write your code here
	) AS subq 
ON 
	products.id_product = subq.id_product
WHERE
	subq.id_product IS NOT NULL;




SELECT
 DISTINCT products.name AS name
FROM 
	products 
LEFT JOIN
	(
	SELECT
		id_product
	FROM
		transactions 
	WHERE
		CAST(transactions.date AS date) = '2019-06-01'
	) AS SUBQ1 
ON 
	products.id_product = SUBQ1.id_product
WHERE
	SUBQ1.id_product IS NOT NULL
UNION
SELECT
	DISTINCT products.name AS name
FROM 
	products 
LEFT JOIN
	(
	SELECT
		id_product
	FROM
		transactions 
	WHERE
		CAST(transactions.date AS date) = '2019-06-08'
	) AS SUBQ2  
ON 
	products.id_product = SUBQ2.id_product
WHERE
	SUBQ2.id_product IS NOT NULL;



SELECT
    COUNT(SUBQ.name)
    --write your code here
FROM
(SELECT
	DISTINCT products.name AS name
FROM 
	products 
LEFT JOIN
	(
	SELECT
		id_product
	FROM
		transactions 
	WHERE
		CAST(transactions.date as date) = '2019-06-01'
	) AS SUBQ1 
ON 
	products.id_product = SUBQ1.id_product
WHERE
	SUBQ1.id_product IS NOT NULL
UNION --OR UNION ALL
SELECT
 DISTINCT products.name AS name
FROM 
	products 
LEFT JOIN
	(
	SELECT
		id_product
	FROM
		transactions 
	WHERE
		CAST(transactions.date AS date) = '2019-06-08'
	) AS SUBQ2  
ON 
	products.id_product = SUBQ2.id_product
WHERE
	SUBQ2.id_product IS NOT NULL)
AS SUBQ;--write your code here;