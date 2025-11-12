/*                           --Big Lesson about Null
select *
from console_games 
--where game_name is null 
--where game_year is null
where platform is null 
*/

              --WORKING with NULL
/*
select *
from console_games
where jp_sales is null
*/

/*
update console_games
set jp_sales = round((na_sales+eu_sales+other_sales)/3 )
where game_name = 'Brain Age: Train Your Brain in Minutes a Day'
*/
select *
from console_games 
where game_name = 'Brain Age: Train Your Brain in Minutes a Day'

