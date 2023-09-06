-- Exercise 12

-- Use create-db-invoicing.sql

-- Join payments table with payment_methods and clients
--  Produce report with name of client and payment method

USE invoicing;

SELECT
	p.invoice_id,
	p.date,
	p.amount,
    c.name,
    pm.name
FROM payments p 
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c 
	ON p.client_id = c.client_id