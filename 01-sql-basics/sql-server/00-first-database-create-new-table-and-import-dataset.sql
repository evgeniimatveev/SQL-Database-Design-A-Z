 --        First Method old one !!
 -- Right click on Databases and Create New DataBase 'Consumer complaints'
 -- Then Consumer Complaints >> Task >> Import Data 
 -- then Flat file Source>> output column width set (all) for 5000>>> text qualifier  '' 
 
 
 --            new one  
  /*
USE [Consumer Complaints]

GO

CREATE TABLE Consumer_Complaints (

date_received varchar(12),

product_name varchar(500),

sub_product varchar(500),

issue varchar(5000),

sub_issue varchar(5000),

consumer_complaint_narrative varchar(5000),

company_public_response varchar(5000),

company varchar(500),

state_name varchar(2),

zip_code varchar(6),

tags varchar(400),

consumer_consent_provided varchar(30),

submitted_via varchar(100),

date_sent varchar(12),

company_response_to_consumer varchar(5000),

timely_response varchar(30),

consumer_disputed varchar(30),

complaint_id varchar(10)

)

INSERT INTO [dbo].[Consumer_Complaints]

SELECT *

FROM [dbo].[RAW_Consumer_Complaints] -- it was database from 1st Method
*/
 
