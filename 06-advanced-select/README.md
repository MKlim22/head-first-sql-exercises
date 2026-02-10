# Module 06 – Advanced SELECT

This module focuses on more advanced `SELECT` queries in SQL.  
It covers aggregation, grouping, ordering results, limiting output, and working with unique values.


## Topics covered

- Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
- Removing duplicates with `DISTINCT`
- Grouping data using `GROUP BY`
- Sorting results with `ORDER BY`
- Limiting result sets using `LIMIT`
- Combining multiple clauses in a single query

---

## Files

### `aggregate_functions.sql`
Examples of SQL aggregate functions:
- `COUNT()` – counting rows
- `SUM()` – summing numeric values
- `AVG()` – calculating averages
- `MIN()` / `MAX()` – finding smallest and largest values

Includes examples both with and without grouping.

---

### `distinct.sql`
Using `DISTINCT` to:
- return unique values
- combine `DISTINCT` with aggregate functions (e.g. `COUNT(DISTINCT column)`)

---

### `group_by.sql`
Examples of grouping rows using `GROUP BY`:
- grouping by one column
- grouping combined with aggregate functions
- understanding how aggregation changes query results

---

### `order_by.sql`
Sorting query results using `ORDER BY`:
- ascending and descending order
- ordering by aggregate results
- ordering grouped data

---

### `limit.sql`
Limiting the number of returned rows:
- basic `LIMIT`
- using `LIMIT` with `ORDER BY`
- using `LIMIT` with two parameters (offset, count)

---

## Notes

- Most queries are written in a **step-by-step style**:
  - preview data with `SELECT`
  - apply aggregation or filtering
  - verify results
- The scripts are meant for **learning and experimentation**, not production use.
- No README is required to run the SQL files — each file is self-contained.