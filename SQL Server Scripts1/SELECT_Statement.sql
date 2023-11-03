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
WHERE Salary IS NULL  -- display NULL rows

SELECT * FROM Employees
WHERE BirthDate > '19950101' -- born after 01-01-1995
ORDER BY BirthDate

SELECT * FROM Employees
WHERE BirthDate !> '19950101' -- born before 01-01-1995
ORDER BY BirthDate

/***********************************
********* Logical operators ********
** ALL, ANY, AND, BETWEEN, EXISTS ** 
****** IN, LIKE, NOT, OR, SOME ***** 
***********************************/
SELECT * FROM Employees
WHERE Department = 'Accounting' AND Salary IS NOT NULL -- select employees from Accounting dep. and which salaries are (luckily) NOT NULL 

SELECT * FROM Employees
WHERE Department = 'Sales and Marketing' OR Department = 'Customer Service' -- employees of either sales or customer service departments
ORDER BY Department

SELECT * FROM Employees
WHERE Department IN ('Sales and Marketing', 'Customer Service') -- a more compact way for the previous query
ORDER BY Department

SELECT * FROM Employees
WHERE Salary > 5000 AND (Department = 'Sales and Marketing' OR Department = 'Customer Service') -- ignoring the brackets for complex statements will cause wrong results like:
-- WHERE Salary > 5000 AND Department = 'Sales and Marketing' OR Department = 'Customer Service'

SELECT * FROM Employees
WHERE Id BETWEEN 20 AND 40 -- self-explainig one

SELECT * FROM Employees
WHERE Address LIKE 'Ap%' -- display employees with an address beginning with Ap...

SELECT * FROM Employees
WHERE Address LIKE '%road%' -- display employees with an address containing 'Road'

SELECT * FROM Employees
WHERE Id LIKE '_2'       -- employees with ids = 12,22,32,42,52 etc.

SELECT * FROM Employees
WHERE Id LIKE '[1,2,3]2' -- employees with ids = 12,22,32.

SELECT * FROM Employees
WHERE Id LIKE '[1-3]2'   -- same range, same result as above

SELECT * FROM Employees
WHERE Id LIKE '[^1-3]2'  -- this time exclude ids 12,22 and 32 but display the rest


/*********************************
********* CASE Expression ********
*********************************/

-- Displaying positions of employees according to their salaries
SELECT Id, Firstname, Lastname, Department, Salary, 
CASE
	WHEN Salary >= 8500 THEN 'Head of department'	
	WHEN Salary IS NULL THEN 'Top secret'
	ELSE 'Staff member'
END AS Position
FROM Employees

-- Assign employees a bonus rate depending on department
SELECT Id, Firstname, Lastname, Department, Salary, 
CASE Department
	WHEN 'Legal Department' THEN '100%'
	WHEN 'Sales and Marketing' THEN '80%'
	WHEN 'Finances' THEN '50%'
	ELSE '10%'
END AS Bonus
FROM Employees

-- Assign employees a bonus and calculate its value
SELECT Id, Firstname, Lastname, Department, Salary, 
CASE Department
	WHEN 'Legal Department' THEN '100%'
	WHEN 'Sales and Marketing' THEN '80%'
	WHEN 'Finances' THEN '50%'
	ELSE '10%'
END AS [Bonus%],
CASE Department
	WHEN 'Legal Department' THEN (Salary+(Salary/100))
	WHEN 'Sales and Marketing' THEN (Salary+(Salary/80))
	WHEN 'Finances' THEN (Salary+(Salary/50))
	ELSE (Salary+(Salary/10))
END AS [SalaryWithBonus €]
FROM Employees

/********************************
********** IIF Function *********
**** (conditional operator) *****
********************************/
SELECT Id, Firstname, Lastname, Department, Salary, 
IIF(Salary >= 8500, 'Head of Department', 'Staff member') AS Position -- same query as in the lines 107-113 but without using CASE
FROM Employees