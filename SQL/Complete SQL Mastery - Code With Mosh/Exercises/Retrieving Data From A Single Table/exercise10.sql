-- Exercise 10

-- Use create-db-store.sql

-- Get the top three loyal customers

USE store;

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3