-- 3NF Investigation

select *
from transactions;  -- Checking the data in the transactions table to ensure it complies with Third Normal Form (3NF)

-- 3NF Confirmed

-- It's important to note the dependency in this table:
-- transactionid -> item
-- Each transaction ID (transactionid) uniquely determines the purchased item.

-- Additionally, each item is associated with:
-- description (item description) and retail_price (item's retail price).
-- This means that the item determines both its description and its retail price:
-- item -> description
-- item -> retail_price