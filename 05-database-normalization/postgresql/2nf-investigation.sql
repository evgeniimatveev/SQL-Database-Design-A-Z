                                     --2NF Investigation

-- Count the total number of unique transactions based on all columns
select count(*)
from (
    select distinct *  -- Select all distinct rows from the transactions table
    from transactions
) as unique_transactions;  -- Alias for the subquery containing unique transactions

-- Retrieve all records from the transactions table
select * 
from transactions;

-- Identify unique values in the transactionid column
SELECT COUNT(DISTINCT transactionid) 
FROM transactions;

-- Count the number of unique combinations of timestampsec and customerid
SELECT COUNT(*)
FROM (
    SELECT DISTINCT timestampsec, customerid  -- Select distinct pairs of timestamp and customer ID
    FROM transactions
) AS unique_combinations;  -- Alias for the subquery containing unique timestamp-customer pairs

-- --2NF Modification (Placeholder for modifications to ensure Second Normal Form compliance)


