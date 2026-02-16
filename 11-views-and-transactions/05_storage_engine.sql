-- File: 05_storage_engine.sql
-- Description:
-- Shows why transactions require a transactional storage
-- engine (e.g., InnoDB). Demonstrates how to check and
-- set the engine.


  -- 1) Check current engine settings / table engine

/* Check what engines are available in your MySQL */
SHOW ENGINES;

/* Check your existing table engine (example: piggy_bank) */
SHOW TABLE STATUS LIKE 'piggy_bank';


  -- 2) Create a transactional table (recommended: InnoDB)

DROP TABLE IF EXISTS bank_tx;

CREATE TABLE bank_tx (
    id INT PRIMARY KEY AUTO_INCREMENT,
    account VARCHAR(20) NOT NULL,
    balance INT NOT NULL
) ENGINE = InnoDB;

INSERT INTO bank_tx (account, balance) VALUES
('checking', 1000),
('savings', 30);

SELECT * FROM bank_tx;


  -- 3) Transaction test (ROLLBACK should work in InnoDB)
START TRANSACTION;

UPDATE bank_tx
SET balance = balance - 1000
WHERE account = 'checking';

UPDATE bank_tx
SET balance = balance + 1000
WHERE account = 'savings';

SELECT * FROM bank_tx;   -- you should see the changed balances

ROLLBACK;

SELECT * FROM bank_tx;   -- balances should return to original


  -- 4) Make changes permanent (COMMIT)

START TRANSACTION;

UPDATE bank_tx
SET balance = balance - 1000
WHERE account = 'checking';

UPDATE bank_tx
SET balance = balance + 1000
WHERE account = 'savings';

COMMIT;

SELECT * FROM bank_tx;   -- changes persist


  -- 5) Convert an existing table to InnoDB (if needed)

/*
If a table is not transactional (e.g., MyISAM),
ROLLBACK will NOT undo changes. In MySQL you can
convert a table to InnoDB like this:
*/

-- Option A (modern / recommended):
ALTER TABLE piggy_bank ENGINE = InnoDB;

-- Option B (older syntax you may still see in books):
ALTER TABLE piggy_bank TYPE = InnoDB;


  -- Key Takeaways:
  -- Transactions require a transactional engine (InnoDB).
  -- COMMIT makes changes permanent.
  -- ROLLBACK undoes changes since START TRANSACTION.