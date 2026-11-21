-- Loader for the manual CI run. The CREATE TABLE statements are copied from the course script,
-- where they sit inside a comment (the data was imported by hand in pgAdmin).
CREATE TABLE pets (
    petid varchar,
    name varchar,
    kind varchar,
    gender varchar,
    age int,
    ownerid varchar
);
COPY pets FROM '/repo/data/pets.csv' DELIMITER ',' CSV HEADER;

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
COPY owners FROM '/repo/data/owners.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE proceduredetails (
    proceduretype varchar,
    proceduresubcode varchar,
    description varchar,
    price float
);
COPY proceduredetails FROM '/repo/data/procedures-details.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE procedurehistory (
    petid varchar,
    proceduredate date,
    proceduretype varchar,
    proceduresubcode varchar
);
COPY procedurehistory FROM '/repo/data/procedures-history.csv' DELIMITER ',' CSV HEADER;

