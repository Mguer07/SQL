/* number 1*/

use northwind
select CompanyName, ProductName, CategoryName
from Suppliers,Products,Categories
where Products.CategoryID = Categories.CategoryID and Suppliers.SupplierID =Products.SupplierID
order by CategoryName


use northwind
select CompanyName, ProductName, CategoryName
from Suppliers,Products,Categories
where Suppliers.SupplierID =Products.SupplierID and Products.CategoryID = Categories.CategoryID
order by CategoryName




use northwind
select CompanyName, ProductName, CategoryName
from Suppliers
join Products
on Suppliers.SupplierID = Products.SupplierID
join Categories
on Products.CategoryID = Categories.CategoryID
order by CategoryName


