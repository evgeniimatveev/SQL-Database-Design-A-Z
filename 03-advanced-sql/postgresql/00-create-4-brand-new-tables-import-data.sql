/*

CREATE TABLE pets (
    petid varchar,
    name varchar,
    kind varchar,
    gender varchar,
    age int,
    ownerid varchar
);

-- WINDOWS
COPY pets FROM '/path/to/SQL-Database-Design-A-Z/data/pets.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE owners (
    ownerid varchar,
    name varchar,
    surname varchar,
    streetaddress varchar,
    city varchar,
    state varchar(2),
    statefull varchar,
    zipcode varchar
);

-- WINDOWS
COPY owners FROM '/path/to/SQL-Database-Design-A-Z/data/owners.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE proceduredetails (
    proceduretype varchar,
    proceduresubcode varchar,
    description varchar,
    price float
);

-- WINDOWS
COPY proceduredetails FROM '/path/to/SQL-Database-Design-A-Z/data/procedures-details.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE procedurehistory (
    petid varchar,
    proceduredate date,
    proceduretype varchar,
    proceduresubcode varchar
);

-- WINDOWS
COPY procedurehistory FROM '/path/to/SQL-Database-Design-A-Z/data/procedures-history.csv' DELIMITER ',' CSV HEADER;

*/
/*
select *
from pets ;
                                     -- check all data * 
select *
from owners

select *
from proceduredetails ; 

select *
from procedurehistory
*/


