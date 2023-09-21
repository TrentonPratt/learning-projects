-- Exercise 28

-- Use create-db-store.sql

-- Find the products that have never been ordered

USE store;

SELECT *
FROM products p
WHERE NOT EXISTS (
	SELECT *
    FROM order_items
    WHERE product_id = p.product_id
)