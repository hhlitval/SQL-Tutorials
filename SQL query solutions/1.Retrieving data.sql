/************************************* 
**** Retrieving Data from a Table ****
******* USE AdventureWorks2019 *******    
*************************************/

-- Retrieving All Rows and Columns from a Table
SELECT * FROM HumanResources.Employee

-- Retrieving a Subset of Rows from a Table 
SELECT * FROM HumanResources.Employee
WHERE Gender = 'M'

-- Finding Rows That Satisfy Multiple Conditions 
SELECT * FROM HumanResources.Employee
WHERE (OrganizationLevel = 2
	OR MaritalStatus = 'M'
	OR JobTitle = 'Marketing Specialist')

-- Retrieving a Subset of Columns from a Table
SELECT BusinessEntityID, JobTitle, BirthDate FROM HumanResources.Employee

-- Providing aliases for Columns 
SELECT BusinessEntityID as Id, JobTitle as Position, BirthDate FROM HumanResources.Employee

-- Referencing an Aliased Column in the WHERE Clause
SELECT * FROM (SELECT BusinessEntityID as Id, JobTitle as Position, BirthDate FROM HumanResources.Employee) x
WHERE BirthDate LIKE '1956%'

-- Concatenating Column Values 
SELECT LoginID + ' WORKS AS A ' + JobTitle as msg
FROM HumanResources.Employee
WHERE OrganizationNode IS NOT NULL

-- SELECT * FROM Person.Person
SELECT 'Title of a person: ' + Title + FirstName + ' ' + LastName as PersonTitle
FROM Person.Person
WHERE Title IS NOT NULL

-- Using Conditional Logic (If-Else) in a SELECT Statement
SELECT BusinessEntityID, SickLeaveHours,
	CASE 
		WHEN SickLeaveHours > 30 THEN 'TOO OFTEN SICK'
		WHEN SickLeaveHours <= 30 THEN 'OK'
	END AS Reputation
FROM HumanResources.Employee

-- Limiting the Number of Rows
SELECT TOP 100 * FROM HumanResources.Employee

-- Returning n Random Records from a Table 
SELECT TOP 10 * FROM HumanResources.Employee -- n = 10
ORDER BY NEWID() -- NEWID() returns a random result set

-- Finding Null Values
SELECT * FROM HumanResources.Employee
WHERE OrganizationLevel IS NULL

-- Transforming Nulls into real values
SELECT *,
CASE 
	WHEN OrganizationLevel IS NOT NULL THEN OrganizationLevel
	ELSE 0
	END AS OrganizationLevel
FROM HumanResources.Employee

/* Searching for Patterns */
SELECT * FROM HumanResources.Employee
WHERE OrganizationLevel IN (3,4)						  -- OrganizationLevel 3 or 4
	AND (JobTitle LIKE '%Engineer%' OR LoginID LIKE '%0') -- Job title containing the word 'engineer' or login ID ending with zero 