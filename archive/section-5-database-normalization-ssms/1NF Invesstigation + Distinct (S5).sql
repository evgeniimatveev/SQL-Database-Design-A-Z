use oltp  -- Switch to the OLTP database
go

-- First check: Count the total number of rows in the Transactions table
-- This is to understand the total number of records in the table before checking for uniqueness
select count(*)  
from transactions;  -- Expected result: 3455 rows (total number of records in the table)

-- Second check: Count the number of unique rows in the Transactions table
-- We use DISTINCT to eliminate any potential duplicates to ensure that each row is unique
-- Important for 1NF: The table must not have duplicate rows; each record should be unique
select count(*)  
from (
    select distinct *  -- Select only unique rows
    from [dbo].[Transactions]  -- From the Transactions table
) as tmp;  -- The subquery creates a temporary table tmp that contains only unique rows
-- Expected result: 3455 rows (indicating that there are no duplicates in the table, and it complies with 1NF)