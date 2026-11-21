-- Selecting all columns from the 'Pets' table
select * 
from pets

-- INNER JOIN: Selecting only the records that have matching values in both 'Pets' and 'ProceduresHistory' tables
select *
from Pets as a
inner join ProceduresHistory as b
on a.petid = b.petid;  -- Joining the tables on the 'petid' column, where 'petid' is the same in both tables

-- Using LEFT JOIN: Selects all records from 'Pets' and the matched records from 'ProceduresHistory'
select * 
from dbo.Pets as a
left join dbo.ProceduresHistory as b
on a.petid = b.petid;  -- Joining the tables on 'petid', ensuring that all 'Pets' records are returned, even if there is no match in 'ProceduresHistory'

-- Using RIGHT JOIN: Selects all records from 'ProceduresHistory' and the matched records from 'Pets'
select * 
from dbo.Pets as a
right join dbo.ProceduresHistory as b
on a.petid = b.petid;  -- Joining the tables on 'petid', ensuring that all 'ProceduresHistory' records are returned, even if there is no match in 'Pets'

