-- ----- COMPLEX JOIN
select * 
from pets as a  -- Selecting data from the 'pets' table and aliasing it as 'a'
inner join procedurehistory as ph  -- Inner join with 'procedurehistory' to get procedure records
on a.petid = ph.petid  -- Joining tables on the pet ID
left join proceduredetails as pd  -- Left join with 'proceduredetails' to get detailed information about procedures
on ph.proceduretype = pd.proceduretype  -- Joining on procedure type
and ph.proceduresubcode = pd.proceduresubcode;  -- And also joining on procedure subtype