SELECT 
    **AGGREGATE_FUNCTION**(field) AS here_you_are
--here_you_are - name of the column where the function's output will be stored
FROM
    table;

SELECT 
    COUNT(*) AS cnt
FROM
    books;

SELECT 
    COUNT(*) AS cnt
FROM
    books
WHERE
    author = 'Dean Koontz';

SELECT 
    COUNT(*) AS cnt,
    COUNT(publisher_id) AS publisher_id_cnt,
    COUNT(DISTINCT publisher_id) AS publisher_id_uniq_cnt
FROM
    books;

SELECT 
    SUM(pages) AS total_pages
FROM
    books;

SELECT 
    AVG(pages) AS average_pages
FROM
    books;


SELECT 
	COUNT(*) AS cnt,
    COUNT(name) AS name_cnt,
    COUNT(DISTINCT name) AS name_uniq_cnt
FROM
	products_data_all;

SELECT 
	AVG(price) AS average
FROM
	products_data_all;

SELECT 
	AVG(price) AS average
FROM
	products_data_all
WHERE
    name = 'Borden Whole Milk, 1 gal' AND name_store ='Wise Penny';

SELECT 
	SUM(price) AS total_cost
FROM
	products_data_all
WHERE
    name_store = 'T-E-B'

SELECT 
	MAX(price)-MIN(price) AS max_min_diff
FROM
	products_data_all
WHERE
    name = 'Meyenberg Goat Milk, 1/2 gal' AND name_store ='Milk Market'; 
