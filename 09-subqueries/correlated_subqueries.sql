-- Focus:
-- - correlated subqueries (depend on outer query)
-- - executed once per outer row


-- 1) What makes a subquery "correlated"?

-- A correlated subquery references a value from the outer query.
-- Because of that, it cannot run independently.
-- It is evaluated once per row of the outer query.


-- 2) Example: contacts with exactly 3 interests

-- For each contact in my_contacts,
-- count how many interests they have in contact_interest.
-- Keep only those where the count equals 3.

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name
FROM my_contacts mc
WHERE 3 = (
    SELECT COUNT(*)
    FROM contact_interest ci
    WHERE ci.contact_id = mc.contact_id
);

-- Key point:
-- The inner query uses mc.contact_id (outer query value),
-- so it is correlated.
--
-- Execution idea:
-- For each row in my_contacts:
--   run subquery with that contact_id
--   compare COUNT(*) to 3
--   keep or discard the row


-- 3) Example: contacts with more interests than the average

-- This shows correlation plus aggregation logic.

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name
FROM my_contacts mc
WHERE (
    SELECT COUNT(*)
    FROM contact_interest ci
    WHERE ci.contact_id = mc.contact_id
) > (
    SELECT AVG(interest_count)
    FROM (
        SELECT COUNT(*) AS interest_count
        FROM contact_interest
        GROUP BY contact_id
    ) AS counts
);

-- Explanation:
-- - First subquery: count interests for the current contact (correlated)
-- - Second subquery: compute the average interest count across contacts (noncorrelated)
--
-- Note:
-- Some SQL engines may require slightly different syntax for the derived table.
-- The main purpose here is to show the logic pattern.


-- 4) Practical note (performance awareness)

-- Correlated subqueries can be expensive on large tables,
-- because they may run once per outer row.
-- Many correlated subqueries can be rewritten using JOIN + GROUP BY,
-- which is often faster.