-- Selecting all records from the 'movies' table to view the current data
select *
from movies;

-- Adding a new column 'for_drop' of type VARCHAR with a maximum length of 50 characters
-- This column is created to practice dropping columns later
alter table movies
add column for_drop VARCHAR (50);

-- Adding another column 'for_drop_Practice' of type VARCHAR with a maximum length of 50 characters
-- This column is also created for practice purposes
alter table movies
add column for_drop_Practice VARCHAR (50);

-- Deleting a specific movie record from the 'movies' table
-- The movie "Dune: Part Two" from the year 2024 is being removed
delete from movies
where movie_name = 'Dune: Part Two' and movie_year = '2024';

-- Dropping the 'for_drop_Practice' column from the 'movies' table
-- This demonstrates how to remove a column from a table
alter table movies
drop column for_drop_Practice

-- Dropping the entire 'movies' database
-- WARNING: This will permanently delete the entire database and all its data.
-- Make sure this is your intention before executing this command.
DROP DATABASE movies222;





