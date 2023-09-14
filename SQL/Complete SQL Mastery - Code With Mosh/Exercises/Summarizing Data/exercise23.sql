-- Exercise 22

-- Use create-db-invoicing.sql

-- Return results with rollup
--  payment_method by name
--  total spent with each payment method

USE invoicing;

SELECT 
	pm.name AS payment_method,
    SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP