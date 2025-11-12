 --select game_name ,left(game_name, 8)
 select game_name , right(game_name , 10)
 --select game_name ,reverse(game_name)
from console_games 
order by game_rank ; 
/*
LEFT(game_name, 8) — selects the first 8 characters from the game_name string.
RIGHT(game_name, 10) — selects the last 10 characters from the game_name string.
REVERSE(game_name) — reverses the game_name string, displaying it in reverse order.

These functions can be very helpful in real-world scenarios, 
such as extracting parts of text data, formatting, 
or creating new strings based on existing data.
*/
