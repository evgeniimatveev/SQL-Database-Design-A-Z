/*                            --CHECK FOR DATA
select *
from owners ;
*/
/*                            --CHECK FOR OTHER TABLE 
select *
from pets ; 
*/
/*
SELECT                      --FIRST lETF JOIN
FROM PETS 
LEFT JOIN OWNERS
ON PETS.OWNERID = OWNERS.OWNERID ; 
*/

SELECT PETS.NAME , OWNERS.NAME            --JOIN +SORTING THE  TABLES 
FROM PETS 
LEFT JOIN OWNERS
ON PETS.OWNERID = OWNERS.OWNERID ; 

