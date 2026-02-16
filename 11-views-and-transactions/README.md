# 11 – Views and Transactions

This module focuses on database abstraction and data consistency using views and transactions.

It explores how views simplify complex queries and how transactions ensure atomic and reliable data modifications in relational databases.

The objective of this chapter is to understand:

- how virtual tables (views) work
- when views are updatable
- how CHECK OPTION enforces data rules
- how transaction control protects data integrity
- why storage engines matter in MySQL

---

## Topics Covered

- Creating and using views
- Updatable vs non-updatable views
- WITH CHECK OPTION
- START TRANSACTION
- COMMIT
- ROLLBACK
- ACID properties
- Storage engines (InnoDB vs non-transactional engines)

---

## Files

### `01_views.sql`

Demonstrates:
- Creating views
- Simplifying complex SELECT queries
- Using views as virtual tables
- Applying ORDER BY to view results

Focus: query abstraction and reuse.

---

### `02_updatable_views.sql`

Demonstrates:
- Updating data through views
- Conditions for updatable views
- Using WITH CHECK OPTION to enforce constraints

Focus: controlled data modification.

---

### `03_transactions.sql`

Demonstrates:
- START TRANSACTION
- COMMIT
- ROLLBACK
- Temporary vs permanent changes

Focus: atomic execution of SQL statements.

---

### `04_transactions_exercises.sql`

Practical exercises demonstrating:
- Rollback behavior
- Commit behavior
- Multi-step transaction logic

Focus: understanding execution flow inside transactions.

---

### `05_storage_engine.sql`

Demonstrates:
- Checking storage engines
- Creating tables with InnoDB
- Converting storage engines
- Testing transaction behavior

Focus: understanding why transactions require a transactional engine.

---

## Key Concepts

- A view is a virtual table defined by a SELECT statement.
- Views improve readability, abstraction, and security.
- Not all views are updatable.
- A transaction is a group of SQL statements executed as a single logical unit.
- COMMIT makes changes permanent.
- ROLLBACK restores the database to its previous state.
- Transactions in MySQL require a transactional storage engine such as InnoDB.
- ACID properties ensure reliability in multi-user environments.

This chapter strengthens understanding of data integrity, isolation, and controlled data modification in SQL systems.