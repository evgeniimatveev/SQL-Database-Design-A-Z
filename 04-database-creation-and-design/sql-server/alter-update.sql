-- Selecting all records from the 'movies' table
-- This query retrieves all columns for all movies currently stored in the table
select *
from movies;

-- Inserting a new movie record into the 'movies' table
-- This movie is titled 'Civil War', released in 2024, produced in the USA, and belongs to the 'Action' and 'Adventure' genres
insert into movies values ('Civil War', 2024, 'Usa', 'Action , Adventure');

-- Inserting another new movie record into the 'movies' table
-- The movie 'Love Lies Bleeding' is also a 2024 release from the USA, categorized under the 'Action' and 'Dark Romance' genres
insert into movies values ('Love Lies Bleeding', 2024, 'Usa', 'Action , Dark Romance');

-- Adding a new column 'sub_genre' to the 'movies' table
-- The 'sub_genre' column will store sub-genre information for each movie
ALTER TABLE movies
add sub_genre varchar(50);

-- Updating the 'sub_genre' for the movie 'Civil War'
-- The sub-genre is set to 'Adventure' for this movie
update movies
set sub_genre = 'Adventure'
where movie_name = 'Civil War' and movie_year = '2024';

-- Updating the 'genre' for the movie 'Civil War'
-- The genre is set to 'Action' to reflect the primary genre
update movies
set genre = 'Action'
where movie_name = 'Civil War' and movie_year = '2024';

-- Selecting all records again to verify the updates
select *
from movies;