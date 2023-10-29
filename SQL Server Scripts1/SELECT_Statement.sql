/*****************************
****** SELECT statement ******
*****************************/

/* Basic srtucture of a selection statement:
*** 
	SELECT 
	[ALL(all rows by default) | DISTINCT (without duplicate rows)]
	[[TOP n | n PERCENT] | WITH TIES]
	<list>
	FROM <table>
*/

-- Display first 15 rows
SELECT TOP 15 * FROM Employees

-- Display list of departments
SELECT DISTINCT Department FROM Employees -- as opposite to the complete list of [SELECT Department from Employees]

