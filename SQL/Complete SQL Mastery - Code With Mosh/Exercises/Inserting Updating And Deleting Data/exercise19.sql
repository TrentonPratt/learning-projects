-- Exercise 19

-- Use create-db-store.sql

-- Update comments for orders table
--  Customers with >3000 points should be regarded as Gold Customers

USE store;

UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id IN
	(SELECT customer_id
    FROM customers
    WHERE points > 3000)