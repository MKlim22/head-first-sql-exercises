/* =========================================================
   Updating new columns using values from an existing column
   Focus:
   - adding new columns
   - filling them with UPDATE
   - why UPDATE without WHERE updates every row
   ========================================================= */

-- -----------------------------------------
-- 0) Inspect before doing anything
-- -----------------------------------------
SELECT location
FROM my_contacts
LIMIT 10;


-- -----------------------------------------
-- 1) Add new columns for cleaner design (atomic data)
-- -----------------------------------------
ALTER TABLE my_contacts
ADD COLUMN city  VARCHAR(50),
ADD COLUMN state CHAR(2);

DESCRIBE my_contacts;


-- -----------------------------------------
-- 2) Fill state from location
-- WARNING: no WHERE = update ALL rows (intentionally)
-- -----------------------------------------
-- Preview result first
SELECT
  location,
  RIGHT(location, 2) AS new_state
FROM my_contacts
LIMIT 10;

UPDATE my_contacts
SET state = RIGHT(location, 2);

-- Verify
SELECT location, state
FROM my_contacts
LIMIT 10;


-- -----------------------------------------
-- 3) Fill city from location
-- -----------------------------------------
-- Preview result first
SELECT
  location,
  TRIM(SUBSTRING_INDEX(location, ',', 1)) AS new_city
FROM my_contacts
LIMIT 10;

UPDATE my_contacts
SET city = TRIM(SUBSTRING_INDEX(location, ',', 1));

-- Verify
SELECT location, city, state
FROM my_contacts
LIMIT 10;