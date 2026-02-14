-- File: create_table_as.sql
-- Description:
-- Demonstrates how to create a new table
--from the result of a SELECT statement.


  -- Example 1 – Create table from a simple SELECT

CREATE TABLE high_salary_jobs AS
SELECT *
FROM job_listings
WHERE salary > 80000;


  -- Example 2 – Create table from UNION result
  -- Combines data from multiple sources

CREATE TABLE all_job_titles AS
SELECT title FROM job_current

UNION

SELECT title FROM job_desired

UNION

SELECT title FROM job_listings;


   -- Key Concepts:

   -- CREATE TABLE AS copies the result of a query
   -- Column names come from the SELECT statement
   -- Constraints (PK, FK) are NOT copied
   -- Useful for reporting, snapshots, or data staging