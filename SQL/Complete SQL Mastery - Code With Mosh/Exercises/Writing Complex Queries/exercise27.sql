-- Exercise 27

-- Use create-db-invoicing.sql

-- Get invoices that are larger than the client's average invoice amount

USE invoicing;

SELECT *
FROM invoices i
WHERE invoice_total > (
	SELECT AVG(invoice_total)
    FROM invoices
    WHERE client_id = i.client_id
)