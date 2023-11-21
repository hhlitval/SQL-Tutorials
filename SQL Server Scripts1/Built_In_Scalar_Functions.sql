/***************************************
****** Built-In, Scalar Functions ******
***************************************/

/*********************
** SCALAR FUNCTIONS **
*********************/

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

/***********************
** BUILT-IN FUNCTIONS **
***********************/