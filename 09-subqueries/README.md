# 09 – Subqueries

This module focuses on subqueries (nested queries) and their role in advanced SQL filtering and analytical logic.

It covers noncorrelated and correlated subqueries, set-based filtering using IN, boolean checks with EXISTS, and performance considerations when using nested queries.

The goal of this module is to understand how subqueries interact with the outer query and when they are preferable to JOIN-based solutions.

---

## Topics covered

- Noncorrelated subqueries
- Correlated subqueries
- Single-value subqueries (MAX, AVG, COUNT)
- Subqueries in SELECT
- Subqueries with IN
- EXISTS and NOT EXISTS
- Execution logic of nested queries
- Performance awareness (correlated vs noncorrelated)

---

## Files

### `basic_subqueries.sql`
Examples of:
- single-value subqueries
- subqueries with MAX and AVG
- subqueries inside SELECT
- filtering with IN

Focus: subqueries that execute independently of the outer query.

---

### `correlated_subqueries.sql`
Examples of:
- subqueries referencing outer query columns
- per-row execution logic
- combining aggregation with correlation

Focus: understanding how correlated subqueries differ in execution behavior.

---

### `exists_not_exists.sql`
Examples of:
- EXISTS
- NOT EXISTS
- boolean-style filtering
- practical comparison between EXISTS and IN

Focus: conditional existence checks and performance implications.

---

## Key Concepts

- A subquery is executed before or during evaluation of the outer query.
- Noncorrelated subqueries execute once and can run independently.
- Correlated subqueries execute per outer row and may impact performance.
- IN compares against a returned set of values.
- EXISTS evaluates to TRUE if at least one matching row exists.
- Many subqueries can be rewritten using JOINs, but clarity and intent should guide the decision.

This module builds the foundation for more advanced query patterns and improves analytical reasoning in relational databases.