-- Exercise 16

-- Use create-db-store.sql

-- Return table with customer_id, first_name, points, and a medal type
--  Bronze: <3000
--  Silver: 2000-3000
--  Gold: >2000

USE store;

SELECT
	customer_id,
    first_name,
    points,
    'Gold' AS medal_type
FROM customers
WHERE points > 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Silver' AS medal_type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Bronze' AS medal_type
FROM customers
WHERE points < 2000
ORDER BY first_name