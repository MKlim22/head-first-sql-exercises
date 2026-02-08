/* =========================================================
   String functions practice (SELECT only)
   These queries do NOT modify table data.
   ========================================================= */

-- Quick check
SELECT location
FROM my_contacts
LIMIT 10;


-- -----------------------------------------
-- 1) RIGHT / LEFT
-- -----------------------------------------
SELECT
  location,
  RIGHT(location, 2) AS state_guess
FROM my_contacts;

SELECT
  location,
  LEFT(location, 3) AS first_3_chars
FROM my_contacts;


-- -----------------------------------------
-- 2) SUBSTRING
-- SUBSTRING(text, start, length)  -- start is 1-based in MySQL
-- -----------------------------------------
SELECT
  location,
  SUBSTRING(location, 1, 3) AS first_3,
  SUBSTRING(location, 5, 6) AS middle_piece
FROM my_contacts;


-- -----------------------------------------
-- 3) SUBSTRING_INDEX
-- -----------------------------------------
-- City = everything before comma
SELECT
  location,
  SUBSTRING_INDEX(location, ',', 1) AS city_guess
FROM my_contacts;

-- State part = everything after comma (may contain leading space)
SELECT
  location,
  SUBSTRING_INDEX(location, ',', -1) AS state_raw
FROM my_contacts;

-- Trim spaces from the state part
SELECT
  location,
  TRIM(SUBSTRING_INDEX(location, ',', -1)) AS state_clean
FROM my_contacts;


-- -----------------------------------------
-- 4) UPPER / LOWER
-- -----------------------------------------
SELECT
  first_name,
  UPPER(first_name) AS upper_first,
  LOWER(first_name) AS lower_first
FROM my_contacts;


-- -----------------------------------------
-- 5) LENGTH
-- -----------------------------------------
SELECT
  location,
  LENGTH(location) AS location_length
FROM my_contacts;


-- -----------------------------------------
-- 6) REVERSE
-- -----------------------------------------
SELECT
  location,
  REVERSE(location) AS reversed_location
FROM my_contacts;


-- -----------------------------------------
-- 7) LTRIM / RTRIM / TRIM (on literal strings)
-- -----------------------------------------
SELECT LTRIM('   hello')  AS ltrim_demo;
SELECT RTRIM('hello   ')  AS rtrim_demo;
SELECT TRIM('  hello  ')  AS trim_demo;