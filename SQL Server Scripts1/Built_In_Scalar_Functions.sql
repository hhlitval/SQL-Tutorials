/***************************************
****** Built-In, Scalar Functions ******
***************************************/

-- System function @@ERROR
DECLARE @integer int;
SET @integer = 'Four';
GO

SELECT @@ERROR; -- returns the error's message number, 0 if no error occured
GO

-- Exception handling with TRY/CATCH
BEGIN TRY
	DECLARE @integer int
	SET @integer = 10/0
END TRY
BEGIN CATCH
	SELECT
	ERROR_NUMBER() As Error_Nr
	,ERROR_SEVERITY() As Error_Severity
	,ERROR_STATE() As Error_State
	,ERROR_PROCEDURE() As Error_Procedure
	,ERROR_LINE() As Error_Line
	,ERROR_MESSAGE() As Error_Message
END CATCH

-- @@IDENTITY function
INSERT Students
VALUES ('Harry','Potter', NULL, NULL);
GO
SELECT @@IDENTITY -- returns the last inserted Id value
GO


-- @@ROWCOUNT function
SELECT * FROM Students
GO
SELECT @@ROWCOUNT -- returns the number of rows, queried in the statement 
GO

-- NEWID()
DECLARE @id uniqueidentifier
SET @id = NEWID() -- creates a unique id of the uniqueidentifier type
PRINT @id

-- ISNUMERIC() returns 1 if of numeric type, 0 else
SELECT ISNUMERIC('1'),      -- 1
	   ISNUMERIC(1),		-- 1
	   ISNUMERIC('XYZ'),    -- 0
	   ISNUMERIC(@id),      -- 0
	   ISNUMERIC('#'),      -- 0
	   ISNUMERIC('+')       -- 1

-- ISNULL()
SELECT *, ISNULL(Salary, 0.0) AS SalaryNotNULLs -- ISNULL replaces NULL Salary values with provided ones (0.0)
FROM Employees

-- CAST and CONVERT
SELECT 10/3,                    -- 3
	   10.0/3,                  -- 3.333333
	   CAST(10 as decimal)/3,   -- 3.333333
	   CONVERT(int, 10)/3       -- 3

SELECT CONVERT(datetime, '20231121 15:26')     -- 2023-11-21 15:26:00.000

SELECT 
	GETDATE() AS UnconvertedDate,
	CAST(GETDATE() AS nvarchar(30)) AS CastDate,
	CONVERT(nvarchar(30), GETDATE(), 126) AS ConvertDateTo_ISO -- 126 is a date style

-- TRY_CAST, TRY_CONVERT, TRY_PARSE
SELECT CAST('xyz' AS decimal)        -- error converting varchar to numeric

SELECT TRY_CAST('xyz' AS decimal)    -- returns NULL instead of an error message
SELECT TRY_CONVERT(decimal, 'xyz')   -- same result as above (NULL)

-- LEFT, RIGHT, LOWER, UPPER, LEN, REVERSE
SELECT 
	LEFT('son', 2) [Left],                -- takes and returns 2 the leftmost letters: so 
	RIGHT('lasso', 2) [Right],            -- takes and returns 2 the rightmost letters: so
	LOWER('HELLO') [Lower],               -- converts to lowercase: hello
	UPPER('hello') [Upper],               -- converts to lowercase: HELLO
	LEN('hello    ...    .!') [Length],   -- returns length incl. spaces: 18
	REVERSE('gfedcbA') [Reverse]          -- reverse a string: Abcdefg

-- STUFF, SUBSTRING, LTRIM, RTRIM, SPACE, REPLICATE
SELECT 
	STUFF('abcabc', 4, 3, 'def') [Stuff],            -- replace a string from 4th charachter with 3 chars 'def': abcdef 
	SUBSTRING('abcdef', 1, 3) [Substring],           -- cut 3 chars beginning from the first character: abc
	LTRIM('      qwerty') [Ltrim],                   -- remove spaces from the left
	RTRIM('oi!    ') [Rtrim],                        -- remove spaces from the right    
	'Hello' + ',' + SPACE(1) + 'World!' [Greeting],  -- Hello, World!
	REPLICATE(4, 10) [ReplicateNum],                 -- replicate numbers, chars, spaces, strings n times  
	REPLICATE('bla', 3) [ReplicateString] 

-- CHARINDEX
SELECT CHARINDEX('Savior', 'I am your savior'),       -- Looking for the start index of the pattern (Savior): 11
	   CHARINDEX('Savior', 'I am your savior', 10)    -- Same query but giving the starting index for searching: 11

-- REPLACE
SELECT REPLACE('I am your savior', 'your', 'not your') -- replacing the second argument with the third one

-- STRING CONCATENATION
SELECT 'Harry' + ' ' + 'Potter',               -- Harry Potter
	   'Ronald' + ' ' + NULL,	               -- NULL
	   CONCAT('Ronald', ' ', NULL, 'Weasley')  -- If one the arguments is NULL, it will be ignored

-- Splitting the string based on a separator
SELECT value
FROM string_split('I Am Your Savior|Shapeless To|Your Perception|For I am You|Pierced From Within', '|')