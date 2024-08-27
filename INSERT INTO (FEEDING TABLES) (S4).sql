-- Step 1: Display all records in the movies table
-- This query fetches all existing data from the 'movies' table to review the initial state.

select * 
from movies;

-- Step 2: Insert the first movie record
-- Here, we insert a record for the movie "The Godfather Part II" released in 1974, categorized as 'Gangster'.

insert into movies values ('The Godfather Part II', 1974, 'Usa', 'Gangster'); -- add 1

-- Step 3: Insert the second movie record
-- This inserts a record for "Dune: Part Two," a Sci-Fi movie released in 2024.

insert into movies values ('Dune: Part Two', 2024, 'Usa', 'Sci-Fi'); -- add 2

-- Step 4: Insert the third movie record
-- In this step, we add a record for the 2008 movie "The Dark Knight" under the 'Action' genre.

insert into movies values ('The Dark Knight', 2008, 'Usa', 'Action'); -- add 3

-- Step 5: Display all records to verify the first three insertions
-- This final query shows the updated 'movies' table to confirm all three movies have been successfully added.

select * 
from movies;

-- Step 6: Insert the fourth movie record
-- Now, we insert a record for "The Shawshank Redemption" (1992), which is a 'Prison-drama' movie.

insert into movies values ('The Shawshank Redemption', 1992, 'Usa', 'Prison-drama'); -- add one more

-- Step 7: Insert the fifth movie record
-- Here, we add the movie "Schindler's List" (1993), also categorized as 'Prison-drama'.

insert into movies values ('Schindler’s List', 1993, 'Usa', 'Prison-Drama'); -- add ++

-- Step 8: Insert the sixth movie record
-- This step adds the movie "Fight Club" (1999), which falls under the 'Drama' genre.

insert into movies values ('Fight Club', 1999, 'Usa', 'Drama'); -- add +++

-- Step 9: Insert the seventh movie record
-- Finally, we insert "The Lord of the Rings: The Fellowship of the Ring" (2001) into the 'Fantasy' genre.

insert into movies values ('The Lord of the Rings: The Fellowship of the Ring', 2001, 'Usa', 'Fantasy');

-- Step 10: Insert multiple movie records at once (Optional)
-- This step demonstrates how to insert multiple rows with a single SQL statement for efficiency.

insert into movies values ('Schindler’s List', 1993, 'Usa', 'Prison-Drama') ,         -- add  multiple
('Fight Club', 1999, 'Usa','Prison-Drama') , ('Fight Club', 1999, 'Usa', 'Drama');

                

                 --  insert into  table_name   ( '', , , , ..) , ('' , , , ) ...