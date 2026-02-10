-- Focus:
-- Combining aggregates, GROUP BY, DISTINCT,
-- ORDER BY and LIMIT in realistic queries


-- 1. Total sales per person (basic combination)
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC;


-- 2. Top seller (highest total sales)
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC
LIMIT 1;


-- 3. Second place (OFFSET example)
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC
LIMIT 1, 1;


-- 4. How many different people made sales?
SELECT COUNT(DISTINCT first_name) AS unique_people
FROM cookie_sales;


-- 5. Sales summary with multiple aggregates
SELECT first_name,
       COUNT(*)   AS number_of_sales,
       SUM(sales) AS total_sales,
       AVG(sales) AS avg_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC;


-- 6. Top 3 sellers with detailed summary
SELECT first_name,
       COUNT(*)   AS number_of_sales,
       SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC
LIMIT 3;


-- Key takeaways:
-- 1. Aggregates reduce rows to one row per group
-- 2. GROUP BY defines the grouping level
-- 3. ORDER BY sorts the final result
-- 4. LIMIT controls how many rows are returned
-- 5. OFFSET starts counting from 0