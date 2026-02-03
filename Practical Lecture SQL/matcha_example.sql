-- ==========================================
-- SQL BASICS: Resource Page + Mini Lab
-- ==========================================
-- Topic: SELECT, WHERE, ORDER BY, JOIN, AGGREGATE
-- Tool: SQLite
-- Purpose: Practical guide + practice activity
-- ==========================================


-- =====================
-- LECTURE DEMOS
-- =====================
-- 1) See the data (always start here)
SELECT * FROM customers;

-- 2) Filter rows (WHERE)
SELECT *
FROM orders
WHERE price > 6.00;

-- 3) Sort results (ORDER BY)
SELECT *
FROM orders
ORDER BY price DESC;

-- 4) Simple JOIN (most important concept)
SELECT c.name, o.drink, o.price
FROM customers c
INNER JOIN orders o
    ON o.customer_id = c.customer_id;

-- 5) Simple AGGREGATE w/ JOIN & GROUP BY
SELECT c.name, SUM(o.price) AS total_spent
FROM customers c
JOIN orders o
    ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;


-- =====================
-- PRACTICE PROBLEMS
-- =====================

-- A) Sort orders by newest first

-- B) How many total orders are in the database?

-- C) How much has Leah spent in total?

-- Bonus: List everyone who has "A" as the second charecter in their name.