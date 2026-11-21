                             --DATA PREPERATION 
select * 
from dbo.Pets as a  -- Selecting from the 'Pets' table, aliasing it as 'a'
INNER JOIN dbo.ProceduresHistory AS b  -- Inner joining with 'ProceduresHistory' table, aliasing it as 'b'
ON a.petid = b.petid  -- Joining on 'petid', which exists in both 'Pets' and 'ProceduresHistory'
LEFT JOIN [dbo].[ProceduresDetails] AS c  -- Left joining with 'ProceduresDetails' table, aliasing it as 'c'
ON b.ProcedureType = c.ProcedureType-- Joining on 'ProcedureType' to combine 'ProceduresHistory' and 'ProceduresDetails'
and b.ProcedureSubCode = c.ProcedureSubCode; 


-- Cleaning UP Join: Selecting specific columns and giving them meaningful aliases
select 
a.Petid,  -- Selecting 'Petid' from the 'Pets' table
a.[Name] as Pet_Name,  -- Selecting 'Name' from 'Pets' table and aliasing it as 'Pet_Name'
a.kind,  -- Selecting 'kind' from the 'Pets' table
a.gender,  -- Selecting 'gender' from the 'Pets' table
a.age,  -- Selecting 'age' from the 'Pets' table
a.OwnerID,  -- Selecting 'OwnerID' from the 'Pets' table
b.ProcedureDate,  --Selecting 'ProcedureDate' from 'ProceduresHistory'
b.ProcedureType as Procedure_Type,  -- Selecting 'ProcedureType' from 'ProceduresHistory' and aliasing it as 'Procedure_Type'
b.ProcedureSubCode,  -- Selecting 'ProcedureSubCode' from 'ProceduresHistory'
c.[Description],  -- Selecting 'Description' from 'ProceduresDetails'
c.Price  -- Selecting 'Price' from 'ProceduresDetails'
from dbo.Pets as a  -- Selecting from the 'Pets' table, aliasing it as 'a'
INNER JOIN dbo.ProceduresHistory AS b  -- Inner joining with 'ProceduresHistory' table, aliasing it as 'b'
ON a.petid = b.petid  -- Joining on 'petid', which exists in both 'Pets' and 'ProceduresHistory'

LEFT JOIN [dbo].[ProceduresDetails] AS c  -- Left joining with 'ProceduresDetails' table, aliasing it as 'c'
ON b.ProcedureType = c.ProcedureType  -- Joining on 'ProcedureType' to combine 'ProceduresHistory' and 'ProceduresDetails'
and b.ProcedureSubCode = c.ProcedureSubCode;  -- Additional join condition on 'ProcedureSubCode' to ensure the correct procedure details are matched

                                           --PRACTICE CLEANING 
select 
--a.Petid,  -- Selecting 'Petid' from the 'Pets' table
--a.[Name] as Pet_Name,  -- Selecting 'Name' from 'Pets' table and aliasing it as 'Pet_Name'
a.kind,  -- Selecting 'kind' from the 'Pets' table
a.gender,  -- Selecting 'gender' from the 'Pets' table
a.age,  -- Selecting 'age' from the 'Pets' table
--a.OwnerID,  -- Selecting 'OwnerID' from the 'Pets' table
--b.ProcedureDate,  --Selecting 'ProcedureDate' from 'ProceduresHistory'
--b.ProcedureType as Procedure_Type,  -- Selecting 'ProcedureType' from 'ProceduresHistory' and aliasing it as 'Procedure_Type'
--b.ProcedureSubCode,  -- Selecting 'ProcedureSubCode' from 'ProceduresHistory'
--c.[Description],  -- Selecting 'Description' from 'ProceduresDetails'
c.Price  -- Selecting 'Price' from 'ProceduresDetails'
from dbo.Pets as a  -- Selecting from the 'Pets' table, aliasing it as 'a'
INNER JOIN dbo.ProceduresHistory AS b  -- Inner joining with 'ProceduresHistory' table, aliasing it as 'b'
ON a.petid = b.petid  -- Joining on 'petid', which exists in both 'Pets' and 'ProceduresHistory'

LEFT JOIN [dbo].[ProceduresDetails] AS c  -- Left joining with 'ProceduresDetails' table, aliasing it as 'c'
ON b.ProcedureType = c.ProcedureType  -- Joining on 'ProcedureType' to combine 'ProceduresHistory' and 'ProceduresDetails'
and b.ProcedureSubCode = c.ProcedureSubCode; 