/*
select *
from [dbo].console_games ;
*/
/*
alter table [dbo].[console_games]
add  global_sales  float 
*/
/*
select *
from [dbo].[console_games] ;     -- check from new column global_sales (NULL)
*/
/*
update console_games 
set [global_sales] =[na_sales]+[eu_sales]+[jp_sales]+[other_sales]
*/
/*
 select *
 from [dbo].[console_games] ;
 */
/*
alter table [dbo].[console_games]    --add new table + Formula( [na_sales] /[global_sales] *100 )
add Na_sales_Percent float 
*/
/*
update console_games                          --Set Up Formula( [na_sales] /[global_sales] *100 + != 0  )
set [Na_sales_Percent] = [na_sales] /[global_sales] *100
where [global_sales]  !=0
 --where [global_sales] != 0 ;
 */




