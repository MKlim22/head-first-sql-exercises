# Module 3 – UPDATE and DELETE

This module focuses on modifying and removing existing data in SQL tables.
It introduces the `UPDATE` and `DELETE` statements and shows how to use them
safely and effectively with `WHERE` conditions.

## What is covered

- updating existing records using `UPDATE`
- changing one or multiple columns at once
- using basic math operations in `UPDATE` statements
- updating multiple rows with logical operators (`AND`, `OR`)
- deleting rows using `DELETE`
- importance of using `WHERE` to avoid unwanted changes
- previewing data with `SELECT` before `UPDATE` or `DELETE`

## Files

- `update_delete.sql` – example SQL statements demonstrating how to update
  and delete records, including safe practices such as checking affected rows
  before making changes.

## Notes

This module emphasizes safe data modification.
Before running `UPDATE` or `DELETE`, it is recommended to run a `SELECT`
statement with the same `WHERE` condition to verify which rows will be affected.