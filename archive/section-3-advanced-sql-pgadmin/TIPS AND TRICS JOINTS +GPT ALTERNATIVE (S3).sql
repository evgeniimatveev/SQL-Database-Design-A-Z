/*

SELECT PETS.NAME , OWNERS.NAME            --JOIN +SORTING THE  TABLES 
FROM PETS 
LEFT JOIN OWNERS
ON PETS.OWNERID = OWNERS.OWNERID ; 
*/

/*

SELECT PETS.name, OWNERS.name       --TIPS AND TRICS + RIGHT JOINT
FROM PETS              
LEFT JOIN OWNERS         
ON PETS.OWNERID = OWNERS.OWNERID
WHERE left(PETS.name,1) = left(OWNERS.name ,1);
*/

/*

SELECT pets.name, owners.name         --ALTERNATIVE GPT ++SUBSTRING
FROM PETS
LEFT JOIN OWNERS
ON PETS.OWNERID = OWNERS.OWNERID
WHERE SUBSTRING(pets.name FROM 1 FOR 1) = SUBSTRING(owners.name FROM 1 FOR 1);
*/

/*
SELECT a.name, b.name    --sorting by AS a and AS b   tip#1
FROM PETS as a                  --sorting 
LEFT JOIN OWNERS as b           --sorting 
ON a.OWNERID = b.OWNERID
--WHERE SUBSTRING(pets.name FROM 1 FOR 1) = SUBSTRING(owners.name FROM 1 FOR 1);
WHERE left(a.name,1) = left(b.name ,1);
*/
/*
                               --ALIASES FOR TABLES
SELECT a.name, b.name        
FROM PETS as a                   --ADD as for Tables 
LEFT JOIN OWNERS as b            --add as for TABLES
ON a.OWNERID = b.OWNERID
--WHERE SUBSTRING(a.name FROM 1 FOR 1) = SUBSTRING(b.name FROM 1 FOR 1);
WHERE left(a.name,1) = left(b.name ,1);
*/

/*
                                 --ALIASES IN COLUMNS           -- SUPER HOT !!
SELECT a.name as pets_name, b.name as owners_name           --CHANGING NAME OF COLUMS
FROM PETS as a                  
LEFT JOIN OWNERS as b          
ON a.OWNERID = b.OWNERID
--WHERE SUBSTRING(a.name FROM 1 FOR 1) = SUBSTRING(b.name FROM 1 FOR 1);
WHERE left(a.name,1) = left(b.name ,1);

*/
                             
                                   --RIGHT JOIN (SAME THING AS LEFT JOIN) BUT!! DO FORGET ABOUT ALISES!!! (SWITCH)

SELECT a.name as pets_name, b.name as owners_name          
FROM OWNERS as B                           --SWITCH
RIGHT JOIN PETS as A                       --SWITCH
ON a.OWNERID = b.OWNERID
--WHERE SUBSTRING(a.name FROM 1 FOR 1) = SUBSTRING(b.name FROM 1 FOR 1);
--WHERE left(a.name,1) = left(b.name ,1);




