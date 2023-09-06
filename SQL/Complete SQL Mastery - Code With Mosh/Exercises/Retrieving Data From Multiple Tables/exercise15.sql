-- Exercise 15

-- Use create-db-store.sql

-- Do a cross join between shippers and products
--  using the implicit syntax
-- and then using the explicit syntax

USE store;

SELECT *
FROM shippers s, products p;

SELECT *
FROM shippers s
CROSS JOIN products p;