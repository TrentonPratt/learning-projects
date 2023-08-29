-- Exercise 7

-- Use create-db-store.sql

-- Get the customers whose
--  first names are ELKA or AMBUR
--  last names end with EY or ON
--  last names start with MY or contains SE
-- last names contain B followed by R or U

USE store;

SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR'
	OR last_name REGEXP 'EY$|ON$'
    OR last_name REGEXP '^MY|SE'
    OR last_name REGEXP 'B[RU]'