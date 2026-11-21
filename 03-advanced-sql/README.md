# 🔗 Section 3: Advanced SQL

Joining tables: `INNER`, `LEFT`, `FULL OUTER` and `CROSS JOIN`, joins on several fields, and cleaning up complex joins, on a veterinary clinic (pets, owners, procedures).

**Data:** [`pets.csv`](../data/pets.csv) (100 rows), [`owners.csv`](../data/owners.csv) (89 rows), [`procedures-details.csv`](../data/procedures-details.csv) (41 rows), [`procedures-history.csv`](../data/procedures-history.csv) (2,284 rows)

> Scripts named `00-…` create the tables and import the data: run them first. In many of them the `CREATE TABLE` and `COPY` sit inside a comment, because the data was imported by hand with the pgAdmin / SSMS import wizard; see the [upload guides](../docs/upload-guides/).

### 🐘 PostgreSQL (pgAdmin) (11 scripts)

| Script | Topic |
|---|---|
| [`00-create-4-brand-new-tables-import-data.sql`](postgresql/00-create-4-brand-new-tables-import-data.sql) | Create 4 brand new tables import data |
| [`advanced-cross-join.sql`](postgresql/advanced-cross-join.sql) | Advanced cross join |
| [`advanced-gpt-complex-joins.sql`](postgresql/advanced-gpt-complex-joins.sql) | Advanced GPT complex joins |
| [`advanced-gpt-joins.sql`](postgresql/advanced-gpt-joins.sql) | Advanced GPT joins |
| [`cleaning-up-my-join.sql`](postgresql/cleaning-up-my-join.sql) | Cleaning up my join |
| [`complex-join.sql`](postgresql/complex-join.sql) | Complex join |
| [`first-left-join.sql`](postgresql/first-left-join.sql) | First left join |
| [`full-outer-join.sql`](postgresql/full-outer-join.sql) | Full outer join |
| [`inner-join.sql`](postgresql/inner-join.sql) | Inner join |
| [`joining-multiple-fields.sql`](postgresql/joining-multiple-fields.sql) | Joining multiple fields |
| [`tips-and-tricks-joins-gpt-alternative.sql`](postgresql/tips-and-tricks-joins-gpt-alternative.sql) | Tips and tricks joins GPT alternative |

### 🪟 SQL Server (SSMS) (11 scripts)

| Script | Topic |
|---|---|
| [`00-import-data-create-4-tables-raw.sql`](sql-server/00-import-data-create-4-tables-raw.sql) | Import data create 4 tables raw |
| [`advanced-join-with-gpt-multiple-fields-eng.sql`](sql-server/advanced-join-with-gpt-multiple-fields-eng.sql) | Advanced join with GPT multiple fields ENG |
| [`advanced-join-with-gpt-multiple-fields-ru-eng.sql`](sql-server/advanced-join-with-gpt-multiple-fields-ru-eng.sql) | Advanced join with GPT multiple fields RU/ENG |
| [`cleaning-join.sql`](sql-server/cleaning-join.sql) | Cleaning join |
| [`complex-join.sql`](sql-server/complex-join.sql) | Complex join |
| [`cross-join.sql`](sql-server/cross-join.sql) | Cross join |
| [`first-left-join.sql`](sql-server/first-left-join.sql) | First left join |
| [`full-outer-join.sql`](sql-server/full-outer-join.sql) | Full outer join |
| [`inner-join-practice-joins.sql`](sql-server/inner-join-practice-joins.sql) | Inner join practice joins |
| [`join-a-multiple-fields.sql`](sql-server/join-a-multiple-fields.sql) | Join a multiple fields |
| [`tips-and-tricks-right-join.sql`](sql-server/tips-and-tricks-right-join.sql) | Tips and tricks right join |

---

[← Intermediate SQL](../02-intermediate-sql/) &nbsp;·&nbsp; [Database Creation & Design →](../04-database-creation-and-design/)

*Built by [Evgenii Matveev](https://github.com/evgeniimatveev) · Data Analyst / Analytics & MLOps Engineer*
