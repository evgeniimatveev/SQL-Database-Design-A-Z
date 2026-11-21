/*
USE [Console Games]                          --From DataBase
GO

CREATE TABLE console_dates (
    platform_name varchar(120),
    first_retail_availability date,
    discontinued date,
    units_sold_mill decimal,
    platform_comment varchar(120)    
)

UPDATE [dbo].[RAW ConsoleDates]                 --UPdate From RAW 
SET [Discontinued] = NULL                       -- SEt Null 
WHERE [Discontinued] = ''

INSERT INTO console_dates
SELECT *
FROM [dbo].[RAW ConsoleDates]
                             -- Create a Secound Table (Console Dates) + Update Null From  RAW DATA BASE
*/            