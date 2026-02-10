-- Focus: GROUP BY
-- grouping rows and using aggregates per group


-- 1. GROUP BY – basic usage
-- Show total sales per person
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name;


-- 2. GROUP BY with COUNT
-- How many sales rows per person
SELECT first_name, COUNT(*) AS number_of_sales
FROM cookie_sales
GROUP BY first_name;


-- 3. GROUP BY with multiple aggregates
-- Sales summary per person
SELECT first_name,
       COUNT(*)     AS sales_count,
       SUM(sales)   AS total_sales,
       AVG(sales)   AS avg_sales
FROM cookie_sales
GROUP BY first_name;


-- 4. GROUP BY + ORDER BY
-- Order people by total sales (highest first)
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC;


-- 5. GROUP BY with LIMIT
-- Top 2 people by total sales
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC
LIMIT 2;


-- Important rules:
-- 1. Every column in SELECT must be:
--    - inside an aggregate function
--    - OR listed in GROUP BY
-- 2. GROUP BY reduces rows → one row per group
-- 3. ORDER BY and LIMIT are applied AFTER grouping