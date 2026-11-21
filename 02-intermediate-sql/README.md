# 🔧 Section 2: Intermediate SQL

Changing tables and shaping results: `ALTER`, `UPDATE`, `ORDER BY`, dates, `CAST`, `NULL` handling and string functions, on video-game sales and console release dates.

**Data:** [`console-games.csv`](../data/console-games.csv) (15,979 rows), [`console-dates.csv`](../data/console-dates.csv) (30 rows)

> Scripts named `00-…` create the tables and import the data: run them first. In many of them the `CREATE TABLE` and `COPY` sit inside a comment, because the data was imported by hand with the pgAdmin / SSMS import wizard; see the [upload guides](../docs/upload-guides/).

### 🐘 PostgreSQL (pgAdmin) (10 scripts)

| Script | Topic |
|---|---|
| [`00-create-database-new-table-console-games.sql`](postgresql/00-create-database-new-table-console-games.sql) | Create database new table console games |
| [`00-create-new-table-console-dates.sql`](postgresql/00-create-new-table-console-dates.sql) | Create new table console dates |
| [`alter-table-add-new-column-update-set-where-filter.sql`](postgresql/alter-table-add-new-column-update-set-where-filter.sql) | Alter table add new column update set where filter |
| [`altering-table-add-new-column-update-and-set-new-formula.sql`](postgresql/altering-table-add-new-column-update-and-set-new-formula.sql) | Altering table add new column update and set new formula |
| [`order-by.sql`](postgresql/order-by.sql) | Order by |
| [`select-age-order-by.sql`](postgresql/select-age-order-by.sql) | Select age order by |
| [`select-cast-order-by-to-date.sql`](postgresql/select-cast-order-by-to-date.sql) | Select cast order by to date |
| [`select-from-where-date-filter.sql`](postgresql/select-from-where-date-filter.sql) | Select from where date filter |
| [`select-length-left-right-reverse.sql`](postgresql/select-length-left-right-reverse.sql) | Select length left right reverse |
| [`select-where-is-null.sql`](postgresql/select-where-is-null.sql) | Select where is null |

### 🪟 SQL Server (SSMS) (8 scripts)

| Script | Topic |
|---|---|
| [`00-create-2-table-update-and-set-null.sql`](sql-server/00-create-2-table-update-and-set-null.sql) | Create 2 table update and set null |
| [`00-import-data-create-new-table.sql`](sql-server/00-import-data-create-new-table.sql) | Import data create new table |
| [`alter-add-column-update-set.sql`](sql-server/alter-add-column-update-set.sql) | Alter add column update set |
| [`datediff-year-month-order-by-desc.sql`](sql-server/datediff-year-month-order-by-desc.sql) | Datediff year month order by desc |
| [`dates-datepart-or.sql`](sql-server/dates-datepart-or.sql) | Dates datepart or |
| [`dates.sql`](sql-server/dates.sql) | Dates |
| [`left-right-reverse-with-varchar.sql`](sql-server/left-right-reverse-with-varchar.sql) | Left right reverse with varchar |
| [`order-by-asc-desc.sql`](sql-server/order-by-asc-desc.sql) | Order by asc desc |

---

[← SQL Basics](../01-sql-basics/) &nbsp;·&nbsp; [Advanced SQL →](../03-advanced-sql/)

*Built by [Evgenii Matveev](https://github.com/evgeniimatveev) · Data Analyst / Analytics & MLOps Engineer*
