-- Selecting all columns from the 'Pets' table
-- INNER JOIN: Selecting only the records that have matching values in both 'Pets' and 'ProceduresHistory' tables
select * 
from Pets as a
inner join ProceduresHistory as b
on a.petid = b.petid;  -- Joining the tables on the 'petid' column, where 'petid' is the same in both tables

-- FULL OUTER JOIN: Selects all records when there is a match in either 'Pets' or 'ProceduresHistory'
select * 
from Pets as a
full outer join ProceduresHistory as b
on a.petid = b.petid;  -- Joining the tables on 'petid', returning all records from both tables where there is a match or no match