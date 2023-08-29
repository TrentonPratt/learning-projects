-- Exercise 6

-- Use create-db-store.sql

-- Get the customers whose
--  addresses contain TRAIL or AVENUE
--  phone numbers end with 9

USE store;

SELECT *
FROM customers
WHERE address LIKE '%TRAIL%'
	OR address LIKE '%AVENUE%'
	OR phone LIKE '%9'