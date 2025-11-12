-- 3NF Investigation
-- In this step, we are examining the 'transactions' table to ensure that it complies with the Third Normal Form (3NF).
-- Third Normal Form is achieved when the table is already in Second Normal Form (2NF), and all non-prime attributes are non-transitively dependent on every candidate key.
-- Essentially, every non-key attribute should depend directly on the primary key and nothing else.

-- 3NF Investigation for 'customers' table
-- In this step, we are examining the 'customers' table to ensure that it complies with the Third Normal Form (3NF).
-- Third Normal Form (3NF) is achieved when the table is already in Second Normal Form (2NF),
-- and every non-prime attribute is non-transitively dependent on the primary key.

-- Selecting all data from the 'customers' table for analysis.
select * 
from customers;

-- 3NF Analysis for 'customers' table
-- Let's consider the structure and dependencies in the 'customers' table:
-- The primary key is likely 'customerid', which uniquely identifies each customer.

-- Dependencies:
-- customerid -> firstname, surname, shipping_state, loyalty_discount
-- Each attribute (firstname, surname, etc.) is directly dependent on the 'customerid' key.

-- This structure satisfies the 3NF requirement because:
-- 1. All non-key attributes (like firstname, surname) are directly dependent on the primary key 'customerid'.
-- 2. There are no transitive dependencies, meaning no attribute is dependent on another non-key attribute.

-- After reviewing, we confirm that the 'customers' table adheres to 3NF.
-- The data is well-normalized, ensuring no redundancy and maintaining data integrity.


-- 3NF Investigation
-- In this step, we are examining the 'transactions' table to ensure that it complies with the Third Normal Form (3NF).
-- Third Normal Form is achieved when the table is already in Second Normal Form (2NF), and all non-prime attributes are non-transitively dependent on every candidate key.
-- Essentially, every non-key attribute should depend directly on the primary key and nothing else.


select * 
from transactions;  -- Checking the data in the transactions table to ensure it complies with Third Normal Form (3NF)

-- 3NF Confirmed
-- It's important to note the dependencies in this table:
-- transactionid -> item
-- Each transaction ID (transactionid) uniquely determines the purchased item.

-- Additionally, each item is associated with:
-- description (item description) and retail_price (item's retail price).
-- This means that the item determines both its description and its retail price:
-- item -> description
-- item -> retail_price

-- To confirm 3NF, ensure there are no transitive dependencies:
-- 1. No non-prime attribute (like description or retail_price) should depend on another non-prime attribute.
-- 2. All attributes must directly depend on the primary key, which in this case could be 'transactionid' or a combination of keys if composite.

-- After reviewing the table structure and dependencies, we confirm that the 'transactions' table adheres to 3NF.