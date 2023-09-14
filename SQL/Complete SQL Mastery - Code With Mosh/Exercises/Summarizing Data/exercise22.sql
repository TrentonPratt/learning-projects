-- Exercise 22

-- Use create-db-store.sql

-- Get the customers
--  located in Virginia
--  who have spent more than $100

USE store;

SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
    c.state,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c 
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY 
	c.customer_id,
    c.first_name,
    c.last_name,
    c.state
HAVING total_spent > 100