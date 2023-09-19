-- Exercise 24

-- Use create-db-hr.sql

-- Find employees who earn more than average

USE hr;

SELECT *
FROM employees
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
)