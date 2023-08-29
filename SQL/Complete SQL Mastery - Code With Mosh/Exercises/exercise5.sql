-- Exercise 5

-- Use create-db-store.sql

-- Return customers born
--  between 1/1/1990 and 1/1/2000

USE store;

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'