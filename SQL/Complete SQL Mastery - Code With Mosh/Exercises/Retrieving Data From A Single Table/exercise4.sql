-- Exercise 4

-- Use create-db-store.sql

-- Return products with
--  quantity in stock equal to 49, 38, 72

USE store;

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72)