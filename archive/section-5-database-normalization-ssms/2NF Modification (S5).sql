-- Create a temporary table 'tmp' to extract customer-specific data from the transactions table
-- This temporary table is necessary to separate customer and transaction data, in order to achieve normalization to the Second Normal Form (2NF)

select customerid,                -- Customer ID for linking with the customers table
       firstname,                 -- First name of the customer
       surname,                   -- Last name of the customer
       shipping_state,            -- State where the item was shipped
       loyalty_discount           -- Loyalty discount applied to the purchase
into tmp
from transactions;                -- Insert data into the temporary table 'tmp'

-- Create the 'customers' table by extracting unique customer records from the temporary 'tmp' table
-- This is a data normalization step to bring the database structure into compliance with 2NF

select distinct customerid,       -- Extract unique customer records
       firstname,                 -- Customer's first name
       surname,                   -- Customer's last name
       shipping_state,            -- State where the item was shipped
       loyalty_discount           -- Loyalty discount applied
into customers
from tmp;

-- Remove customer-specific columns from the transactions table as they have been moved to the customers table
-- The transactions table now only contains transaction-specific data, adhering to 2NF requirements

alter table transactions
drop column firstname,            -- Remove the first name column
             surname,             -- Remove the last name column
             shipping_state,      -- Remove the shipping state column
             loyalty_discount;    -- Remove the loyalty discount column

-- Check the number of rows in the transactions table and compare it with the count of distinct records to ensure there are no duplicate entries
-- This confirms adherence to the First (1NF) and Second Normal Forms (2NF)

select count(*) as TotalRows,          -- Total number of rows in the transactions table
       count(distinct *) as UniqueRows -- Number of unique rows in the transactions table
from transactions;

-- Drop the temporary table 'tmp' as it is no longer needed after the data normalization process

drop table tmp;




