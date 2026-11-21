/*
                                    Пример 1: INNER JOIN с несколькими таблицами
В этом примере мы объединим таблицы Pets, ProceduresHistory и ProceduresDetails с использованием INNER JOIN:
*/
-- INNER JOIN between three tables to get detailed information about pets and their procedures

select 
    a.Petid,  -- ID питомца
    a.Name as Pet_Name,  -- Имя питомца
    a.kind,  -- Тип животного (например, собака, кошка)
    a.gender,  -- Пол животного
    b.ProcedureDate,  -- Дата проведения процедуры
    b.ProcedureType,  -- Тип процедуры
    b.ProcedureSubCode,  -- Подкод процедуры
    c.Description,  -- Описание процедуры
    c.Price  -- Цена процедуры
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  -- Соединение таблиц Pets и ProceduresHistory
    on a.petid = b.petid  -- Поиск совпадений по petid
inner join dbo.ProceduresDetails as c  -- Соединение с таблицей ProceduresDetails
    on b.ProcedureType = c.ProcedureType  -- Поиск совпадений по ProcedureType
    and b.ProcedureSubCode = c.ProcedureSubCode;  -- Уточнение соединения по ProcedureSubCode

/*
                                       Пример 2: LEFT JOIN с дополнительными условиями
                  Этот запрос соединяет все записи из Pets с информацией из ProceduresHistory и добавляет данные из ProceduresDetails там, где они есть:
*/

                          -- LEFT JOIN to retrieve all pets with their procedure history, even if details are missing

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    b.ProcedureDate,  
    b.ProcedureType,  
    b.ProcedureSubCode,  
    c.Description,  
    c.Price  
from dbo.Pets as a
left join dbo.ProceduresHistory as b  -- Соединение Pets и ProceduresHistory
    on a.petid = b.petid  
left join dbo.ProceduresDetails as c  -- Присоединение подробностей процедур с возможным отсутствием данных
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode;


/*
                                       Пример 3: FULL OUTER JOIN для отображения всех возможных записей
                 В этом примере используется FULL OUTER JOIN, чтобы показать все возможные комбинации записей из всех трех таблиц:
*/
                    -- FULL OUTER JOIN to see all possible combinations of pets, procedures, and details, including unmatched records

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    b.ProcedureDate,  
    b.ProcedureType,  
    b.ProcedureSubCode,  
    c.Description,  
    c.Price  
from dbo.Pets as a
full outer join dbo.ProceduresHistory as b  -- Полное соединение для отображения всех записей, даже без совпадений
    on a.petid = b.petid  
full outer join dbo.ProceduresDetails as c  -- Присоединение подробностей процедур
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode;

/*
                                         Пример 4: CROSS JOIN для генерации всех возможных комбинаций
                                Этот запрос создает декартово произведение всех строк из таблиц Pets и ProceduresDetails:
*/

-- CROSS JOIN to generate all possible combinations of pets and procedure details

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    c.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
cross join dbo.ProceduresDetails as c;  -- Декартово произведение всех строк из таблиц Pets и ProceduresDetails
/*
                                                   Пример 5: Соединение трех таблиц с фильтрацией
                                        Этот пример объединяет данные с фильтрацией по определенному типу процедур:
*/
-- Joining three tables with a filter on ProcedureType

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    b.ProcedureDate,  
    b.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where b.ProcedureType = 'VACCINATIONS';  -- Фильтрация по типу процедур 'VACCINATIONS'
/*
                                 Пример 6: Фильтрация по возрасту питомцев и сортировка по имени
                    Этот запрос выбирает информацию о питомцах старше 5 лет и сортирует результаты по имени питомца:
*/

                               -- Selecting pets older than 5 years and sorting by their name

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    a.age,  -- Выбор возраста питомца
    a.OwnerID  
from dbo.Pets as a
where a.age > 5  -- Фильтрация питомцев старше 5 лет
order by a.Name;  -- Сортировка по имени питомца
 /*                   
					        Пример 7: Фильтрация по типу процедур и сортировка по дате процедуры
                      Этот запрос выбирает информацию о вакцинациях и сортирует результаты по дате процедуры:
*/
                               -- Selecting vaccination procedures and sorting by procedure date

select 
    a.Petid,  
    a.Name as Pet_Name,  
    b.ProcedureDate,  
    b.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where b.ProcedureType = 'VACCINATIONS'  -- Фильтрация по типу процедуры (вакцинации)
order by b.ProcedureDate;  -- Сортировка по дате процедуры

/*
                            Пример 8: Фильтрация по цене процедуры и сортировка по описанию
                  Этот запрос выбирает процедуры с ценой выше 50 и сортирует результаты по описанию процедуры:
*/
                  -- Selecting procedures with a price greater than 50 and sorting by description

select 
    a.Petid,  
    a.Name as Pet_Name,  
    b.ProcedureDate,  
    c.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where c.Price > 50  -- Фильтрация процедур с ценой выше 50
order by c.Description;  -- Сортировка по описанию процедуры

/*
                                 Пример 9: Фильтрация по полу питомцев и сортировка по возрасту и имени
                      Этот запрос выбирает информацию о питомцах женского пола и сортирует результаты по возрасту и имени питомца:
*/

                                 -- Selecting female pets and sorting by age and name

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    a.age,  
    a.OwnerID  
from dbo.Pets as a
where a.gender = 'female'  -- Фильтрация по полу питомцев (женский)
order by a.age, a.Name;  -- Сортировка по возрасту и имени питомца

/*
                                         Пример 10: Фильтрация по городу владельца и сортировка по имени питомца
             Этот запрос выбирает информацию о питомцах, чьи владельцы живут в городе "Traverse City", и сортирует результаты по имени питомца:
*/

                                  -- Selecting pets whose owners live in 'Traverse City' and sorting by pet name

select 
    a.Petid,  
    a.Name as Pet_Name,  
    a.kind,  
    a.gender,  
    a.age,  
    a.OwnerID,  
    o.City  
from dbo.Pets as a
inner join dbo.Owners as o  -- Соединение с таблицей владельцев
    on a.OwnerID = o.OwnerID  
where o.City = 'Traverse City'  -- Фильтрация по городу владельца (Traverse City)
order by a.Name;  -- Сортировка по имени питомца

/*
                                       Пример 11: Фильтрация по комбинации условий и сортировка по нескольким полям
              Этот запрос выбирает информацию о процедурах, которые стоят более 100 и были проведены в 2016 году, сортируя результаты по дате и цене:
*/

                                    -- Selecting expensive procedures performed in 2016 and sorting by date and price

select 
    a.Petid,  
    a.Name as Pet_Name,  
    b.ProcedureDate,  
    c.ProcedureType,  
    c.Description,  
    c.Price  
from dbo.Pets as a
inner join dbo.ProceduresHistory as b  
    on a.petid = b.petid  
inner join dbo.ProceduresDetails as c  
    on b.ProcedureType = c.ProcedureType  
    and b.ProcedureSubCode = c.ProcedureSubCode
where c.Price > 100  -- Фильтрация по цене процедуры (более 100)
and year(b.ProcedureDate) = 2016  -- Фильтрация по году проведения процедуры (2016)
order by b.ProcedureDate, c.Price;  -- Сортировка по дате процедуры и цене