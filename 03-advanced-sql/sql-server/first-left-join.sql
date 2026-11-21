                                   --DATA Preperation //CHEck for columns 
use [PETS]
go

SELECT *
  FROM [dbo].[Owners]
-- Selecting all records from the Pets table
SELECT *
FROM [dbo].[Pets];

-- Performing a LEFT JOIN to combine the Pets table with the Owners table based on the matching ownerID field
SELECT *
FROM [dbo].[Pets]       -- Table containing pet information
LEFT JOIN [dbo].[Owners] -- Table containing owner information
ON [dbo].[Pets].ownerID = [dbo].[Owners].ownerID;

-- Performing a LEFT JOIN using table aliases for simplicity
SELECT *
FROM [dbo].[Pets] AS p   -- Alias 'p' for the Pets table
LEFT JOIN [dbo].[Owners] AS o -- Alias 'o' for the Owners table
ON p.ownerID = o.ownerID; -- Joining based on ownerID





 

