-- Exercise 2

-- Use create-db-store.sql

-- Get the orders placed this year (2019)

USE store;
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01';