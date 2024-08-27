/*select cast(game_year as varchar(5))
from console_games 
order by game_rank ;
*/
/*
select game_year::varchar(5)
from console_games 
order by game_rank ;
*/
select to_date(cast(game_year as varchar(5)),'yyyy')
from console_games 
order by game_rank