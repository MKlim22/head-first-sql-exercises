-- Focus: LIMIT
-- limiting the number of returned rows


-- 1. LIMIT – basic usage
-- Show only first 2 rows
SELECT first_name, sales
FROM cookie_sales
LIMIT 2;


-- 2. LIMIT with ORDER BY
-- Top 2 sales results
SELECT first_name, sales
FROM cookie_sales
ORDER BY sales DESC
LIMIT 2;


-- 3. LIMIT with GROUP BY
-- Total sales per person, show top 2
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC
LIMIT 2;


-- 4. LIMIT with OFFSET (two parameters)
-- Get the second result only
-- SQL starts counting from 0
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC
LIMIT 1, 1;


-- Important notes:
-- 1. LIMIT is evaluated last
-- 2. LIMIT n → returns first n rows
-- 3. LIMIT offset, n → skips offset rows, returns n rows
-- 4. OFFSET starts from 0