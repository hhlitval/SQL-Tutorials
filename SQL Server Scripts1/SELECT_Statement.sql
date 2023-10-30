/*****************************
****** SELECT statement ******
*****************************/

/* Basic srtucture of a selection statement:
*** 
	SELECT 
	[ALL(all rows by default) | DISTINCT (without duplicate rows)]
	[[TOP n (n PERCENT)] | WITH TIES]
	<list>
	FROM <table>
*/

-- Display first 15 rows / 5 percent of rows
SELECT TOP 15 * FROM Employees
SELECT TOP 5 PERCENT * FROM Employees -- first 5 rows

-- Display list of departments
SELECT DISTINCT Department FROM Employees -- as opposed to the complete list of [SELECT Department from Employees]

-- Selecting and ordering of data 
SELECT * FROM Employees
ORDER BY Lastname, Firstname

SELECT * FROM Employees
ORDER BY BirthDate ASC -- ASC (ascending) is used by default

SELECT * FROM Employees
ORDER BY Salary DESC

-- WITH TIES
SELECT TOP 10 WITH TIES Firstname, Lastname, Salary FROM Employees
ORDER BY Salary

-- Create a new table from the query
SELECT Id, Firstname, Lastname, Salary 
INTO EmployeesSalary
FROM Employees 

/***********************************
****** WHERE Search condition ******
************************************
* =, != (<>), >, >=, <, <=, !<, !> *
***********************************/
SELECT * FROM Employees
WHERE Salary !> 6234 -- not bigger than 6234 (or < 6234 equivalently)
ORDER BY Salary ASC

SELECT * FROM Employees
WHERE Department = 'Accounting' AND Salary IS NOT NULL

SELECT * FROM Employees
WHERE Salary IS NULL

SELECT * FROM Employees
WHERE BirthDate > '1990'