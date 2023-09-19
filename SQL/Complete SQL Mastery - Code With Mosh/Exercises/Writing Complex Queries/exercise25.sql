-- Exercise 25

-- Use create-db-invoicing.sql

-- Find clients without invoices

USE invoicing;

SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT DISTINCT client_id
	FROM invoices
)