-- Exercise 11

-- Use create-db-store.sql

-- Join order_items table with products table
--  Return order_id, product_id, name, quantity, and unit_price
--  Use alias to simplify code

USE store;

SELECT order_id, p.product_id, name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id