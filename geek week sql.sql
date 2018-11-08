use northwind
select lastname,convert(varchar, OrderDate,101) as Orderdate, D.UnitPrice*Quantity as 'SaleListPrice',Categories.CategoryName,d.discount*d.unitprice*quantity salediscount,format(d.discount,'0%') disco9unt
from  Orders o,employees e, [Order Details] d,Products,Categories 
where o.employeeid=e.employeeid and D.OrderID = o.OrderID and Products.ProductID = D.ProductID and Categories.CategoryID = Products.CategoryID
order by CategoryName, d.productid
