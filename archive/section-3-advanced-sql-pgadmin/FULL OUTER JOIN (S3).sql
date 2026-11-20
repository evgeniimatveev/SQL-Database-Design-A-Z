/*
-- Performing a FULL OUTER JOIN between the "pets" and "procedurehistory" tables.
-- This type of join returns all rows from both tables.
-- If there is no match for a row in one of the tables, the result will include NULL values for the missing data from the other table.


select *    -- Selecting all columns from the resulting dataset
from pets as a    -- Assigning alias "a" to the "pets" table
full outer join procedurehistory as b    -- Assigning alias "b" to the "procedurehistory" table and performing a FULL OUTER JOIN
on a.petid = b.petid    -- Joining the tables based on the "petid" column, which should be common in both tables
*/


select *    -- Selecting all columns from the resulting dataset
from pets as a    -- Assigning alias "a" to the "pets" table
full outer join procedurehistory as b    -- Assigning alias "b" to the "procedurehistory" table and performing a FULL OUTER JOIN
on a.petid = b.petid    -- Joining th