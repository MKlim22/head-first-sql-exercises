-- Focus:
-- - noncorrelated subqueries
-- - single-value subqueries
-- - subqueries in SELECT
-- - subqueries with IN


-- 1) Single-value subquery (MAX example)

-- The inner query runs first and returns a single value.
-- The outer query uses that value.

SELECT title, salary
FROM job_listings
WHERE salary = (
    SELECT MAX(salary)
    FROM job_listings
);

-- The subquery returns one value (highest salary).
-- The outer query returns the row(s) with that salary.


-- 2) Subquery with AVG

SELECT title, salary
FROM job_listings
WHERE salary > (
    SELECT AVG(salary)
    FROM job_listings
);

-- Returns jobs that pay above the average salary.


-- 3) Subquery inside SELECT (calculated value)

SELECT mc.first_name,
       mc.last_name,
       jc.salary,
       jc.salary - (
           SELECT AVG(salary)
           FROM job_current
           WHERE title = 'Web Developer'
       ) AS difference_from_avg
FROM my_contacts mc
NATURAL JOIN job_current jc
WHERE jc.title = 'Web Developer';

-- The subquery returns a single value.
-- That value is used inside a calculation.


-- 4) Subquery with IN (multiple values)

SELECT mc.first_name, mc.last_name
FROM my_contacts mc
NATURAL JOIN job_current jc
WHERE jc.title IN (
    SELECT title
    FROM job_listings
);

-- The subquery returns multiple titles.
-- IN treats the result as a set.
-- The outer query filters rows based on membership.