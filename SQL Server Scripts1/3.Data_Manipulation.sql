/** DML (Data Manipulation Language) SQL commands: **
******* SELECT, INSERT, UPDATE, DELETE, MERGE *******
****************************************************/
USE Newdb
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