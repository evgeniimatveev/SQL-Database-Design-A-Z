-- Selecting all records from the 'movies' table
-- This query retrieves all columns for all movies currently stored in the table
select *
from movies;

-- Inserting a new movie record into the 'movies' table
-- This movie is titled 'Dune: Part Two', released in 2024, produced in the USA, and belongs to the 'Sci-Fi' genre
insert into movies values ('Dune: Part Two', 2024, 'Usa', 'Sci-Fi');

-- Inserting another new movie record into the 'movies' table
-- The movie 'Furiosa: A Mad Max Saga' is also a 2024 release from the USA, categorized under the 'Sci-Fi' genre
insert into movies values ('Furiosa: A Mad Max Saga', 2024, 'Usa', 'Sci-Fi');

-- Adding the movie 'Inside Out 2' to the 'movies' table
-- This movie, released in 2024, is an animated film produced in the USA
insert into movies values ('Inside Out 2', 2024, 'Usa', 'Animation');

-- Inserting the movie 'Ghostlight' into the 'movies' table
-- A drama film from the USA, 'Ghostlight' is set to release in 2024
insert into movies values ('Ghostlight', 2024, 'Usa', 'Drama');

-- Adding the movie 'Challengers' to the 'movies' table
-- 'Challengers' is a romance movie from the USA, scheduled for release in 2024
insert into movies values ('Challengers', 2024, 'Usa', 'Romance');
