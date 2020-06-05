-- a single-line comment in SQL
/* a multi-line comment
has
several 
lines */
SELECT 
    * 
FROM 
    table_name;
-- A statement that requests all the data from the table ends with ";"
SELECT 
    * 
FROM
    table_name
WHERE 
    column_name IN (1,7,9);
-- A statement that selects data by condition also ends with ";"

SELECT, WHERE, FROM -- Capital letters

SELECT -- lIne breaks:
    column_1,
    column_2, 
    column_3, 
    column_4
FROM 
    table_name
WHERE 
    column_1 = value_1 AND
    column_2 = value_2 AND
    column_4 = value_3;

SELECT 
    column_1,
    column_2, 
    column_3 ...  
FROM 
    table_name;
--Select columns from the table

SELECT 
    column_1, 
    column_2 --selecting column names
FROM 
    table_name --specifying the table
WHERE 
    condition; --defining the condition of row selection, in each row of the table

SELECT 
    names, 
    author 
FROM 
    books
WHERE 
    author = 'Stephen King';--strings are put in quotes, as in Python

SELECT 
    name, 
    author 
FROM 
    books
WHERE 
    author != 'Stephen King';

SELECT 
    name, 
    author, 
    pages 
FROM 
    books
WHERE 
    pages > 700 ;

SELECT 
    * 
FROM 
    table_name
WHERE 
    condition_1 AND condition_2;
--Select rows where both conditions are true 
SELECT 
    * 
FROM 
    table_name
WHERE 
    condition_1 OR condition_2;
--Select rows where either or both conditions are true
SELECT 
    * 
FROM 
    table_name
WHERE 
    condition_1 AND NOT condition_2;
--Select rows where condition_1 is true and condition_2 is false

SELECT 
    name, 
    author, 
    date_pub, 
    pages 
FROM 
    books
WHERE 
    date_pub > '1995-12-31' AND date_pub  < '2001-01-01';
/* the starting and ending dates aren't included;
in order to select all days from 1996 to 2000,
we've taken the last day of 1995
and the first day of 2001 */

SELECT 
    name, 
    author, 
    date_pub, 
    pages 
FROM 
    books
WHERE 
    date_pub BETWEEN '1996-01-01' AND '2000-12-31';
/* the starting and ending dates are included, so
we select the first day of the year 1996  
and the last day of 2000 */

SELECT 
    name, 
    genre 
FROM 
    books
WHERE 
    genre = 'Humor' OR genre = 'Fantasy' OR genre = 'Young Adult';

SELECT  
    name, 
    genre  
FROM 
    books
WHERE 
    genre IN ('Humor', 'Fantasy', 'Young Adult');

/*If the values are numbers, they are separated from each other by commas: IN (3,7,9). 
If they're strings, they're put in single quotes and, again, separated by commas: 
IN ('value_1','value_2','value_3'). 
Date and time are indicated as follows: IN ('yyyy-mm-dd','yyyy-mm-dd')*/

SELECT  
    name, 
    genre 
FROM 
    books
WHERE 
    genre NOT IN ('Humor', 'Fantasy', 'Young Adult');

SELECT 
	name, 
	price, 
	name_store, 
	date_upd 
FROM 
	products_data_all 
WHERE 
	category ='milk' AND date_upd IN ('2019-06-08', '2019-06-15', '2019-06-22', '2019-06-29');

SELECT 
	* 
FROM 
	transactions
WHERE 
    date >= '2019-06-01' AND date < '2019-06-02' AND id_product IN ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38,
39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51,
52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64,
65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77,
78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90,
91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103,
104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142,
143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155,
156, 157, 158, 159, 160, 161);--write constraint here