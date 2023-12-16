-- one line comment
/* ... */ -- block comment

/**** Declaration of variables ****/
-- BIT
DECLARE @oneBit bit = 0
PRINT @oneBit

SET @oneBit = 18 -- returns 1 'cause bit can either be 0 or 1 
PRINT @oneBit

-- INTEGER + arithmetic operations on it
DECLARE @int1 int = 400, @int2 int = 600 
PRINT @int1 + @int2 -- 1000
PRINT @int1/@int2   -- 0

SET @int1 = 2147483647 + 1 -- arithmetic overflow will cause an error and the initial value will be printed
PRINT @int1

-- DECIMAL 
DECLARE @firstDecimal decimal = 430.567 -- since decimal(p, s)* by default (18,0), so it's been rounded up to 431
PRINT @firstDecimal
/* 
    * p stands for Precision, the total number of digits in the value on both sides of the decimal point
      s stands for Scale, number of digits after the decimal point
*/

DECLARE @secondDecimal decimal(6,3) = 430.567 -- 430.567
PRINT @secondDecimal

-- DATE
DECLARE @someDate date = '2022-10-21' -- YYYY-MM-DD
PRINT @someDate

SET @someDate = '20221021' -- same result
PRINT @someDate

-- DATETIME
DECLARE @someDatetime datetime = '2022-10-21 19:25:05' -- YYYY-MM-DD hh:mm:ss[.nnn]
PRINT @someDatetime

-- TIME
DECLARE @someTime time = '19:25:05' -- hh:mm:ss[.nnnnnnn]
PRINT @someTime

-- NCHAR
DECLARE @fixed_sizeChar nchar = 'Hmmm' -- returns H, since the length by default is 1
PRINT @fixed_sizeChar

DECLARE @fixed_sizeChar2 nchar(14) = 'Hmmm' -- works now for the fixed length of 14 characters, that is 4 for the 'Hmmm' + 10 empty spaces if you select the output
PRINT @fixed_sizeChar2

--NVARCHAR
DECLARE @variable_sizeChar nvarchar = 'Rubbish' -- same issue, as above: 'R'
PRINT @variable_sizeChar

DECLARE @variable_sizeChar2 nvarchar(14) = 'Rubbish' -- as opposite to nchar it returns only 7 characters without spaces after it, but the variable can still take up to 14 characters  
PRINT @variable_sizeChar2