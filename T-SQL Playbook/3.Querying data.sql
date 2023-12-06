-- Simple select
select *
from Album;

-- Select columns
select FirstName, LastName, Email
from Customer;

-- Aliasing columns
select FirstName as First, LastName as 'Last Name', Email
from Customer;

-- Column expressions
select FirstName + ' ' + LastName as 'Customer Name', Email
from Customer

-- Naming
select Email, [Likes Bacon] -- not a good name for a column, try to avoid spaces btw words
from Customer;