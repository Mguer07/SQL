/* number 4*/
use northwind
select OrderDate,Sum([Order Details].unitprice*Quantity) as 'Sale List Price',CategoryName
from Orders
JOIN [Order Details] on Orders.OrderID = [Order Details].OrderID
JOIN Products on [Order Details].ProductID = Products.ProductID
JOIN Categories on products.CategoryID = Categories.CategoryID
group by OrderDate,CategoryName
Order by CategoryName, OrderDate


select Orders.OrderDate, [Order Details].UnitPrice*Quantity as 'SaleListPrice',
Categories.CategoryName
from Orders
join [Order Details] on ([Order Details].OrderID = Orders.OrderID)
join Products on ( Products.ProductID = [Order Details].ProductID)
join Categories on (Categories.CategoryID = Products.CategoryID)
order by CategoryName, OrderDate

use northwind
select Orders.OrderDate, [Order Details].UnitPrice*Quantity as 'SaleListPrice',
Categories.CategoryName
from Orders, [Order Details],Products,Categories
where [Order Details].OrderID = Orders.OrderID and Products.ProductID = [Order Details].ProductID and Categories.CategoryID = Products.CategoryID
order by CategoryName, OrderDate



Select convert(varchar, OrderDate,101) as OrderDate, OD.UnitPrice*Quantity as 'SaleListPrice',C.CategoryName
From Orders as O
join [order Details] as OD on O.OrderID = OD.OrderID
join Products as P on OD.ProductID = P.ProductID
join Categories as C on P.CategoryID = C.CategoryID
group by O.OrderDate, C.CategoryName,OD.UnitPrice,OD.Quantity
order by c.CategoryName, O.OrderDate

select format(o.orderdate, 'd'), od.unitprice*quantity as 'salelistprice', c.categoryname
from orders o, [order details] od, categories c, products p
where o.orderid = od.orderid and p.productid=od.productid and c.categoryid = p.categoryid
order by categoryname;

-----------------------------------------------------------------------------------------------------------------------------------------------------------
use northwind
select  convert(varchar, OrderDate,101) as Orderdate, [Order Details].UnitPrice*Quantity as 'SaleListPrice',Categories.CategoryName
from Orders, [Order Details],Products,Categories
where [Order Details].OrderID = Orders.OrderID and Products.ProductID = [Order Details].ProductID and Categories.CategoryID = Products.CategoryID
order by CategoryName, [order details].productid




select format(o.orderdate, 'dd-MMM-yy') as 'order date',od.unitprice*quantity as 'salelistprice', c.categoryname as 'category name'
from orders o, [order details] od, categories c, products p
where o.orderid = od.orderid and p.productid=od.productid and c.categoryid = p.categoryid
order by categoryname, od.productid;
