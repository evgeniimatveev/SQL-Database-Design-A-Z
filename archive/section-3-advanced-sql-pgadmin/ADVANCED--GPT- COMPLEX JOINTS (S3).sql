--                                          ADVANCED RU/ENG
/*
                             1. RIGHT JOIN: Соединение с правой таблицей

Представим, что ты хочешь найти все процедуры, которые зарегистрированы в таблице proceduredetails, 
но не у всех есть записи в истории процедур (procedurehistory).
*/

-- ----- RIGHT JOIN ДЛЯ ПОИСКА ПРОЦЕДУР БЕЗ ИСТОРИИ / RIGHT JOIN TO FIND PROCEDURES WITHOUT HISTORY

select pd.proceduretype, pd.proceduresubcode, pd.description, ph.proceduredate
from proceduredetails as pd  -- Таблица с деталями процедур / Table with procedure details
right join procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
on pd.proceduretype = ph.proceduretype and pd.proceduresubcode = ph.proceduresubcode;
/*
Объяснение:
RIGHT JOIN возвращает все строки из правой таблицы (procedurehistory), 
даже если нет соответствующих записей в левой таблице (proceduredetails).
Это помогает найти процедуры, которые могут иметь историю в procedurehistory, 
даже если в proceduredetails нет записи о них.
*/



--                              2. LEFT JOIN с агрегированием данных

--Представь, что нужно найти количество процедур, проведенных для каждого питомца.


-- ----- LEFT JOIN С АГРЕГИРОВАНИЕМ / LEFT JOIN WITH AGGREGATION

select p.petid, p.name, count(ph.proceduredate) as total_procedures
from pets as p  -- Таблица с питомцами / Table with pets
left join procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
on p.petid = ph.petid
group by p.petid, p.name;  -- Группировка по ID и имени питомца / Group by pet ID and name
/*
Объяснение:
LEFT JOIN используется для того, чтобы вернуть всех питомцев, даже если у них нет записей в procedurehistory.
COUNT используется для подсчета количества процедур, проведенных для каждого питомца.
GROUP BY группирует результаты по питомцу, что позволяет получить общее количество процедур для каждого питомца.
*/

/*

                          3. INNER JOIN с условием на подтип процедуры

Допустим, тебе нужно найти все процедуры типа VACCINATIONS с подтипом 05.
*/

-- ----- INNER JOIN С УСЛОВИЕМ НА ПОДТИП / INNER JOIN WITH CONDITION ON SUBTYPE

select p.petid, p.name, ph.proceduredate, pd.description
from pets as p  -- Таблица с питомцами / Table with pets
inner join procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
on p.petid = ph.petid
inner join proceduredetails as pd  -- Таблица с деталями процедур / Table with procedure details
on ph.proceduretype = pd.proceduretype and ph.proceduresubcode = pd.proceduresubcode
where pd.proceduretype = 'VACCINATIONS' and pd.proceduresubcode = '05';-- Условие на тип и подтип процедуры / Condition on procedure type and subtype
/*
Объяснение:
INNER JOIN соединяет таблицы, возвращая только те записи, которые соответствуют условию.
WHERE добавляет фильтр для поиска только тех процедур, которые являются вакцинациями (VACCINATIONS) и имеют подтип 05.
*/
	4. FULL OUTER JOIN с отсутствующими значениями
/*
Иногда нужно получить данные о всех питомцах и всех процедурах, независимо от того, 
есть ли у питомца процедура или нет.
*/

-- ----- ПОЛНОЕ СОЕДИНЕНИЕ С ОТСУТСТВУЮЩИМИ ЗНАЧЕНИЯМИ / FULL OUTER JOIN WITH MISSING VALUES

select p.petid, p.name, ph.proceduredate, pd.description
from pets as p  -- Таблица с питомцами / Table with pets
full outer join procedurehistory as ph  -- Таблица с историей процедур / Table with procedure history
on p.petid = ph.petid
full outer join proceduredetails as pd  -- Таблица с деталями процедур / Table with procedure details
on ph.proceduretype = pd.proceduretype and ph.proceduresubcode = pd.proceduresubcode;
/*
Объяснение:
FULL OUTER JOIN возвращает все строки из обеих таблиц, независимо от того, есть ли соответствующие записи в другой таблице.
Это позволяет получить данные даже о тех питомцах или процедурах, которые не имеют соответствий.
*/

/*
5. CROSS JOIN для создания всех комбинаций питомцев и процедур

Представь, что тебе нужно смоделировать все возможные сочетания питомцев и процедур.
*/


-
- ----- КРОСС-СОЕДИНЕНИЕ ДЛЯ ВСЕХ КОМБИНАЦИЙ / CROSS JOIN FOR ALL COMBINATIONS

	select p.petid, p.name, pd.proceduretype, pd.description
from pets as p  -- Таблица с питомцами / Table with pets
cross join proceduredetails as pd;  -- Таблица с деталями процедур / Table with procedure details