/* =========================================================
   ALTER TABLE practice (MySQL-style)
   ========================================================= */

-- Always check the current structure first
DESCRIBE my_contacts;


-- -----------------------------------------
-- 1) ADD COLUMN (default: added at the end)
-- -----------------------------------------
ALTER TABLE my_contacts
ADD COLUMN phone VARCHAR(10);

DESCRIBE my_contacts;


-- -----------------------------------------
-- 2) Column position options (FIRST / AFTER)
-- Use ONE of these examples when practicing.
-- -----------------------------------------

-- Put a column at the beginning
-- ALTER TABLE my_contacts
-- ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT FIRST;

-- Put a column after a specific column
-- ALTER TABLE my_contacts
-- ADD COLUMN phone2 VARCHAR(10) AFTER first_name;


-- -----------------------------------------
-- 3) Rename a table
-- -----------------------------------------
DESCRIBE projects;

ALTER TABLE projects
RENAME TO project_list;

DESCRIBE project_list;


-- -----------------------------------------
-- 4) CHANGE vs MODIFY
-- CHANGE: rename + define full new type
-- MODIFY: keep name, change definition only
-- -----------------------------------------

-- CHANGE: number -> proj_id and make it auto-generated
ALTER TABLE project_list
CHANGE COLUMN number proj_id INT NOT NULL AUTO_INCREMENT;

-- Add a primary key
ALTER TABLE project_list
ADD PRIMARY KEY (proj_id);

DESCRIBE project_list;

-- CHANGE: rename + type in one step
ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_desc VARCHAR(100),
CHANGE COLUMN contractoronjob   con_name  VARCHAR(30);

DESCRIBE project_list;

-- MODIFY: only change the type/definition (name stays)
ALTER TABLE project_list
MODIFY COLUMN proj_desc VARCHAR(120);

DESCRIBE project_list;


-- -----------------------------------------
-- 5) ADD multiple columns in one statement
-- -----------------------------------------
ALTER TABLE project_list
ADD COLUMN con_phone  VARCHAR(10),
ADD COLUMN start_date DATE,
ADD COLUMN est_cost   DECIMAL(7,2);

DESCRIBE project_list;


-- -----------------------------------------
-- 6) DROP COLUMN (WARNING: data is lost)
-- -----------------------------------------
-- Preview the column before dropping (optional)
SELECT start_date
FROM project_list
LIMIT 5;

ALTER TABLE project_list
DROP COLUMN start_date;

DESCRIBE project_list;


-- -----------------------------------------
-- 7) Full makeover example: hooptie -> car_table
-- -----------------------------------------
DESCRIBE hooptie;

ALTER TABLE hooptie
RENAME TO car_table;

DESCRIBE car_table;

-- Add primary key as first column
ALTER TABLE car_table
ADD COLUMN car_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (car_id);

DESCRIBE car_table;

-- Add VIN as second column (MySQL supports SECOND)
ALTER TABLE car_table
ADD COLUMN vin VARCHAR(16) SECOND;

DESCRIBE car_table;

-- Rename and redefine column types
ALTER TABLE car_table
CHANGE COLUMN mo model VARCHAR(20);

ALTER TABLE car_table
MODIFY COLUMN color VARCHAR(20) AFTER model;

-- Portable ordering: place year after color (instead of SIXTH)
ALTER TABLE car_table
MODIFY COLUMN year INT AFTER color;

ALTER TABLE car_table
CHANGE COLUMN howmuch price DECIMAL(7,2);

DESCRIBE car_table;


-- -----------------------------------------
-- 8) Optional: drop primary key / remove auto-increment
-- (use only when you intentionally want to undo)
-- -----------------------------------------

-- ALTER TABLE car_table
-- DROP PRIMARY KEY;

-- Remove AUTO_INCREMENT (must re-state the full definition)
-- ALTER TABLE car_table
-- CHANGE COLUMN car_id car_id INT NOT NULL;