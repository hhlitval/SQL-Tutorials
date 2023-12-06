-- Ordering results
USE Chinook;
select FirstName + ' ' + LastName as Name, Email, Country, InvoiceId, InvoiceDate, Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where Country = 'Brazil'
order by Total desc;

-- Limiting results
select top 10 FirstName + ' ' + LastName as Name, Email, Country, InvoiceId, InvoiceDate, Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where Country = 'Brazil'
order by Total desc;

-- Sequential ordering
select LastName + ', ' + FirstName as Name, Email, Country, InvoiceId, InvoiceDate, Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where Country = 'USA' or Country = 'Canada'
order by Country, LastName;

-- Filtering by sets
select LastName + ', ' + FirstName as Name, Email, Country, InvoiceId, InvoiceDate, Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where (Country = 'USA' 
or Country = 'Canada') 
and Total > 5
order by Country, LastName;

-- Using IN to achieve same results as in the last query
select LastName + ', ' + FirstName as Name, Email, Country, InvoiceId, InvoiceDate, Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where Country IN('USA','Canada', 'Germany') 
and Total > 5
order by Country, LastName;

-- Offsetting results
select LastName + ', ' + FirstName as Name, Email, Country, InvoiceId, InvoiceDate, Total
from Customer
inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where Country = 'USA'
order by Total desc
offset 1 rows;