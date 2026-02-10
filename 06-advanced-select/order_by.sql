-- Focus: ORDER BY
-- sorting query results


-- 1. ORDER BY – basic usage (ascending)
-- Sort results alphabetically by first name
SELECT first_name, sales
FROM cookie_sales
ORDER BY first_name;


-- 2. ORDER BY DESC (descending)
-- Sort results by sales value from highest to lowest
SELECT first_name, sales
FROM cookie_sales
ORDER BY sales DESC;


-- 3. ORDER BY with multiple columns
-- First sort by first_name (A–Z),
-- then by sales (highest first)
SELECT first_name, sales
FROM cookie_sales
ORDER BY first_name ASC, sales DESC;


-- 4. ORDER BY with aggregate functions
-- Total sales per person, sorted by total sales
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC;


-- 5. ORDER BY using column position (not recommended)
-- ORDER BY column number in SELECT list
SELECT first_name, sales
FROM cookie_sales
ORDER BY 2 DESC;


-- Important notes:
-- 1. ORDER BY is evaluated last
-- 2. Default sorting order is ASC
-- 3. DESC must be explicitly specified
-- 4. ORDER BY column numbers reduce readability