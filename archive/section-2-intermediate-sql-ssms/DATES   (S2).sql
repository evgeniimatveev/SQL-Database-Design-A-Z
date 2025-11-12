/*
select platform_name
from console_dates 
where [first_retail_availability] like '_____11___'     -- set up DATE by Month   _ _ _ _(Year)- _ _(Month)-_ _(Day) 
*/

select platform_name ,first_retail_availability 
from console_dates 
where [first_retail_availability] like '_____11___'

/*
select platform_name ,first_retail_availability 
from console_dates 
where datepart(Month,first_retail_availability) -11 =0          --same function as Like '_ _ _ _ _ _ _ _ _ _ '
*/