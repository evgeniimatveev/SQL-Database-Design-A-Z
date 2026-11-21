-- ----- JOINING MULTIPLE FIELDS
select * 
from procedurehistory as a  -- Selecting data from the procedure history table and aliasing it as "a"
left join proceduredetails as b  -- Joining the procedure details table and aliasing it as "b"
on a.proceduretype = b.proceduretype  -- Joining the tables based on the procedure type field
and a.proceduresubcode = b.proceduresubcode;  -- Additionally joining based on the procedure subcode

                                 