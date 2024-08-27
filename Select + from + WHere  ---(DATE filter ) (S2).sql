select * 
from console_dates
--where date_part ('month' ,first_retail_availability) - 11 =0 
--where date_part ('month' ,first_retail_availability) - 12 =0 
where date_part ('month' ,first_retail_availability) - 12 =0 or date_part('month',first_retail_availability)-11 =0 ;