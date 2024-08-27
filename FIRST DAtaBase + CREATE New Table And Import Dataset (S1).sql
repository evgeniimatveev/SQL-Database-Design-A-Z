 /*                
                     --Click Databases(rigt mouse) and Create new DataBase

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
*/


/*-- for WINDOWS
COPY consumer_complaints FROM 'C:\Users\GAMING\OneDrive\Desktop\P9-Consumer_Complaints.csv' DELIMITER ',' CSV HEADER;
*/