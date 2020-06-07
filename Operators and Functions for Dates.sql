SELECT
    EXTRACT(date_fragment FROM column_name) AS new_column_with_date 
FROM 
    Table_with_all_dates;

SELECT 
    id_user,
    EXTRACT (MONTH FROM log_on) AS month_activity,
    EXTRACT (DAY FROM log_on) AS day_activity
FROM 
    user_activity;

SELECT
    DATE_TRUNC('date_fragment_to_be_truncated_to', column_name) AS new_column_with_date 
FROM 
    Table_with_all_dates;

SELECT 
    DATE_TRUNC('hour',log_on) as date_log_on
FROM 
    user_activity;

SELECT 
	 EXTRACT(HOUR FROM date) AS hours--write your code here
FROM  
	transactions;

SELECT 
    EXTRACT(HOUR FROM date) AS hours,--write your code here
    COUNT(id_product) AS cnt
FROM  
	transactions
GROUP BY
    hours--write your code here
ORDER BY
    hours;

SELECT 
    EXTRACT(DAY FROM date) AS days,
    COUNT(id_product) AS cnt--write your code here
FROM 
	transactions
GROUP BY
    days
ORDER BY
    days;--write your code here

SELECT
    DATE_TRUNC('day', date) AS date_month,
    COUNT(id_product) AS cnt--write your code here
FROM 
transactions
GROUP BY
    date_month
ORDER BY
    date_month--write your code here