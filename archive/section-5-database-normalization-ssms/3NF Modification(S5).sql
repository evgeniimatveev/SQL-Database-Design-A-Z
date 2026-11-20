-- 3NF Modification
-- In this step, we are modifying the 'transactions' table to ensure it complies with the Third Normal Form (3NF).
-- The goal is to remove transitive dependencies by separating attributes into a new table.

-- Step 1: Create a temporary table 'tmp' to hold item-related data that needs to be separated.
-- This table will include 'item', 'description', and 'retail_price', which are not directly dependent on the primary key of the 'transactions' table.
-- The 'item' column will later serve as a foreign key to link back to this information.

select item,                      -- The unique identifier for the item
       [description],             -- The description of the item
       retail_price               -- The retail price of the item
into tmp                          -- Store this data temporarily in a table called 'tmp'
from transactions;

-- Step 2: Ensure that there are no duplicate rows in the 'tmp' table.
-- This is necessary to confirm that each item is uniquely identified and that the temporary table only contains distinct rows.

select distinct *                 -- Select distinct rows to avoid duplicates
from tmp;

-- Step 3: Create the 'items' table and populate it with distinct item data from the 'tmp' table.
-- This will allow us to remove these columns from the 'transactions' table, achieving the necessary 3NF structure.

select distinct *                 -- Ensure all data inserted into the 'items' table is unique
into items                        -- Create a new table called 'items' with the distinct data
from tmp;                         -- Populate it using data from 'tmp'

-- Step 4: Now that the item-related data has been moved to the 'items' table, 
-- remove the 'description' and 'retail_price' columns from the 'transactions' table.
-- The 'item' column will be retained as a foreign key to maintain the relationship between transactions and items.

alter table transactions
drop column [description],        -- Remove the 'description' column as it's now in the 'items' table
             retail_price;        -- Remove the 'retail_price' column for the same reason

-- Step 5: Verify that the 'transactions' table has been updated and now complies with 3NF.
-- Also, confirm that the 'items' and 'customers' tables have been correctly populated and normalized.

select * 
from transactions;                -- Check the structure of the 'transactions' table after modification
-- 3NF confirmed

select * 
from items;                       -- Verify the contents of the new 'items' table
-- 3NF confirmed

select * 
from customers;                   -- Confirm the structure and data in the 'customers' table
-- 3NF confirmed

-- Step 6: Drop the temporary table 'tmp' as it's no longer needed after moving the data to the 'items' table.
-- This is a cleanup step to ensure no unnecessary tables remain in the database.

drop table tmp;                   -- Clean up by removing the temporary 'tmp' table




--- EXTRA                            +             +               +              +                  +              +

-- Joining transactions, items, and customers tables
-- This query retrieves detailed information about each transaction, including customer details and item information.

select 
    t.TransactionID,               -- ID of the transaction
    t.Timestamp,                   -- Timestamp of the transaction
    c.firstname,                        -- Customer's first name
    c.Surname,                     -- Customer's last name
    t.Description as item_description, -- Description of the purchased item (from RAW_Transactions)
    t.Retail_Price                 -- Retail price of the purchased item (from RAW_Transactions)
  
from 
    [OLTP].[dbo].[RAW_Transactions] as t  -- Alias 't' for the transactions table
join 
    [OLTP].[dbo].[items] as i             -- Alias 'i' for the items table
    on t.Item = i.Item                 -- Join condition: matching item ID in transactions and items
join 
    [OLTP].[dbo].[customers] as c         -- Alias 'c' for the customers table
    on t.CustomerID = c.CustomerID     -- Join condition: matching customer ID in transactions and customers
order by 
    t.TransactionID;  





