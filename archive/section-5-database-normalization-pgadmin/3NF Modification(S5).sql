-- Select all records from the transactions table for further analysis and data preparation
select * 
from transactions;  -- 3455 records

-- Select all records from the customers table to check for normalization compliance
select * 
from customers;  -- 942 records (confirmed to comply with 1NF, 2NF, 3NF)

-- Select all records from the items table to review the data
select * 
from items;  -- 126 records

-- Identifying and removing transitive dependencies:
-- Create a temporary table to separate the transitive-dependent columns description and retail_price
create table tmp as
select item, 
       description, 
       retail_price
from transactions;

-- Check the contents of the temporary table to ensure the data was copied correctly
select * 
from tmp;  -- 3455 records

-- Check for unique records to ensure there are no duplicates
-- This will help us create a normalized table without redundant data
select count(*) 
from (
    select distinct * 
    from tmp
) as unique_transactions;  -- Expecting 126 unique records

-- Create the items table, which will store unique combinations of item, description, and retail_price
-- This step normalizes the data and removes any potential duplicates
create table items as
select distinct * 
from tmp;  -- Expecting 126 records

-- Check the new items table to ensure it only contains unique records
select * 
from items;

-- Removing redundant columns from the transactions table:
-- Now that we have a normalized items table, we can remove the 
-- transitive-dependent columns description and retail_price from the transactions table.
-- We retain only the item column, which will be used as a foreign key
alter table transactions
drop column description,
drop column retail_price;

-- Now all three tables (transactions, items, customers) comply with 3NF
-- The data is organized according to normalization principles, minimizing redundancy 
-- and eliminating potential update anomalies.
