-- Selecting all records from the 'ProceduresDetails' table
select * 
from [dbo].[ProceduresDetails];

-- Selecting all records from the 'ProceduresHistory' table
select * 
from [dbo].[ProceduresHistory];

-- Practicing LEFT JOIN
-- LEFT JOIN: Selecting all records from 'ProceduresDetails' and the matched records from 'ProceduresHistory'
select * 
from [dbo].[ProceduresDetails] as a
left join [dbo].[ProceduresHistory] as b
on a.ProcedureType = b.ProcedureType;  -- Joining the tables based on 'ProcedureType' column, ensuring all records from 'ProceduresDetails' are returned

-- Joining multiple fields
-- INNER JOIN: Selecting only the records where there are matching values in both 'ProceduresHistory' and 'ProceduresDetails' tables
-- Using multiple conditions to join based on 'ProcedureType' and 'ProcedureSubCode'
select * 
from [dbo].[ProceduresHistory] as a
inner join [dbo].[ProceduresDetails] as b
-- on a.ProcedureType = b.ProcedureType  -- This line is commented out because the next line already includes this condition
on a.ProcedureType = b.ProcedureType  -- Joining the tables based on 'ProcedureType' column
and a.ProcedureSubCode = b.ProcedureSubCode;  -- Additional condition: joining based on 'ProcedureSubCode' to refine the match
		 