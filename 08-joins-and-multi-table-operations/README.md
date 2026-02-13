# 08 – Joins and Multi-Table Operations

This module focuses on combining data from multiple relational tables using SQL JOIN operations.

It covers the mechanics of INNER JOIN and its variations, explains join behavior in detail, and demonstrates practical multi-table queries using foreign key relationships and junction tables.

The goal of this module is to understand how relational schemas are queried in real-world analytical scenarios.

---

## Topics covered

- INNER JOIN
- EQUIJOIN
- NON-EQUIJOIN
- NATURAL JOIN
- CROSS JOIN (Cartesian Product)
- Table and column aliases
- Multi-table joins (1:N and N:M relationships)
- Aggregation after JOIN (JOIN + GROUP BY)

---

## Files

### `inner_join.sql`
Core INNER JOIN logic:
- joining tables using explicit `ON` conditions
- foreign key → primary key relationships
- understanding result filtering behavior

---

### `aliases.sql`
Use of table and column aliases:
- improving readability
- avoiding ambiguity
- writing production-style queries

---

### `cross_join.sql`
Cartesian product:
- behavior without join conditions
- row multiplication effect
- risks of missing join predicates

---

### `non_equijoin.sql`
Join conditions using comparison operators:
- inequality joins
- range-based joins
- analytical use cases

---

### `natural_join.sql`
Automatic joins based on matching column names:
- internal behavior
- risks in schema evolution
- why explicit joins are preferred in production systems

---

### `join_exercises.sql`
Practical examples combining:
- lookup tables
- junction tables
- multi-table joins
- aggregation with JOIN + GROUP BY

---

## Key Concepts

- INNER JOIN returns only matching rows between tables.
- Join predicates define logical relationships between datasets.
- Join cardinality directly affects result size and performance.
- Missing or incorrect join conditions can create unintended Cartesian products.
- Proper indexing on join columns improves query efficiency.
- Explicit join conditions are preferred over implicit behavior (e.g., NATURAL JOIN).

This module builds the foundation for more advanced querying techniques such as OUTER JOINs, subqueries, and set operations.