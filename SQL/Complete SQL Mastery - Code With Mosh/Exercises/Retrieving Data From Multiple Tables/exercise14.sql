-- Exercise 14

-- Use create-db-invoicing.sql

-- Join payments table with clients and payment_methods
--  Return date, client, amount, and payment method

USE invoicing;

SELECT
	p.date,
    c.name AS client,
    p.amount,
    pm.name AS "payment method"
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = payment_method_id
LEFT JOIN clients c 
	USING (client_id);