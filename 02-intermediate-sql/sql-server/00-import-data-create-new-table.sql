/*                               --IMport Data + Create Tables
USE [Console Games]
GO

CREATE TABLE console_games (
    game_rank integer,
    game_name varchar(1200),
    platform_name varchar(1200),
    game_year integer,
    genre varchar(200),
    publisher varchar(1200),
    na_sales float,
    eu_sales float,
    jp_sales float,
    other_sales float
	)

INSERT INTO console_games
SELECT *
FROM [dbo].[RAW ConsoleGames]      --- RAW >>(Do not forget where you Create a NEW Tables 

Steps :                      How Create New Database + Import Raw Data

1. Create New Databese (Console Games)
2. Right_click[DB] >>TASKS>>IMPORT_DATA>>FLAT_File_SOURCE>>BROWSE>>CSV_FIles>>(Console Games)
3.(General)TEXTQUALIFIED >>make_sure is " 
4.(Advanced) ALL QUTPUT_COLUMN_WIDTH SET for 5000
5. Chose Destinaton : MIcrosoft OLE DB provider for MS sql Server !!
6. TAbles and Views : ADD RAW ! [dbo].[RAW ConsoleGames ]
*/
select *
from [dbo].[RAW ConsoleGames]