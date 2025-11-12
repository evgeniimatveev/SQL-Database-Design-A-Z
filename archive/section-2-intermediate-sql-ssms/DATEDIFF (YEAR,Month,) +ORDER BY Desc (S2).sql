/*
select * ,DATEDIFF(Year,first_retail_availability,discontinued) as year_existed
from console_dates 
order by year_existed desc
*/

select * ,DATEDIFF(Month,first_retail_availability,discontinued) as month_existed
from console_dates 
order by month_existed desc


/* DATEDIFF(Year, first_retail_availability, discontinued) — 
This function calculates the difference in years between two dates: 
 -first_retail_availability (the date the console first became available for sale) and 
 -discontinued (the date sales were discontinued).

The result of this calculation is presented as a new column year_existed.
*/