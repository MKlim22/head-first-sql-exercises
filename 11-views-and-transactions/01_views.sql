-- File: 01_views.sql
-- Description:
-- Basic view creation and usage.


   -- 1) Create a simple view
   --  The view stores a SELECT definition.

CREATE VIEW web_designers AS
SELECT mc.first_name,
       mc.last_name,
       mc.phone,
       mc.email
FROM my_contacts mc
NATURAL JOIN job_desired jd
WHERE jd.title = 'Web Designer';


   -- 2) Querying a view
   -- A view behaves like a virtual table.

SELECT *
FROM web_designers;


   -- 3) Ordering results from a view
   -- ORDER BY applies to the final result set.

SELECT *
FROM web_designers
ORDER BY last_name;


   -- 4) View with join and calculated column
   -- Demonstrates data abstraction and logic encapsulation.

CREATE VIEW job_raises AS
SELECT
    mc.first_name,
    mc.last_name,
    jc.salary AS current_salary,
    jd.salary_low AS desired_salary,
    (jd.salary_low - jc.salary) AS raise
FROM job_current jc
INNER JOIN job_desired jd
    ON jc.contact_id = jd.contact_id
INNER JOIN my_contacts mc
    ON mc.contact_id = jc.contact_id;


SELECT *
FROM job_raises
ORDER BY last_name;