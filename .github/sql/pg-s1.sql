-- Loaders for the manual CI run. The CREATE TABLE statements are copied from the course scripts,
-- where they sit inside comments (the data was imported by hand in pgAdmin).
CREATE TABLE consumer_complaints (         --Creating Table Call Consumer_complaints
    date_received varchar,
    product_name varchar,
    sub_product varchar,
    issue varchar,
    sub_issue varchar,
    consumer_complaint_narrative varchar,
    company_public_response varchar,
    company varchar,
    state_name varchar,
    zip_code varchar,
    tags varchar,
    consumer_consent_provided varchar,
    submitted_via varchar,
    date_sent varchar,
    company_response_to_consumer varchar,
    timely_response varchar,
    consumer_disputed varchar,
    complaint_id integer
);
COPY consumer_complaints FROM '/repo/data/consumer-complaints.csv' DELIMITER ',' CSV HEADER;
