-- File: 02_updatable_views.sql
-- Description:
-- Demonstrates when a view is updatable
-- and how CHECK OPTION enforces data rules.


   -- 1) Create base table

DROP TABLE IF EXISTS piggy_bank;

CREATE TABLE piggy_bank (
    id INT AUTO_INCREMENT PRIMARY KEY,
    coin CHAR(1) NOT NULL,
    coin_year CHAR(4)
);


   -- 2) Insert sample data

INSERT INTO piggy_bank (coin, coin_year) VALUES
('Q', '1999'),
('D', '1940'),
('N', '2005'),
('Q', '1980'),
('P', '2001');


   -- 3) Create a simple updatable view
   -- This view references one table only.

CREATE VIEW pb_quarters AS
SELECT *
FROM piggy_bank
WHERE coin = 'Q';


   -- 4) Insert through the view
   -- (Without CHECK OPTION this may allow invalid rows)

INSERT INTO pb_quarters (coin, coin_year)
VALUES ('Q', '1993');


   -- 5) Create a view with CHECK OPTION
   -- Enforces WHERE condition during INSERT/UPDATE.

CREATE VIEW pb_dimes AS
SELECT *
FROM piggy_bank
WHERE coin = 'D'
WITH CHECK OPTION;


   -- 6) This will FAIL
   -- Because CHECK OPTION prevents invalid insert.

-- This should fail:
-- INSERT INTO pb_dimes (coin, coin_year)
-- VALUES ('Q', '2005');


   -- 7) Valid insert (allowed)

INSERT INTO pb_dimes (coin, coin_year)
VALUES ('D', '1975');


   -- 8) View inspection

SELECT * FROM pb_quarters;
SELECT * FROM pb_dimes;
SELECT * FROM piggy_bank;