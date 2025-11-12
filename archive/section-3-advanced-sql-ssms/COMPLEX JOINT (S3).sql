-- Data preparation: Selecting all records from the 'Pets' table
select * 
from [dbo].[Pets];

-- Selecting all records from the 'ProceduresHistory' table
select * 
from [dbo].[ProceduresHistory];

-- Selecting all records from the 'RAW_ProceduresDetails' table
select * 
from [dbo].[RAW_ProceduresDetails];

-- Complex JOIN: Combining data from three tables
select * 
from dbo.Pets as a  -- Selecting from the 'Pets' table, aliasing it as 'a'
INNER JOIN dbo.ProceduresHistory AS b  -- Inner joining with 'ProceduresHistory' table, aliasing it as 'b'
ON a.petid = b.petid  -- Joining on 'petid', which exists in both 'Pets' and 'ProceduresHistory'
LEFT JOIN [dbo].[ProceduresDetails] AS c  -- Left joining with 'ProceduresDetails' table, aliasing it as 'c'
ON b.ProcedureType = c.ProcedureType-- Joining on 'ProcedureType' to combine 'ProceduresHistory' and 'ProceduresDetails'
and b.ProcedureSubCode = c.ProcedureSubCode;  -- Additional join condition on 'ProcedureSubCode' to ensure the correct procedure details are matched
