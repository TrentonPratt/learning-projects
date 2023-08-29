-- Exercise 8

-- Use create-db-store.sql

-- Get the orders that are not shipped

USE store;

SELECT *
FROM orders
WHERE shipped_date IS NULL;