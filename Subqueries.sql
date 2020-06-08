SELECT 
SUBQUERY_1.column_name, 
SUBQUERY_1.column_name_2
FROM -- to make the code readable, put subqueries in new lines
    -- indent subqueries
    (SELECT 
        column_name,
        column_name_2
    FROM 
        table_name
    WHERE 
        column_name = value) AS SUBQUERY_1; 
-- don't forget to name your subquery

SELECT 
    AVG(Sub.count_rating) AS avg_count_rating
FROM
    (SELECT 
        COUNT(rating) as count_rating
    FROM 
        books
    GROUP BY genre) AS Sub;

SELECT 
    column_name, 
    column_name_1
FROM 
    table_name
WHERE 
    column_name = 
        (SELECT 
            column_1
        FROM 
            table_name_2 
        WHERE
            column_1  = value);


SELECT 
    column_name, 
    column_name_1
FROM 
    table_name
WHERE 
    column_name IN  
            (SELECT 
                column_1
            FROM 
                table_name_2  
            WHERE 
                column_1 = value_1 OR column_1 = value_2);

SELECT 
    name,
    publisher_id
FROM 
    books
WHERE 
    publisher_id = 
            (SELECT 
                 publisher_id
            FROM 
                publisher
            WHERE 
                name ='Knopf');

SELECT 
    name,
    publisher_id
FROM 
    books
WHERE 
    publisher_id IN 
            (SELECT 
                 publisher_id
            FROM 
                publisher
            WHERE 
                name IN ('Knopf', 'Collins', 'Crown'));

SELECT --write your code here
    id_product
FROM 
    products_data_all
WHERE
    category = 'milk' AND price > 17 OR category = 'butter' AND price > 9;

SELECT 
    DISTINCT(user_id)--write your code here
FROM 
	transactions
WHERE 
id_product IN --- write your code here
	(SELECT 
	id_product 
	FROM 
	products_data_all
	WHERE 
	(category='milk' AND  price > 17) OR 
	(category='butter' AND price > 9));

SELECT 
    EXTRACT(WEEK FROM SUBQ.trunc_date) AS week_number,
    AVG(SUBQ.transactions_per_day) AS avg_week_transaction-- write your code here
FROM
    (SELECT  
		COUNT(distinct id_transaction) as transactions_per_day,
		DATE_TRUNC('day', date) AS trunc_date
	FROM
		transactions
	GROUP BY
		trunc_date) AS SUBQ
GROUP BY
    week_number-- write your code here