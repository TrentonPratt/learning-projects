-- Exercise 1

-- Use store database

-- Return all the products in the database
-- Results set should have the three following columns
--  name
--  unit price
--  new price (unit price * 1.1)

USE store;
SELECT
	name, 
	unit_price, 
    (unit_price * 1.1) AS 'new price'
FROM products;