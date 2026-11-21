-- Loaders for the manual CI run. The CREATE TABLE statements are copied from the course scripts,
-- where they sit inside comments (the data was imported by hand in pgAdmin).
CREATE TABLE console_games (
    game_rank integer,
    game_name varchar(1200),
    platform varchar(1200),
    game_year integer,
    genre varchar(20),
    publisher varchar(1200),
    na_sales float8,
    eu_sales float8,
    jp_sales float8,
    other_sales float8    
);
COPY console_games FROM '/repo/data/console-games.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE console_dates (
    platform_name char(120),
    first_retail_availability date,
    discontinued date,
    units_sold_mill float8,
    platform_comment varchar(120)    
);
COPY console_dates FROM '/repo/data/console-dates.csv' DELIMITER ',' CSV HEADER;
