/************************************ 
******* Sorting query results *******
******* USE AdventureWorks2019 ******    
************************************/

-- Using ORDER BY clause and sort in ascending order
SELECT * FROM Person.Person
WHERE PersonType = 'EM'
ORDER BY LastName ASC