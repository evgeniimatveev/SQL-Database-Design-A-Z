-- 2NF Investigation - Checking for compliance with Second Normal Form (2NF)

-- Create a temporary table 'tmp' to separate customer-specific columns
create table tmp as
select customerid,        -- Select customer ID for linking to the customers table
       firstname,         -- Select the first name of the customer
       surname,           -- Select the surname of the customer
       shipping_state,    -- Select the state where the item was shipped
       loyalty_discount   -- Select the loyalty discount applied to the purchase
from transactions;

-- Create the 'customers' table by selecting distinct customer records from the temporary 'tmp' table
create table customers as
select distinct *          -- Select distinct records to avoid duplicate entries in the customers table
from tmp;

-- Verify the contents of the new 'customers' table to ensure data has been correctly transferred
select * 
from customers;  -- Check the data in the customers table

-- Check the data in the 'transactions' table to ensure it still contains only relevant data after normalization
select * 
from transactions;  -- Verify the contents of the transactions table after removing redundant customer data

-- Remove customer-specific columns from the 'transactions' table
-- Retain only customerid for establishing a foreign key relationship with the 'customers' table
alter table transactions 
drop column firstname,         -- Remove the customer's first name, now stored in the customers table
drop column surname,           -- Remove the customer's surname, now stored in the customers table
drop column shipping_state,    -- Remove the shipping state, now stored in the customers table
drop column loyalty_discount;  -- Remove the loyalty discount, now stored in the customers table

-- Drop the temporary table 'tmp', as it is no longer needed after extracting customer data
drop table tmp;

-- 2NF is Confirmed - Successfully achieved Second Normal Form (2NF)