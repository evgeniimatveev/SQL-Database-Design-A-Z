-- CROSS JOIN: Generating a Cartesian Product of 'Pets' and 'Owners' tables
-- Note: A CROSS JOIN returns all possible rows by combining every row from the 'Pets' table with every row from the 'Owners' table.
-- The result set will contain the total number of rows equal to the product of the number of rows in each table.
-- This means if 'Pets' has 100 rows and 'Owners' has 50 rows, the result will be 100 * 50 = 5000 rows.

select * 
from pets  -- Selecting all columns from the 'Pets' table
cross join owners;  -- CROSS JOIN with 'Owners' table to create a Cartesian Product