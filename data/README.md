# 📂 Data

Eight CSV files, one group per section (Section 4 needs none). They were imported by hand in the original course; the course scripts use these table names: `consumer_complaints`, `console_games`, `console_dates`, `pets`, `owners`, `proceduredetails`, `procedurehistory` and `transactions`.

| File | Rows × columns | Used in | What it is |
|---|:-:|---|---|
| [`consumer-complaints.csv`](consumer-complaints.csv) | 65,499 × 18 | Section 1 | Consumer complaints about financial products (15 MB) |
| [`console-games.csv`](console-games.csv) | 15,979 × 10 | Section 2 | Video games with rank, platform, year, genre, publisher and regional sales |
| [`console-dates.csv`](console-dates.csv) | 30 × 5 | Section 2 | Console release and discontinuation dates, units sold |
| [`pets.csv`](pets.csv) | 100 × 6 | Section 3 | Pets of a veterinary clinic |
| [`owners.csv`](owners.csv) | 89 × 8 | Section 3 | Pet owners |
| [`procedures-details.csv`](procedures-details.csv) | 41 × 4 | Section 3 | Procedure types and prices |
| [`procedures-history.csv`](procedures-history.csv) | 2,284 × 4 | Section 3 | Procedures performed on pets |
| [`oltp.csv`](oltp.csv) | 3,455 × 10 | Section 5 | A wide online-shop transactions table to normalize |

> The old files carried names such as `P9-Pets.csv` in the scripts; they are now plain kebab-case names and the scripts point to `data/`.

---

*Built by [Evgenii Matveev](https://github.com/evgeniimatveev) · Data Analyst / Analytics & MLOps Engineer*
