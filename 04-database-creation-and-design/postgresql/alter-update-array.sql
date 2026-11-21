-- Adding a new column 'sub_genre' of type VARCHAR with a maximum length of 50 characters
alter table movies
add column Sub_genre VARCHAR (50);

-- Updating the movie "The Godfather Part II" (1974) by setting the 'sub_genre' column
-- to an array containing the values 'Gangster' and 'Tragedy'.
-- Note: This assumes that your database supports arrays in VARCHAR columns.
update movies
set sub_genre = array['Gangster','Tragedy']
where movie_name = 'The Godfather Part II' and movie_year = '1974';

-- Updating the movie "The Godfather Part II" (1974) by setting the 'sub_genre' to 'Gangster'
update movies
set sub_genre = 'Gangster'
where movie_name = 'The Godfather Part II' and movie_year = '1974';

-- Updating the movie "The Godfather Part II" (1974) by changing its 'genre' to 'Crime'
-- and setting its 'sub_genre' to 'Tragedy'

update movies
set genre = 'Crime', sub_genre = 'Tragedy'
where movie_name = 'The Godfather Part II' and movie_year = '1974';


select *
from movies 