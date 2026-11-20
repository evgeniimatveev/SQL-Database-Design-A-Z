-- Creating a new database called 'my_database'
-- This command will create a database with the name 'my_database' in PostgreSQL.
-- You can specify the owner, encoding, template, and other parameters if needed.
-- The default owner is the current user executing the command, unless specified otherwise.

Create Database my_database;

-- Creating a table named 'movies'
-- This command creates a table named 'movies' within the 'my_database'.
Create Table movies (
    movie_name varchar(200), -- Column for the name of the movie, allows up to 200 characters
    movie_year integer,      -- Column for the year the movie was released, stored as an integer
    country varchar(50),     -- Column for the country of origin, allows up to 50 characters
    genre varchar (12)       -- Column for the genre of the movie, allows up to 12 characters
);