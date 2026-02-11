# 05 — ALTER Table & String Functions

This folder contains practical SQL exercises focused on:
- modifying existing table structures
- transforming text data using string functions
- updating new columns based on existing column values

All examples are written to be executed step by step.

---

## What is covered

### Table structure changes
- adding new columns
- renaming tables
- renaming columns
- changing column data types
- adding and removing primary keys
- column positioning (`FIRST`, `AFTER`)
- removing columns (with data loss warning)

### String manipulation
- extracting text with `LEFT()` and `RIGHT()`
- slicing text using `SUBSTRING()`
- splitting values with `SUBSTRING_INDEX()`
- converting text with `UPPER()` and `LOWER()`
- cleaning text using `TRIM()`, `LTRIM()`, `RTRIM()`
- measuring text length with `LENGTH()`
- reversing text with `REVERSE()`

### Updating data using existing columns
- adding new columns for cleaner data design
- populating new columns using values from existing columns
- intentional use of `UPDATE` without `WHERE` to modify all rows
- previewing results before updating data

---

## Files

- **alter_table.sql**  
  Executable examples of table structure modifications using `ALTER TABLE`.

- **string_functions.sql**  
  `SELECT` queries demonstrating common string and text functions.

- **update_using_existing_column.sql**  
  Examples showing how to add new columns and populate them using values from existing columns.

---

## How to work with these files

1. Run `DESCRIBE table_name;` before and after changes to understand the impact.
2. Execute statements step by step, not all at once.
3. Read comments inside `.sql` files before running each block.
4. Treat `DROP` and `UPDATE` statements with extra care.

---

## Notes

These examples focus on understanding *how* and *why* table structures and data are modified, not on memorizing commands.  
Each file is designed to be reusable as a reference during future SQL work.