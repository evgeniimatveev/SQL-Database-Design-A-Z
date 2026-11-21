-- Select all records from the transactions table to review the data
select * 
from transactions;

-- Count the total number of records in the transactions table
-- This helps to understand the overall size of the dataset
select count(*)
from transactions;  -- Example output: 3455 rows

-- Count the total number of unique records in the transactions table
-- This ensures that there are no duplicate rows, which is a key requirement for 1NF (First Normal Form)
select count(*)
from (
    select distinct * 
    from transactions
) as unique_transactions;  -- Example output: 3455 Unique Values

-- Analysis Commentary:
-- The counts from the two queries above should match, confirming that all rows in the table are unique.
-- If the count of unique records is less than the total records, this indicates the presence of duplicate rows.
-- Since the output is 3455 in both cases, it confirms that there are no duplicates, ensuring the table complies with 1NF.