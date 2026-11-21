select product_name ,zip_code 
from consumer_complaints 
 --where product_name like '%credit%'               --no results
 --where lower(product_name) like '%credit%'        -- like + lower() +Wildcard % %
 --where upper(product_name) like '%CREDIT%'        --like +upper() +wildcard % % 
 --where zip_code like '7____'                      --like + wildcard _
 --where zip_code like '__9__'                      --like + wildcard _
where zip_code like '7%' and product_name like 'Mortgage'                            --like + wildcards   _ + %