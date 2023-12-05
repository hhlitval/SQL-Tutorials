-- Inserting data
insert into Users(Email)
values ('test2@test.com');

insert into Users(Email, CreatedAt, First, Last, Bio)
values ('test3@test.com', GETDATE(), 'Test', 'User', 'Some person');

-- Bulk inserts
insert into Users(Email, First, Last)
select Email, FirstName, LastName 
from Chinook.dbo.Customer;

-- Updating data
update Users set
CreatedAt = '09/23/2014'
where id = 1;

-- Updating with criteria
update Users set
CreatedAt = '09/23/2023'
where Email = 'luisg@embraer.com.br';

-- Bulk updates
update Users set
CreatedAt = '09/23/2023'
where id <= 10;

-- Delete rows
delete from Users
where Id = 1;

-- Bulk deletes
delete from Users
where Id <= 10;

-- Delete all data
delete from Users;