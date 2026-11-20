select [Zip Code]
from [dbo].[P9-ConsumerComplaints]
--where [Zip Code] like '9____'       --additing filter  -wildcard _ _ 
 where [Zip Code] like '972__'        --wildcard _
--where [Zip Code] like '97%'          wildcards % + _