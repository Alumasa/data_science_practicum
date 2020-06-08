SELECT 
    * 
FROM 
    table_name
WHERE 
    column_name IS NULL;

SELECT
    name,
    publisher_id
FROM
    books
WHERE 
    publisher_id IS NULL;

SELECT 
    name,
    publisher_id
FROM 
    books
WHERE 
    publisher_id IS NOT NULL;

CASE
        WHEN condition_1 THEN result_1
        WHEN condition_2 THEN result_2
        WHEN condition_3 THEN result_3
        ELSE result_4
END;

SELECT
    name,
    CASE WHEN publisher_id IS NULL THEN -1 -- if the publisher isn't specified, we assign
-- it a publisher_id of -1
    ELSE publisher_id END AS publisher_id_full
FROM
    books;

SELECT
	name,
    units,
    weight--write your code here
FROM
	products
WHERE
    weight IS NULL--write your code here

SELECT
	COUNT(*)--write your code here
FROM
	products
WHERE
    weight IS NULL;

SELECT
	AVG(weight :: real) AS avg_weight,
    units--write your code here
FROM 
	products
GROUP BY
    units;

SELECT
	name,
	CASE
        WHEN units = 'oz' AND weight :: real IS NULL THEN 23.0705263269575
        WHEN units = 'ct' AND weight :: real IS NULL THEN 10.0
        WHEN units = 'pk' AND weight :: real IS NULL THEN 12.0909090909091
        WHEN units = 'gal' AND weight :: real IS NULL THEN 0.650793650793651
        WHEN units = '%' AND weight :: real IS NULL THEN 1.0
        WHEN units = 'pt' AND weight :: real IS NULL THEN 1.0
        WHEN units = 'qt' AND weight :: real IS NULL THEN 1.0
        ELSE weight :: real
END AS weight_full-- write your code here
FROM
	products;
-- WHERE
--    weight :: real IS NULL;