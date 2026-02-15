# 10 – Outer Joins Unions

This module focuses on advanced multi-table querying techniques and set-based SQL operations.

It covers outer joins, self joins, UNION operations, and set comparison tools such as INTERSECT and EXCEPT.  
The goal is to understand how relational data can be combined, compared, and reshaped using SQL.

---

## Topics Covered

- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- Handling unmatched rows
- Self-referencing foreign keys
- SELF JOIN
- UNION
- UNION ALL
- INTERSECT
- EXCEPT
- CREATE TABLE AS (CTAS)

---

## Files

### `left_right_outer_joins.sql`

Examples of:
- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- Handling NULLs in unmatched rows

Focus: understanding how outer joins preserve non-matching rows and how they differ from INNER JOIN.

---

### `self_join.sql`

Examples of:
- Self-referencing foreign key relationships
- Basic SELF JOIN
- Converting a SELF JOIN into a correlated subquery

Focus: querying hierarchical or recursive-style data (e.g., employee–manager relationships).

---

### `union.sql`

Examples of:
- Basic UNION (removes duplicates)
- UNION ALL (keeps duplicates)
- Combining results from multiple tables
- ORDER BY with UNION
- CREATE TABLE AS using UNION

Focus: combining result sets while respecting column compatibility and data types.

---

### `intersect_except.sql`

Examples of:
- INTERSECT
- EXCEPT
- Comparing result sets
- Identifying shared and exclusive rows

Focus: performing set-based comparisons between query results.

---

### `create_table_as.sql`

Examples of:
- Creating new tables from SELECT queries
- Materializing query results
- Using CTAS with set operations

Focus: transforming analytical results into physical tables.

---

## Key Concepts

- OUTER JOIN preserves unmatched rows from one side of the relationship.
- SELF JOIN allows querying a table as if it were joined with itself.
- UNION removes duplicates by default; UNION ALL keeps them.
- INTERSECT returns common rows between queries.
- EXCEPT returns rows present in the first query but not the second.
- CREATE TABLE AS materializes query output into a new table.

This module strengthens understanding of relational logic, data comparison, and advanced result shaping in SQL.