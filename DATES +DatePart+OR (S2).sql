/*
select platform_name , [first_retail_availability]
from console_dates                                          --PRACTICE with DAtes 
--where [first_retail_availability] like '_____11___'
--where [first_retail_availability] like '_____12___'
where [first_retail_availability] like '_____07___'
*/
/*
select platform_name ,first_retail_availability 
from console_dates 
--where datepart(Month,first_retail_availability) -11 =0 
--where datepart(Month,first_retail_availability) -11 =0 
where datepart(Month,first_retail_availability) -07 =0 
*/
select platform_name ,first_retail_availability 
from console_dates 
where datepart(Month,first_retail_availability) -11 =0 or datepart(Month,first_retail_availability) -12 =0
 /*


Description of the ____-__-__ Pattern:

The ____-__-__ Pattern: In SQL, underscores (_) can be used as a wildcard to match any single character in a string.
In your case, the pattern ____-__-__ corresponds to any year, month, and day. 
For example, ____-12-__ can be used to filter all records with dates in December of any year.

Usage Example: If you want to find all records with dates in December, you could use WHERE first_retail_availability LIKE '____-12-__'.
This will select all records where the month is December.

The DATEPART Function: This function is used to extract a specific part of a date, such as the year, month, or day. 
In your code, DATEPART(Month, first_retail_availability) is used to get the month from the date.

Data Types and Type Casting: SQL automatically interprets first_retail_availability as a DATE type, allowing functions like DATEPART to work correctly.
It's important to ensure that your column is indeed of type DATE or DATETIME for such functions to work properly.