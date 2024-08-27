-- Step 1: Display all records in the movies table
-- This query retrieves and displays all existing data from the 'movies' table.
select * 
from movies;

-- Step 2: Insert a new movie record with a NULL value for the 'country'
-- Here, we insert a record for the movie "The Matrix" (1999) under the 'Sci-Fi' genre.
-- Notice that the 'country' field is left blank ('') to represent a NULL or missing value.
insert into movies values ('The Matrix', 1999, '', 'Sci-Fi'); -- NULL ('')

-- Step 3: Update the 'country' field for the movie "The Matrix"
-- This query updates the 'country' field from NULL (or an empty string) to 'Usa' for the movie "The Matrix" released in 1999.
update movies
set country = 'Usa'
where movie_name = 'The Matrix' and movie_year = 1999;

-- Step 4: Display all records to verify the update
-- This final query shows the updated 'movies' table to confirm that the 'country' field for "The Matrix" has been successfully updated.
select * 
from movies;



                      -- UPDATE Table_name
                      -- SET Column_name = 'Category'
                      -- WHere Column_name = 'Category' and  Column_name = 'Category'   ( primary key+foren key)


 -- 1. Selects all records from the `movies` table.
select * 
from movies;

-- 2. Inserts a new record into the `movies` table with the movie 'Se7en', released in 1996, from the USA, and with the genre 'Drama'.
insert into movies values ('Se7en',1996,'Usa','Drama');

-- 3. Updates the genre to 'Drama' for the movie with the title 'Schindler’s List' and the release year 1993.
update movies
set genre = 'Drama'
where movie_name = 'Schindler’s List' and movie_year = '1993';

-- 4. Updates the genre to 'Drama' for the movie with the title 'The Shawshank Redemption' and the release year 1992.
update movies
set genre = 'Drama'
where movie_name = 'The Shawshank Redemption' and movie_year = '1992';