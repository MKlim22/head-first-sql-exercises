-- File: 04_transactions_exercises.sql
-- Description:
-- Practical exercises demonstrating transaction behavior,
-- ROLLBACK vs COMMIT, and execution flow control.


  -- Setup – Example table

CREATE TABLE piggy_bank (
    id INT PRIMARY KEY,
    coin CHAR(1),
    coin_year INT
);

INSERT INTO piggy_bank VALUES
(1, 'Q', 1950),
(2, 'P', 1972),
(3, 'N', 2005),
(4, 'Q', 1999);

SELECT * FROM piggy_bank ORDER BY id;


 --  1) ROLLBACK example
 --  Make changes inside a transaction and undo them

START TRANSACTION;

UPDATE piggy_bank
SET coin = 'Q'
WHERE coin = 'P';

SELECT * FROM piggy_bank;  -- Changes visible inside transaction

ROLLBACK;

SELECT * FROM piggy_bank;  -- Data restored to original state


 --  2) COMMIT example
 --  Make changes permanent

START TRANSACTION;

UPDATE piggy_bank
SET coin = 'Q'
WHERE coin = 'P';

SELECT * FROM piggy_bank;  -- Changes visible

COMMIT;

SELECT * FROM piggy_bank;  -- Changes persist


  -- 3) Conditional update with transaction control

START TRANSACTION;

UPDATE piggy_bank
SET coin = 'D'
WHERE coin = 'Q'
AND coin_year > 1980;

SELECT * FROM piggy_bank;

COMMIT;


  -- Key Observations:
  -- Changes inside a transaction are temporary
  -- until COMMIT is executed.
  -- ROLLBACK restores the database to the state
  -- before START TRANSACTION.
  -- Transactions ensure atomicity:
  -- either all changes succeed, or none do.