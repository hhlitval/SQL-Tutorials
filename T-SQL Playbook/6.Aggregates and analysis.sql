-- Basic aggregates
select 
SUM(Total) as AllTimeSales,
AVG(Total) as AvgSale,
COUNT(Total) as SalesCount,
MIN(Total) as SmallestSale,
MAX(Total) as BiggestSale
from Invoice

-- Grouping results
select BillingCountry,
SUM(Total) as AllTimeSales
from Invoice
GROUP BY BillingCountry
ORDER BY AllTimeSales Desc

select FirstName + ' ' + LastName as Customer, BillingCountry, SUM(Total) as SalesTotal, AVG(Total) as AvgPurchase
from Invoice inner join Customer
on Invoice.CustomerId = Customer.CustomerId
group by FirstName, LastName, BillingCountry
order by BillingCountry, LastName

-- Constraining aggregate results
select BillingCountry, SUM(Total) as SalesTotal
from Invoice
where BillingCountry IN('Germany', 'Austria', 'Denmark')
group by BillingCountry
having Sum(Total) > 40
order by BillingCountry