column_name LIKE 'regular expression'

SELECT 
    * 
FROM 
    books
WHERE 
    name LIKE '%Vampire%';

SELECT 
    * 
FROM 
    books
WHERE 
    name NOT LIKE '%Vampire%';

column_name LIKE '%!%' ESCAPE '!'
--finds all substrings ending with %

SELECT
	*--write your code here
FROM
	products
WHERE
    units LIKE '%!%' ESCAPE '!'--write your code here

SELECT 
	 * 
FROM 
	products
WHERE
    name LIKE '%Moo%'

