-- Selecting all records from the 'movies' table
-- This query retrieves all columns for all movies currently stored in the table

select *
from movies;

-- Inserting a new movie record into the 'movies' table
-- This movie is titled 'Young Woman and the Sea', released in 2024, with the genre 'Comedy'
-- The 'Country' field is left empty for now and will be updated later

insert into movies values ('Young Woman and the Sea', 2024, '', 'Comedy');

-- Inserting another new movie record into the 'movies' table
-- The movie 'Deadpool & Wolverine' is also a 2024 release, categorized under the 'Comedy' genre
-- The 'Country' field is left empty for now and will be updated later

insert into movies values ('Deadpool & Wolverine', 2024, '', 'Comedy');

-- Updating the 'Country' field for 'Deadpool & Wolverine'
-- Setting the 'Country' field to 'Usa' for this specific movie released in 2024


update movies
set counry = 'Usa'                                       --Country

where movie_name = 'Deadpool & Wolverine' and movie_year = '2024';


-- Updating the 'Country' field for 'Young Woman and the Sea'
-- Setting the 'Country' field to 'Usa' for this specific movie released in 2024

update movies
set counry = 'Usa'                                     --Country

where movie_name = 'Young Woman and the Sea' and movie_year = '2024';

