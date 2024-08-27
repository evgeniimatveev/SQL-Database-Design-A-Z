/*
select * ,CAST ([game_year] as decimal)
from [dbo].[console_games] ;
*/
/*
select * ,CAST ([game_year] as decimal)
from [dbo].[console_games]
convert(game_year ,decimal )
*/

-- Преобразование game_year в строку для последующего объединения с другими текстовыми данными
-- Converting game_year to a string for further concatenation with other text data
/*
SELECT 
    game_name,  -- Имя игры / Game name
    platform_name,  -- Платформа / Platform name
    CAST(game_year AS varchar(4)) AS game_year_string  -- Преобразование года выпуска в строку / Converting release year to a string
FROM 
    dbo.console_games;
*/



-- Преобразование global_sales в decimal с 2 знаками после запятой для точной отчетности
-- Converting global_sales to decimal with 2 decimal places for precise reporting
/*
SELECT 
    game_name,  -- Имя игры / Game name
    platform_name,  -- Платформа / Platform name
    CAST(global_sales AS decimal(10, 2)) AS global_sales_decimal  -- Преобразование глобальных продаж в decimal / Converting global sales to decimal
FROM 
    dbo.console_games;
*/



-- Преобразование Na_sales_Percent в целое число для округления процентов
-- Converting Na_sales_Percent to an integer to round the percentage
/*
SELECT 
    game_name,  -- Имя игры / Game name
    platform_name,  -- Платформа / Platform name
    CAST(Na_sales_Percent AS int) AS Na_sales_Percent_int  -- Преобразование процента продаж в целое число / Converting sales percentage to an integer
FROM 
    dbo.console_games;
*/

-- Преобразование na_sales в строку для использования в текстовых отчетах
-- Converting na_sales to a string for use in text reports
/*

SELECT 
    game_name,  -- Имя игры / Game name
    platform_name,  -- Платформа / Platform name
    CAST(na_sales AS varchar(10)) AS na_sales_string  -- Преобразование продаж в Северной Америке в строку / Converting North American sales to a string
FROM 
    dbo.console_games;
	*/

	-- Создание отчета с объединением имени игры, платформы и года выпуска
-- Creating a report by concatenating game name, platform, and release year

SELECT 
    game_name,  -- Имя игры / Game name
    platform_name,  -- Платформа / Platform name
    'Game "' + game_name + '" on platform "' + platform_name + '" was released in ' + CAST(game_year AS varchar(4)) AS report_string  -- Создание строки отчета / Creating a report string
FROM 
    dbo.console_games;
