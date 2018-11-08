/*number 3*/
use northwind
select Employees.EmployeeID, Employees.LastName, Employees.FirstName, Customers.CompanyName,
round(sum((UnitPrice-(unitprice*Discount))*Quantity),2) as 'SumofSubtotal'
from Orders
join [Order Details] on [Order Details].OrderID = Orders.OrderID
join Employees on Employees.EmployeeID = Orders.EmployeeID
join Customers on Customers.CustomerID = Orders.CustomerID
group by Employees.EmployeeID,Employees.LastName, Employees.FirstName,Customers.CompanyName
having sum((UnitPrice-(unitprice*Discount))*Quantity) > 5000
order by Employees.LastName, sumofsubtotal desc;


use northwind
select E.EmployeeID,E.LastName,E.FirstName,C.CompanyName,sum((UnitPrice-(unitprice*Discount))*Quantity) as 'SumofSubtotal'
from Employees as E, Orders as O, [Order Details] as OD,Customers as C
where (O.OrderId=OD.OrderID and E.EmployeeID=O.EmployeeID) and C.CustomerID=O.CustomerID
Group by E.EmployeeID,E.LastName,E.FirstName,C.CompanyName
having 'SumofSubtotal' > 5000
order by E.LastName, 'SumofSubtotal' desc;

use northwind
select E.EmployeeID, E.LastName, E.FirstName, C.CompanyName,
round(sum((UnitPrice-(unitprice*Discount))*Quantity),2) as 'SumofSubtotal'
from Orders as O, [Order Details] as OD, Employees as E, Customers as C
where OD.OrderID = O.OrderID and E.EmployeeID = O.EmployeeID and C.CustomerID = O.CustomerID
group by E.EmployeeID,E.LastName, E.FirstName,C.CompanyName
having sum((UnitPrice-(unitprice*Discount))*Quantity) > 5000
order by E.LastName, sumofsubtotal desc;

-----------------------------------------------------------------------------
use northwind
select E.EmployeeID, LastName, FirstName, CompanyName,
FORMAT ( sum((unitprice-(unitprice*discount))*quantity), 'C') as sumofsubtotal
from Orders o, [Order Details]  od, Employees e, Customers c
where od.orderid = o.orderid and e.employeeid = o.employeeid and c.customerid = o.customerid
group by E.EmployeeID,E.LastName, E.FirstName,C.CompanyName
having sum((unitprice-(unitprice*discount))*quantity) > 5000
order by LastName, sumofsubtotal desc;


--------------------------------------------------------------------------------
select e.employeeid,lastname,firstname,companyname, round(sum((unitprice-(unitprice*discount))*quantity),2) 'sumofsubtotal'
from orders o,[order details] od, customers c, employees e
where o.orderid=od.orderid and o.customerid=c.customerid and o.EmployeeID=e.employeeid
group by e.employeeid,e.lastname,e.firstname,c.companyname
having sum((unitprice-(unitprice*discount))*quality) > 5000
order by last name, sumofsubtotal










