-- Exercise 26

-- Use create-db-store.sql

-- Find customers who have ordered lettuce
--  Select customer_id, first_name, last_name
--  Write two queries. One with a subquery and one with a left join

USE store;

-- Join

SELECT DISTINCT
	customer_id,
    first_name,
    last_name
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3;

-- Subquery

SELECT
	customer_id,
    first_name,
    last_name
FROM customers c
WHERE customer_id IN (
	SELECT o.customer_id
    FROM order_items oi
    JOIN orders o USING (order_id)
    WHERE product_id = 3
)