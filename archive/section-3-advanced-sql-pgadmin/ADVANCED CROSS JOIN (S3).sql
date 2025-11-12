-- ----- CROSS JOIN 


select *
from pets
cross join owners;  -- Creating a Cartesian product between the 'pets' and 'owners' tables

-- ----- CROSS JOIN Example with 'pets' and 'owners'
select p.petid,p.name as pet_name, p.kind, p.gender, p.age, o.ownerid, o.name as owner_name, o.surname
from pets  p
cross join owners o;  -- Generating all possible combinations of pets and owners

-- ----- CROSS JOIN with Filtering
select p.petid, p.name as pet_name, p.kind, p.gender, p.age, o.ownerid, o.name as owner_name, o.surname
from pets p
cross join owners o
where p.age > 5 and o.city = 'Lansing';  -- Filtering to show only pets older than 5 years and owners from Lansing





