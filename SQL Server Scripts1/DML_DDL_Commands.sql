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
USE Newdb 
CREATE TABLE dbo.Students -- Press Ctrl + K + X to insert snippet "Table"
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

/** DML (Data Manipulation Language) SQL commands: **
******* SELECT, INSERT, UPDATE, DELETE, MERGE *******
****************************************************/

-- Insert values into a table
INSERT INTO Students (Firstname, Lastname, House, Email)
VALUES ('Harry', 'Potter', 'Gryffindor', 'hpotter@hogwarts.com'),
	   ('Tom', 'Riddle', 'Slytherin', 'iamlordvoldemort@hogwarts.com')

-- Insert a value under a specific identity
SET IDENTITY_INSERT Students ON    -- First we need to allow it
INSERT INTO Students (Id, Firstname, Lastname, House, Email)
VALUES (3, 'Luna', 'Lovegood', 'Ravenclaw', 'loonie@hogwarts.com')
SET IDENTITY_INSERT Students OFF   -- After all, turn it off

-- Select all data
SELECT * FROM Students

-- Select specific columns
SELECT Firstname, Lastname FROM Students

SELECT Firstname, Lastname FROM Students
WHERE Id = 3

-- Update values in a table
UPDATE Students
SET House = NULL
WHERE Lastname = 'Hagrid'

-- Update values from another table
UPDATE Students
SET Email = se.Email
FROM Students s
JOIN StudentsEmail se ON s.Id = se.Id -- assuming we have StudentsEmail table

-- Delete a specific row
DELETE FROM Students
Where Id = 5

-- Delete all rows
DELETE FROM Students
    -- OR --
TRUNCATE TABLE Students -- a better way to delete data

-- OUTPUT shows an information what was added/removed from a table
-- as well as transfer deleted fields INTO another table
INSERT INTO Students (Firstname, Lastname, House, Email)
OUTPUT inserted.* 
VALUES ('Rubeus', 'Hagrid', 'NULL', 'gamekeeper@hogwarts.com')

DELETE Students 
OUTPUT deleted.Id, deleted.Firstname, deleted.Lastname -- displays only selected columns
WHERE Id = 6

DELETE Students 
OUTPUT deleted.Firstname, deleted.Lastname INTO HogwartsStaff
WHERE Id = 6