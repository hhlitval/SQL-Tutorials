/** DDL (Data Definition Language) SQL commands: ****
******* CREATE, ALTER, DROP, RENAME, TRUNCATE *******
****************************************************/
-- Create a database
CREATE DATABASE Newdb 

-- Alter a database
ALTER DATABASE Newdb 
MODIFY NAME = NewDatabase -- for example giving a new name

-- Delete a database
DROP DATABASE NewDatabase

-- Create a table
USE SampleDb
CREATE TABLE Students -- Press Ctrl + K + X to insert snippet "Table"
(
    Id int NOT NULL IDENTITY(1,1), -- (1,1) by default!
    Firstname nvarchar(20) NULL,   
	Lastname nvarchar(20),         -- NULL is given here by default
	Faculty nvarchar(50),
	Email nvarchar(30)
);

-- Change a column's type and disallow null vallues
ALTER TABLE Students
ALTER COLUMN Lastname nvarchar(25) NOT NULL -- Not null now

-- Insert a new column
ALTER TABLE Students
ADD StudentAddress nvarchar(50)

-- Delete a column
ALTER TABLE Students
DROP COLUMN StudentAddress

--Rename a column
EXEC SP_RENAME 'Students.Faculty', 'House', 'COLUMN'