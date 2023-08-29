-- Exercise 9

-- Use create-db-store.sql

-- Get all orders with order_id 2
--  Sort them by total price in descending order

USE store;

SELECT *, (unit_price * quantity) AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC