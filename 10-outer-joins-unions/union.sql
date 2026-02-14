-- File: union.sql
-- Description:
-- Combine results from multiple SELECT statements.

   -- 1) Basic UNION
   -- What happens here?
   -- We combine results from two SELECT statements
   -- UNION removes duplicates (by default)
   -- The number of columns must match
   -- Data types must be compatible

SELECT title
FROM job_current

UNION

SELECT title
FROM job_desired;


   -- 2) UNION with three tables
   -- What happens here?
   -- We combine results from 3 tables into one list
   -- Still: same number of columns and compatible types

SELECT title
FROM job_current

UNION

SELECT title
FROM job_desired

UNION

SELECT title
FROM job_listings;


   -- 3) ORDER BY in UNION
   -- What happens here?
   -- ORDER BY appears only once: at the very end
   -- It sorts the final combined result (not individual SELECTs)

SELECT title
FROM job_current

UNION

SELECT title
FROM job_desired

UNION

SELECT title
FROM job_listings
ORDER BY title;


   -- 4) UNION ALL (keeps duplicates)
   -- What happens here?
   -- UNION ALL does NOT remove duplicates
   -- It is usually faster because no duplicate check is performed

SELECT title
FROM job_current

UNION ALL

SELECT title
FROM job_desired

UNION ALL

SELECT title
FROM job_listings
ORDER BY title;


   -- 5) CREATE TABLE AS with UNION
   -- What happens here?
   -- We store the UNION result in a new table
   -- Useful when you want to materialize a result set

CREATE TABLE my_union AS
SELECT title
FROM job_current

UNION

SELECT title
FROM job_desired

UNION

SELECT title
FROM job_listings;