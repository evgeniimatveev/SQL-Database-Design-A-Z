# 🧩 Section 5: Database Normalization

Normal forms in practice: investigate a wide transactions table for 1NF, 2NF and 3NF violations, then split it into `transactions`, `customers` and `items`.

**Data:** [`oltp.csv`](../data/oltp.csv) (3,455 rows)

> Scripts named `00-…` create the tables and import the data: run them first. In many of them the `CREATE TABLE` and `COPY` sit inside a comment, because the data was imported by hand with the pgAdmin / SSMS import wizard; see the [upload guides](../docs/upload-guides/).

### 🐘 PostgreSQL (pgAdmin) (5 scripts)

| Script | Topic |
|---|---|
| [`1nf-investigation-count.sql`](postgresql/1nf-investigation-count.sql) | 1NF investigation count |
| [`2nf-investigation.sql`](postgresql/2nf-investigation.sql) | 2NF investigation |
| [`2nf-modification.sql`](postgresql/2nf-modification.sql) | 2NF modification |
| [`3nf-investigation.sql`](postgresql/3nf-investigation.sql) | 3NF investigation |
| [`3nf-modification.sql`](postgresql/3nf-modification.sql) | 3NF modification |

### 🪟 SQL Server (SSMS) (5 scripts)

| Script | Topic |
|---|---|
| [`1nf-investigation-distinct.sql`](sql-server/1nf-investigation-distinct.sql) | 1NF investigation distinct |
| [`2nf-investigation.sql`](sql-server/2nf-investigation.sql) | 2NF investigation |
| [`2nf-modification.sql`](sql-server/2nf-modification.sql) | 2NF modification |
| [`3nf-investigation.sql`](sql-server/3nf-investigation.sql) | 3NF investigation |
| [`3nf-modification.sql`](sql-server/3nf-modification.sql) | 3NF modification |

---

[← Database Creation & Design](../04-database-creation-and-design/) &nbsp;·&nbsp; [Course map →](../README.md)

*Built by [Evgenii Matveev](https://github.com/evgeniimatveev) · Data Analyst / Analytics & MLOps Engineer*
