# 07 – Multitable Database Design

This module focuses on database normalization and multi-table design.  
It covers the first three normal forms, functional dependencies, and table relationships.

---

## Topics covered

- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)
- Functional dependencies
- Partial and transitive dependencies
- Composite primary keys
- Table relationships (1:1, 1:N, N:M)

---

## Files

### `1nf.sql`
Examples of:
- atomic vs non-atomic data
- removing repeating groups
- restructuring tables to meet First Normal Form

Focus:  
One cell = one value.

---

### `2nf.sql`
Examples of:
- composite primary keys
- partial functional dependency
- splitting tables to remove partial dependencies

Focus:  
All non-key columns must depend on the whole primary key.

---

### `3nf.sql`
Examples of:
- transitive dependency
- separating dependent attributes into new tables
- improving logical table structure

Focus:  
Non-key columns must depend only on the primary key.

---

### `normalization_examples.sql`
Step-by-step practical examples of:
- converting unnormalized tables into 1NF, 2NF, and 3NF
- restructuring tables into smaller, related tables
- applying normalization in real scenarios

---

### `relationships.sql`
Examples of database relationships:
- One-to-One
- One-to-Many
- Many-to-Many (junction tables)
- foreign keys and referential integrity

---

## Notes

- Normalization improves data consistency and reduces redundancy.
- Most real-world schemas use artificial primary keys (e.g., `id`).
- Proper table design prevents update, insert, and delete anomalies.
- These scripts are written for learning and experimentation.