SELECT 
    field_1, 
    field_2,
    ..., 
    field_n, 
    AGGREGATE_FUNCTION(field) AS here_you_are
FROM
    table_name
WHERE -- if needed
    condition
GROUP BY  
    field_1, 
    field_2, 
    ..., 
    field_n,
ORDER BY -- when necessary. List only those fields
--by which the data is to be sorted
    field_1, 
    field_2, 
    ..., 
    field_n, 
    here_you_are;

ORDER BY 
    field_name DESC
-- sorting data in descending order 

ORDER BY 
    field_name ASC; 
-- sorting data in ascending order

SELECT 
    author, 
    COUNT(name) AS cnt
FROM
    books
GROUP BY
    author 
ORDER BY 
    cnt;

SELECT 
    author, 
    COUNT(name) AS cnt
FROM
    books
GROUP BY
    author 
ORDER BY 
    cnt DESC;

SELECT 
    field_1, 
    field_2, 
    ..., 
    field_n, 
    AGGREGATE_FUNCTION(field) AS here_you_are
FROM
    table_name
WHERE -- if needed
    condition
GROUP BY  
    field_1, 
    field_2, 
    ..., 
    field_n,
ORDER BY -- if needed. List only those fields
--by which the table data is to sorted
    field_1, 
    field_2, 
    ..., 
    field_n, 
    here_you_are
LIMIT -- if needed
    n;
-- n - the maximum number of rows to be returned

SELECT 
    name, 
    pages
FROM
    books
ORDER BY
    pages DESC
LIMIT 
    3;

SELECT 
    date_upd :: date AS update_date,
    name_store,
    category,
	COUNT(DISTINCT name) AS uniq_name_cnt
FROM
	products_data_all
WHERE 
	name_store = 'T-E-B' AND date_upd::date = '2019-06-30'
GROUP BY
    date_upd :: date,
    name_store,
	category
ORDER BY 
	uniq_name_cnt DESC;

SELECT 
	name,
    MAX(price) AS max_price
FROM
	products_data_all

GROUP BY 
    name
ORDER BY 
    max_price DESC
LIMIT
    5;