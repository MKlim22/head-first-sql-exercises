-- Focus:
-- - EXISTS
-- - NOT EXISTS
-- - correlated subqueries with boolean logic


-- 1) What is EXISTS?

-- EXISTS checks whether the subquery returns at least one row.
-- It returns TRUE if any row exists.
-- It does NOT return the data itself.
--
-- EXISTS is commonly used with correlated subqueries.


-- 2) Example: contacts who have at least one interest

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       mc.email
FROM my_contacts mc
WHERE EXISTS (
    SELECT *
    FROM contact_interest ci
    WHERE ci.contact_id = mc.contact_id
);

-- Explanation:
-- For each contact,
-- check if there is at least one matching row
-- in contact_interest.
--
-- If yes → keep the contact.
-- If no → discard.


-- 3) Example: contacts who are NOT currently employed

SELECT mc.contact_id,
       mc.first_name,
       mc.last_name,
       mc.email
FROM my_contacts mc
WHERE NOT EXISTS (
    SELECT *
    FROM job_current jc
    WHERE jc.contact_id = mc.contact_id
);

-- Explanation:
-- Keep only contacts for whom
-- there is no matching row in job_current.


-- 4) EXISTS vs IN (important distinction)

-- IN:
--   compares a value against a set of returned values.
--
-- EXISTS:
--   checks if at least one matching row exists.
--
-- EXISTS can be more efficient because:
-- - it stops scanning once a match is found
-- - it does not need to return full result sets


-- 5) Interview-level awareness

-- - EXISTS is often preferred for correlated checks.
-- - IN is convenient for small result sets.
-- - On large datasets, EXISTS may perform better.
-- - Always understand whether your subquery returns:
--     * a value
--     * a set
--     * or a boolean condition