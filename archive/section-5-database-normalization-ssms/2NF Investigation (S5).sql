      -- 2NF Investigation - Checking for compliance with Second Normal Form (2NF)


-- Create a temporary table 'tmp' to separate customer-specific columns
select customerid,        -- Select customer ID for linking to the customers table
       firstname,         -- Select the first name of the customer
       surname,           -- Select the surname of the customer
       shipping_state,    -- Select the state where the item was shipped
       loyalty_discount   -- Select the loyalty discount applied to the purchase
into tmp
from transactions;

-- Create the 'customers' table by selecting distinct customer records from the temporary 'tmp' table
select distinct *
into customers
from tmp;

-- Verify the contents of the new 'customers' table to ensure data has been correctly transferred
select * 
from customers;  -- Check the data in the customers table

-- Check the data in the 'transactions' table to ensure it still contains only relevant data after normalization
select * 
from transactions;  -- Verify the contents of the transactions table after removing redundant customer data


