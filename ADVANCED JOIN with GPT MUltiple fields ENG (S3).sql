/* 
Example 1: INNER JOIN with multiple tables
In this example, we join the Pets, ProceduresHistory, and ProceduresDetails tables using an INNER JOIN:
*/
-- INNER JOIN between three tables to get detailed information about pets and their procedures

select 
    a.Petid,  -- Pet ID
    a.Name as Pet_Name,  -- Pet name
    a.kind,  -- Animal type (e.g., dog, cat)
    a.gender,  -- Animal gender
    b.ProcedureDate,  -- Procedure date
    b.ProcedureType,  -- Procedure type
    b.ProcedureSubCode,  -- Procedure sub-code
    c.Description,  -- Procedure description
    c.Price  -- Procedure price
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  -- Joining Pets and ProceduresHistory tables
    on a.petid = b.petid  -- Matching records by petid
inner join dbo.ProceduresDetails as c  -- Joining with ProceduresDetails table
    on b.ProcedureType = c.ProcedureType  -- Matching records by ProcedureType
    and b.ProcedureSubCode = c.ProcedureSubCode;  -- Refining join by ProcedureSubCode

/*
Example 2: LEFT JOIN with additional conditions
This query joins all records from Pets with information from ProceduresHistory and adds data from ProceduresDetails where available:
*/

-- LEFT JOIN to retrieve all pets with their procedure history, even if details are missing

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    b.ProcedureDate,  
    b.ProcedureType,  
    b.ProcedureSubCode,  
    c.Description,  
    c.Price  
from dbo.Pets as a
left join dbo.ProceduresHistory as b  -- Joining Pets and ProceduresHistory
    on a.petid = b.petid  
left join dbo.ProceduresDetails as c  -- Joining procedure details with potential missing data
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode;

/*
Example 3: FULL OUTER JOIN to display all possible records
In this example, FULL OUTER JOIN is used to show all possible combinations of records from all three tables:
*/

-- FULL OUTER JOIN to see all possible combinations of pets, procedures, and details, including unmatched records

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    b.ProcedureDate,  
    b.ProcedureType,  
    b.ProcedureSubCode,  
    c.Description,  
    c.Price  
from dbo.Pets as a
full outer join dbo.ProceduresHistory as b  -- Full join to display all records, even without matches
    on a.petid = b.petid  
full outer join dbo.ProceduresDetails as c  -- Joining procedure details
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode;

/*
Example 4: CROSS JOIN to generate all possible combinations
This query creates a Cartesian product of all rows from the Pets and ProceduresDetails tables:
*/

-- CROSS JOIN to generate all possible combinations of pets and procedure details

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    c.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
cross join dbo.ProceduresDetails as c;  -- Cartesian product of all rows from the Pets and ProceduresDetails tables

/*
Example 5: Joining three tables with filtering
This example joins data with filtering by a specific procedure type:
*/

-- Joining three tables with a filter on ProcedureType

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    b.ProcedureDate,  
    b.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where b.ProcedureType = 'VACCINATIONS';  -- Filtering by procedure type 'VACCINATIONS'

/*
Example 6: Filtering by pet age and sorting by name
This query selects information about pets older than 5 years and sorts the results by pet name:
*/

-- Selecting pets older than 5 years and sorting by their name

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    a.age,  -- Selecting pet age
    a.OwnerID  
from dbo.Pets as a
where a.age > 5  -- Filtering pets older than 5 years
order by a.Name;  -- Sorting by pet name

/*                   
Example 7: Filtering by procedure type and sorting by procedure date
This query selects information about vaccinations and sorts the results by procedure date:
*/

-- Selecting vaccination procedures and sorting by procedure date

select 
    a.Petid,  
    a.Name as Pet_Name,  
    b.ProcedureDate,  
    b.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where b.ProcedureType = 'VACCINATIONS'  -- Filtering by procedure type (vaccinations)
order by b.ProcedureDate;  -- Sorting by procedure date

/*
Example 8: Filtering by procedure price and sorting by description
This query selects procedures with a price greater than 50 and sorts the results by procedure description:
*/

-- Selecting procedures with a price greater than 50 and sorting by description

select 
    a.Petid,  
    a.Name as Pet_Name,  
    b.ProcedureDate,  
    c.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where c.Price > 50  -- Filtering procedures with a price greater than 50
order by c.Description;  -- Sorting by procedure description

/*
Example 9: Filtering by pet gender and sorting by age and name
This query selects information about female pets and sorts the results by age and pet name:
*/

-- Selecting female pets and sorting by age and name

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    a.age,  
    a.OwnerID  
from dbo.Pets as a
where a.gender = 'female'  -- Filtering by pet gender (female)
order by a.age, a.Name;  -- Sorting by age and pet name

/*
Example 10: Filtering by owner's city and sorting by pet name
This query selects information about pets whose owners live in "Traverse City" and sorts the results by pet name:
*/

-- Selecting pets whose owners live in 'Traverse City' and sorting by pet name

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,
    a.age,  
    a.OwnerID,  
    o.City  
from dbo.Pets as a
inner join dbo.Owners as o  -- Joining with the Owners table
    on a.OwnerID = o.OwnerID  
where o.City = 'Traverse City'  -- Filtering by owner's city (Traverse City)
order by a.Name;  -- Sorting by pet name

/*
Example 11: Filtering by a combination of conditions and sorting by multiple fields
This query selects information about procedures that cost more than 100 and were performed in 2016, sorting the results by date and price:
*/

-- Selecting expensive procedures performed in 2016 and sorting by date and price

select 
    a.Petid,  
    a.Name as Pet_Name,  
    b.ProcedureDate,  
    c.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where c.Price > 100  -- Filtering by procedure price (more than 100)
and year(b.ProcedureDate) = 2016  -- Filtering by procedure year (2016)
order by b.ProcedureDate, c.Price;  -- Sorting by procedure date and price