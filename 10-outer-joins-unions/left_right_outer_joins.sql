-- File: left_right_outer_joins.sql
-- Description:
-- This script demonstrates LEFT OUTER JOIN and RIGHT OUTER JOIN.
-- It shows how to retrieve matched and unmatched rows between tables.

   -- 1) LEFT OUTER JOIN
   -- Returns:
   -- All rows from the LEFT table
   -- Matching rows from the RIGHT table
   -- NULL when no match exists

SELECT
    mc.first_name,
    mc.last_name,
    jc.title
FROM my_contacts mc
LEFT JOIN job_current jc
    ON mc.contact_id = jc.contact_id;


   -- 2) Identifying Missing Matches (NULL analysis)
   -- Find contacts without a current job

SELECT
    mc.first_name,
    mc.last_name
FROM my_contacts mc
LEFT JOIN job_current jc
    ON mc.contact_id = jc.contact_id
WHERE jc.contact_id IS NULL;


   -- 3) RIGHT OUTER JOIN
   -- Returns:
   -- All rows from the RIGHT table
   -- Matching rows from the LEFT table
   -- NULL when no match exists

SELECT
    mc.first_name,
    mc.last_name,
    jc.title
FROM my_contacts mc
RIGHT JOIN job_current jc
    ON mc.contact_id = jc.contact_id;


   -- 4) Comparing LEFT vs RIGHT JOIN
   -- RIGHT JOIN example rewritten as LEFT JOIN
   -- (Best practice: prefer LEFT JOIN for clarity)

SELECT
    mc.first_name,
    mc.last_name,
    jc.title
FROM job_current jc
LEFT JOIN my_contacts mc
    ON mc.contact_id = jc.contact_id;


   -- 5) Practical Use Case
   -- Find job listings that are not currently filled

SELECT
    jl.title
FROM job_listings jl
LEFT JOIN job_current jc
    ON jl.title = jc.title
WHERE jc.title IS NULL;