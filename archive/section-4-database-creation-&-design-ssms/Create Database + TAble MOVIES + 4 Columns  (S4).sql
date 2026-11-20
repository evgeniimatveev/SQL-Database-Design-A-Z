- Creating a new table named 'Movies'
-- This table will store information about movies, including their names, release years, countries, and genres
create table Movies(
    -- Defining the 'movie_name' column to store the name of the movie
    -- Using VARCHAR(200) to allow up to 200 characters
    movie_name Varchar(200),
    
    -- Defining the 'movie_year' column to store the year of the movie's release
    -- Using INT to store integer values representing the year
    movie_year INT,

    -- Defining the 'Country' column to store the country where the movie was produced
    -- Using VARCHAR(100) to allow up to 100 characters
    Country Varchar(100),

    -- Defining the 'genre' column to store the genre of the movie
    -- Using VARCHAR(1000) to allow up to 1000 characters, providing ample space for multiple genres or detailed descriptions
    genre Varchar(1000),

    -- Setting the primary key for the table
    -- The primary key is a combination of 'movie_name' and 'movie_year', ensuring that each movie's name and year combination is unique
    primary key (movie_name, movie_year)
);