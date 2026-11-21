# 🔎 Section 1: SQL Basics

Your first queries: `SELECT`, `FROM`, `WHERE`, logical `AND` / `OR`, `LIKE` with wildcards and `UPPER()` / `LOWER()`, all on a real table of consumer complaints.

**Data:** [`consumer-complaints.csv`](../data/consumer-complaints.csv) (65,499 rows)

> Scripts named `00-…` create the tables and import the data: run them first. In many of them the `CREATE TABLE` and `COPY` sit inside a comment, because the data was imported by hand with the pgAdmin / SSMS import wizard; see the [upload guides](../docs/upload-guides/).

### 🐘 PostgreSQL (pgAdmin) (5 scripts)

| Script | Topic |
|---|---|
| [`00-first-database-create-new-table-and-import-dataset.sql`](postgresql/00-first-database-create-new-table-and-import-dataset.sql) | First database create new table and import dataset |
| [`basics-select-from-where-filter-practice-or-and.sql`](postgresql/basics-select-from-where-filter-practice-or-and.sql) | Basics select from where filter practice or and |
| [`select-from-where-filter-ca-tx-mortgage.sql`](postgresql/select-from-where-filter-ca-tx-mortgage.sql) | Select from where filter CA, TX, mortgage |
| [`select-from-where-filter-equals.sql`](postgresql/select-from-where-filter-equals.sql) | Select from where filter equals |
| [`where-like-upper-lower-wildcards.sql`](postgresql/where-like-upper-lower-wildcards.sql) | Where like upper lower wildcards |

### 🪟 SQL Server (SSMS) (7 scripts)

| Script | Topic |
|---|---|
| [`00-first-database-create-new-table-and-import-dataset.sql`](sql-server/00-first-database-create-new-table-and-import-dataset.sql) | First database create new table and import dataset |
| [`first-query-select-from.sql`](sql-server/first-query-select-from.sql) | First query select from |
| [`select-count-where.sql`](sql-server/select-count-where.sql) | Select count where |
| [`select-from-where-filter-equals.sql`](sql-server/select-from-where-filter-equals.sql) | Select from where filter equals |
| [`select-from-where-like-and-wildcard.sql`](sql-server/select-from-where-like-and-wildcard.sql) | Select from where like and wildcard |
| [`select-from-where-like-and-wildcardss.sql`](sql-server/select-from-where-like-and-wildcardss.sql) | Select from where like and wildcardss |
| [`select-from-where-logical-and-or.sql`](sql-server/select-from-where-logical-and-or.sql) | Select from where logical and or |

---

[← Course map](../README.md) &nbsp;·&nbsp; [Intermediate SQL →](../02-intermediate-sql/)

*Built by [Evgenii Matveev](https://github.com/evgeniimatveev) · Data Analyst / Analytics & MLOps Engineer*
