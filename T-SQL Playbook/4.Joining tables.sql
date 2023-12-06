-- Inner Joins
USE Chinook;
select Invoice.InvoiceId, InvoiceDate, UnitPrice, Quantity 
from Invoice
inner join InvoiceLine 
on InvoiceLine.InvoiceId = Invoice.InvoiceId;

-- Nested Subqueries
select *,
(select count(1) from Album
	where Album.ArtistId = Artist.ArtistId
) as AlbumCount
from Artist
order by AlbumCount Desc;

-- Left and Right Joins
select Artist.Name, Title
from Artist inner join Album -- all records that match the equality in the next line
on Album.ArtistId = Artist.ArtistId;

select Artist.Name, Title
from Artist left join Album -- all records from the left table (Artist)
on Album.ArtistId = Artist.ArtistId;

select Artist.Name, Title
from Artist right join Album -- all records from the right table
on Album.ArtistId = Artist.ArtistId;

-- Full Joins
select Artist.Name, Title
from Artist full join Album -- all records from the left and right table
on Album.ArtistId = Artist.ArtistId;