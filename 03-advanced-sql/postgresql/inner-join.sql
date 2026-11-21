 -- ----- INNER JOINT

-- INNER JOIN to combine pets and procedurehistory tables based on petid
-- Allows retrieval of all matching records from both tables
select *
from pets as a  -- alias for pets table
inner join procedurehistory as b  -- alias for procedurehistory table
on a.petid = b.petid  -- joining condition based on petid

/*
select *                   --check for petid
from procedurehistory 
*/
