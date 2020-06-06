CAST (column_name AS data_type)
column_name :: data_type

SELECT 
    AVG(rating :: real) AS average
FROM
    books;

SELECT 
    AVG (CAST(rating AS real)) AS average
FROM
    books;

SELECT 
	AVG(weight :: real) AS average
FROM
	products_data_all
WHERE
    units='oz'

SELECT 
	MAX(CAST(weight AS real)) AS max_weight
FROM
	products_data_all
WHERE
    category='milk';

SELECT 
   CAST(date AS date) AS date_no_time-- write your code here
FROM 
	transactions;

SELECT 
    MAX(CAST(date AS date)) AS max_date,
    MIN(CAST(date AS date)) AS min_date-- write your code here
FROM 
	transactions;