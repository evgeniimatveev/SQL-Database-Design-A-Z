-- Loader for the manual CI run: the normalization scripts expect a table `transactions`
-- that the author created with pgAdmin's import wizard (column names follow what the scripts query).
CREATE TABLE transactions (
    transactionid    integer,
    timestampsec     timestamp,
    customerid       bigint,
    firstname        varchar(100),
    surname          varchar(100),
    shipping_state   varchar(100),
    item             bigint,
    description      varchar(300),
    retail_price     numeric(10, 2),
    loyalty_discount numeric(5, 2)
);
COPY transactions FROM '/repo/data/oltp.csv' DELIMITER ',' CSV HEADER;
