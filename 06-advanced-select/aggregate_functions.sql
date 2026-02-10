-- Focus: aggregate functions
-- COUNT, SUM, AVG, MIN, MAX

-- 1. COUNT – how many rows
-- Count all rows in the table
SELECT COUNT(*)
FROM cookie_sales;

-- Count non-NULL values in a column
SELECT COUNT(sales)
FROM cookie_sales;

-- Count rows per group (how many sales per person)
SELECT first_name, COUNT(*) AS sales_count
FROM cookie_sales
GROUP BY first_name;


-- 2. SUM – total value
-- Total sales (all rows)
SELECT SUM(sales) AS total_sales
FROM cookie_sales;

-- Total sales per person
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name;


-- 3. AVG – average value
-- Average sale value (all rows)
SELECT AVG(sales) AS avg_sales
FROM cookie_sales;

-- Average sales per person
SELECT first_name, AVG(sales) AS avg_sales
FROM cookie_sales
GROUP BY first_name;


-- 4. MIN and MAX – smallest and largest values
-- Smallest sale value
SELECT MIN(sales) AS smallest_sale
FROM cookie_sales;

-- Largest sale value
SELECT MAX(sales) AS largest_sale
FROM cookie_sales;

-- Min and max sales per person
SELECT first_name,
       MIN(sales) AS min_sale,
       MAX(sales) AS max_sale
FROM cookie_sales
GROUP BY first_name;


-- 5. Aggregates with ORDER BY
-- Order people by total sales (highest first)
SELECT first_name, SUM(sales) AS total_sales
FROM cookie_sales
GROUP BY first_name
ORDER BY total_sales DESC;