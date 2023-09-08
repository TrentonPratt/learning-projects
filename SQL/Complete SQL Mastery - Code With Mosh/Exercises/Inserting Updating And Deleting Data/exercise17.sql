-- Exercise 17

-- Use create-db-store.sql

-- Insert three rows in the products table

USE store;

INSERT INTO products (
	name,
    quantity_in_stock,
    unit_price)
VALUES
	('Flower Seeds', 804, 2.50),
    ('Shovel', 20, 19.99),
    ('Soil', 5, 6.99)