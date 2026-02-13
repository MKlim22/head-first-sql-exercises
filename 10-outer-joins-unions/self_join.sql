-- File: self_join.sql
-- Description:
-- This script demonstrates how to use a SELF JOIN.
-- A self join allows querying a table as if it were joined
-- with another table – but it is actually the same table.

   -- Example 1 – Basic SELF JOIN
   -- Scenario:
   -- Each employee has a boss_id that references another
   -- employee in the same table.

SELECT
    e1.name AS employee_name,
    e2.name AS boss_name
FROM clown_info e1
INNER JOIN clown_info e2
    ON e1.boss_id = e2.id;


   -- Explanation:
   -- e1 represents the employee
   -- e2 represents the boss
   -- boss_id is a self-referencing foreign key
   -- We join the table to itself using aliases


   -- Example 2 – SELF JOIN rewritten as correlated subquery
   -- Demonstrates relationship between joins and subqueries

SELECT
    c1.name,
    (
        SELECT name
        FROM clown_info
        WHERE c1.boss_id = id
    ) AS boss_name
FROM clown_info c1;


   -- Key Concept:
   -- The subquery depends on the outer query (correlated)
   -- This produces the same result as the self join
   -- Self joins are often more readable and efficient