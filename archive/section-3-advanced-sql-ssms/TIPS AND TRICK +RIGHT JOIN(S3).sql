--                                                            --DATA PREP
SELECT *
FROM DBO.Owners
SELECT *
FROM DBO.Pets                  
                                                          --  ALIASES FOR TABLES                                   
SELECT *
FROM [dbo].[Pets] AS p   -- Alias 'p' for the Pets table
LEFT JOIN [dbo].[Owners] AS o -- Alias 'o' for the Owners table
ON p.ownerID = o.ownerID; -- Joining based on ownerID
                               
							                                   -- ALIASES FOR TABLES


SELECT p.name, o.name  -- Selecting the 'name' columns from both the 'Pets' and 'Owners' tables
FROM [dbo].[Pets] as P  -- 'Pets' table is aliased as 'P'
LEFT JOIN [dbo].[Owners] as O  -- 'Owners' table is aliased as 'O' and a LEFT JOIN is used to include all rows from 'Pets'
ON p.ownerID = o.ownerID  -- Joining 'Pets' and 'Owners' based on matching 'ownerID'
AND LEFT(p.name, 1) = LEFT(o.name, 1)  -- Additional condition: matching the first character of the 'name' in both tables


--                 ALIASES FOR COLUMNS  ///Renaming the 'Owners' name column as 'OWNERS'

SELECT p.name as PETS, o.name as OWNERS  -- Selecting the 'name' columns from both the 'Pets' and 'Owners' tables, renaming the 'Pets' and 'Owners' name column as 'OWNERS'
FROM [dbo].[Pets] as P  -- The 'Pets' table is aliased as 'P'
LEFT JOIN [dbo].[Owners] as O  -- 'Owners' table is aliased as 'O'; LEFT JOIN is used to include all rows from 'Pets', even if no matching row is found in 'Owners'
ON p.ownerID = o.ownerID  -- Joining 'Pets' and 'Owners' based on matching 'ownerID' columns
AND LEFT(p.name, 1) = LEFT(o.name, 1)  -- Additional filter: comparing the first character of 'name' columns in both tables



--                                                             RIGHT JOIN

SELECT p.name as PETS, o.name as OWNERS  -- Selecting the 'name' columns from both the 'Pets' and 'Owners' tables, renaming the 'Pets' name column as 'PETS' and the 'Owners' name column as 'OWNERS'
FROM [dbo].[Owners] as O  -- 'Owners' table is the main table, aliased as 'O'
RIGHT JOIN [dbo].[Pets] as P  -- Performing a RIGHT JOIN: all rows from 'Pets' are included, even if there is no matching row in 'Owners'
ON p.ownerID = o.ownerID  -- Joining 'Pets' and 'Owners' based on matching 'ownerID' columns
--AND LEFT(p.name, 1) = LEFT(o.name, 1)  -- Optional: additional filter comparing the first character of 'name' columns in both tables

-- Note: RIGHT JOIN is functionally equivalent to LEFT JOIN; the only difference is that the tables are switched.

