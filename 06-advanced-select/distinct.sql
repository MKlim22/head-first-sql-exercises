-- Focus: DISTINCT
-- returning unique values only


-- 1. DISTINCT – basic usage
-- Show all unique first names
SELECT DISTINCT first_name
FROM cookie_sales;


-- 2. DISTINCT with multiple columns
-- Unique combinations of first name and sales value
SELECT DISTINCT first_name, sales
FROM cookie_sales;


-- 3. DISTINCT vs GROUP BY (comparison)
-- DISTINCT returns unique values only
SELECT DISTINCT first_name
FROM cookie_sales;

-- GROUP BY also returns unique values,
-- but allows aggregates
SELECT first_name
FROM cookie_sales
GROUP BY first_name;


-- 4. DISTINCT with aggregate functions
-- Count how many different people made sales
SELECT COUNT(DISTINCT first_name) AS unique_people
FROM cookie_sales;


-- Important notes:
-- 1. DISTINCT removes duplicates from the result set
-- 2. DISTINCT works on ALL selected columns together
-- 3. DISTINCT is evaluated before ORDER BY
-- 4. DISTINCT cannot replace GROUP BY when aggregates are needed