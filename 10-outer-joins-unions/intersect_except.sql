-- File: intersect_except.sql
-- Description:
-- Demonstrates set-based operations in SQL.
-- These operators compare result sets rather than tables.

 -- INTERSECT
 -- Returns rows that appear in BOTH result sets.
 -- Think of it as a mathematical intersection.

SELECT title
FROM job_current

INTERSECT

SELECT title
FROM job_desired;


  -- EXCEPT
  -- Returns rows from the FIRST query
  -- that do NOT appear in the second query.
  -- This operation is directional.

SELECT title
FROM job_current

EXCEPT

SELECT title
FROM job_desired;

  -- Reversed EXCEPT
  -- Demonstrates that order matters.

SELECT title
FROM job_desired

EXCEPT

SELECT title
FROM job_current;


   -- Key Concepts:

   -- INTERSECT = common values only
   -- EXCEPT = subtraction of sets (A − B)
   -- Order matters in EXCEPT
   -- Both operators remove duplicates by default
   -- Not supported in MySQL (use JOIN alternatives)