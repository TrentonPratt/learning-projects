-- Exercise 18

-- Use create-db-invoicing.sql

-- Create copy of invoices table named invoices_archived
--  Instead of client_id column, use column_name
--  Only copy rows that have a payment_date

USE invoicing;

CREATE TABLE invoices_archived AS
SELECT
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING(client_id)
WHERE payment_date IS NOT NULL