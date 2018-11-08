/*number 2*/
use northwind
select top 5 CompanyName, sum((UnitPrice-(unitprice*Discount))*Quantity) as 'Sum of Subtotal'
from Customers
join Orders on Orders.CustomerID = Customers.CustomerID
join [Order Details] on Orders.OrderID = [Order Details].OrderID
group by CompanyName
order by 'Sum of Subtotal' desc





use northwind
select top 5 CompanyName,Round(sum((UnitPrice-(unitprice*Discount))*Quantity),1) as 'Sum of Subtotal'
from customers, Orders, [Order Details]
where Orders.CustomerID=Customers.CustomerID and [Order Details].OrderID=Orders.OrderID
group by CompanyName
order by 'Sum of Subtotal' desc



select top 5 companyname, round(sum((unitprice-(unitprice*discount))*quantity),2) 'sum of subtotal'
from customers, orders, [Order Details]
where customers.CustomerID=orders.CustomerID and orders.OrderID=[Order Details].OrderID
group by companyname
order by 'sum of subtotal' desc



