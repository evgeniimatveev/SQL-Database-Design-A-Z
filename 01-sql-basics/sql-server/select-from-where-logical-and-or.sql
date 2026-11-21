select [Product Name] ,[Issue] ,[Company] ,[State Name]
from [dbo].[P9-ConsumerComplaints] 
 --where [State Name] ='TX' or [State Name] = 'Ca'
 where [State Name] = 'CA' and [Company] = 'Ocwen' and [Product Name] = 'Mortgage'    --filters
