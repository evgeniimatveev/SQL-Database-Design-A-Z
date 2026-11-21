--                               JOINING MULTIPLE FIELDS

--                                    ADVANCED RU/ENG
	

-- ----- СОЕДИНЕНИЕ ТРЕХ ТАБЛИЦ / JOINING THREE TABLES

select p.petid, o.ownerid, ph.proceduredate, pd.description, pd.price
from procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
inner join proceduredetails as pd  -- Таблица с деталями процедур / Table with procedure details
on ph.proceduretype = pd.proceduretype and ph.proceduresubcode = pd.proceduresubcode  -- Соединение по типу и подтипу процедуры / Join on procedure type and subcode
inner join pets as p  -- Таблица с питомцами / Table with pets
on ph.petid = p.petid  -- Соединение по ID питомца / Join on pet ID
inner join owners as o  -- Таблица с владельцами питомцев / Table with pet owners
on p.ownerid = o.ownerid ;  -- Соединение по ID владельца / Join on owner ID



-- ----- ЛЕВОЕ СОЕДИНЕНИЕ С ФИЛЬТРАЦИЕЙ ПО ДАТЕ / LEFT JOIN WITH DATE FILTERING

select p.petid, p.name, ph.proceduredate, pd.description
from pets as p  -- Таблица с питомцами / Table with pets
left join procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
on p.petid = ph.petid and ph.proceduredate > '2016-01-10'  -- Соединение и фильтрация по дате процедуры / Join and filter by procedure date
left join proceduredetails as pd  -- Таблица с деталями процедур / Table with procedure details
on ph.proceduretype = pd.proceduretype and ph.proceduresubcode = pd.proceduresubcode;-- Соединение по типу и подтипу процедуры / Join on procedure type and subcode



-- ----- КРОСС-СОЕДИНЕНИЕ ДЛЯ ВСЕХ ВОЗМОЖНЫХ КОМБИНАЦИЙ / CROSS JOIN FOR ALL POSSIBLE COMBINATIONS

select p.petid, p.name, pd.proceduretype, pd.description, pd.price
from pets as p  -- Таблица с питомцами / Table with pets
cross join proceduredetails as pd;  -- Таблица с деталями процедур / Table with procedure details



-- ----- ПОЛНОЕ СОЕДИНЕНИЕ ДВУХ ТАБЛИЦ / FULL OUTER JOIN OF TWO TABLES

select p.petid, p.name, ph.proceduredate, pd.description, pd.price
from pets as p  -- Таблица с питомцами / Table with pets
full outer join procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
on p.petid = ph.petid  -- Соединение по ID питомца / Join on pet ID
full outer join proceduredetails as pd  -- Таблица с деталями процедур / Table with procedure details
on ph.proceduretype = pd.proceduretype and ph.proceduresubcode = pd.proceduresubcode;  -- Соединение по типу и подтипу процедуры / Join on procedure type and subcode



-- ----- САМОСОЕДИНЕНИЕ ДЛЯ ПОИСКА ПОВТОРЯЮЩИХСЯ ПРОЦЕДУР / SELF JOIN TO FIND REPEATED PROCEDURES

select a.petid, a.proceduredate as date1, b.proceduredate as date2, a.proceduretype
from procedurehistory as a  -- Первая копия таблицы с историей процедур / First copy of the procedure history table
inner join procedurehistory as b  -- Вторая копия той же таблицы / Second copy of the same table
on a.petid = b.petid  -- Соединение по ID питомца / Join on pet ID
and a.proceduretype = b.proceduretype  -- Соединение по типу процедуры / Join on procedure type
and a.proceduredate < b.proceduredate;  -- Условие для нахождения процедур в разные даты / Condition to find procedures on different dates

