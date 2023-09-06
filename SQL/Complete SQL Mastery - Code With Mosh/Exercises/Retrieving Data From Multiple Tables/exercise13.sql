-- Exercise 13

-- Use create-db-store.sql

-- Join customers, orders, shippers, and order_statuses tables
--  Return order_date, order_id, customer, shipper, and status

USE store;

SELECT 
	o.order_id,
    o.order_date,
    c.first_name AS customer,
    sh.name AS shipper,
    os.name AS status
FROM orders o
JOIN customers c
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id