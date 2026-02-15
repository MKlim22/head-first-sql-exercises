-- File: 03_transactions.sql
-- Description:
-- Demonstrates START TRANSACTION, COMMIT and ROLLBACK.


   -- Setup (use piggy_bank from 02_updatable_views.sql)
   -- If the table does not exist, run 02_updatable_views.sql first.

SELECT * FROM piggy_bank ORDER BY id;


   -- 1) ROLLBACK example
   -- Make changes inside a transaction
   -- Roll them back (undo)

START TRANSACTION;

UPDATE piggy_bank
SET coin = 'Q'
WHERE coin = 'P';

-- Changes are visible inside the transaction
SELECT * FROM piggy_bank ORDER BY id;

ROLLBACK;

-- After rollback, changes are undone
SELECT * FROM piggy_bank ORDER BY id;


   -- 2) COMMIT example
   -- Make changes inside a transaction
   -- Commit them (make permanent)

START TRANSACTION;

UPDATE piggy_bank
SET coin = 'D'
WHERE coin = 'Q' AND coin_year > '1980';

SELECT * FROM piggy_bank ORDER BY id;

COMMIT;

-- After commit, changes remain
SELECT * FROM piggy_bank ORDER BY id;


   -- Key notes:
   -- A transaction groups multiple statements into one unit of work
   -- COMMIT makes changes permanent
   -- ROLLBACK reverts changes since START TRANSACTION
   -- Transactions require a transactional engine (e.g., InnoDB)