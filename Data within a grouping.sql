 SELECT 
    field_1, 
    field_2, 
    ..., 
    field_n, 
    AGGREGATE_FUNCTION(field) AS here_you_are
FROM
    TABLE
WHERE -- if needed
    condition
GROUP BY 
    field_1, 
    field_2, 
    ..., 
    field_n
HAVING
    AGGREGATE_FUNCTION(field_for_grouping) > n
ORDER BY -- when necessary. List only those fields
--by which the data is to be sorted (use aliases from SELECT when applicable)
    field_1, 
    field_2, 
    ..., 
    field_n,
    here_you_are
LIMIT -- if needed
    n;

SELECT 
	name,
    MAX(price) AS max_price
FROM
	products_data_all
GROUP BY
	name
HAVING
    MAX(price) > 10;

SELECT 
	date_upd :: date AS update_date,
    name_store,
    COUNT(name) AS name_cnt
FROM
	products_data_all
WHERE
    units = 'oz' AND weight :: real > 5 AND date_upd :: date = '2019-06-03'
GROUP BY
    date_upd :: date,
    name_store
HAVING
    COUNT(name) < 20;

SELECT 
    name_store,
    COUNT(DISTINCT name) AS name_uniq_cnt
FROM
	products_data_all
GROUP BY
	name_store
HAVING
   COUNT(DISTINCT name) > 30 
ORDER BY
    name_uniq_cnt
LIMIT
    3;