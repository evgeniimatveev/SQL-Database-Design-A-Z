select * , age(discontinued,first_retail_availability) as Platform_cons
from public.console_dates
order by Platform_cons 