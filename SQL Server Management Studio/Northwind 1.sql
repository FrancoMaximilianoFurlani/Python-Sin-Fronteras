select * from Products;

select  sum(Price) as promedio 
from Products
where ProductName like 'C%';


select  sum(Price) as promedio 
from Products;
--where ProductName like 'C%';
use Northwind

-- preguntar a tefii como 
select  products.ProductName, Products.SupplierID  
from Products
inner join Suppliers on Products.SupplierID = Suppliers.SupplierID
where SupplierName is not null
group by Products.SupplierID, products.ProductName;


SELECT Products.ProductID,
       Products.ProductName,
       COUNT(*) AS TotalQuantity
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE SupplierName IS NOT NULL
GROUP BY Products.ProductID, Products.ProductName;



SELECT Products.ProductID,
       COUNT(*) AS TotalQuantity
--       AVG(Products.UnitPrice) AS AveragePrice
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE SupplierName IS NOT NULL
GROUP BY Products.ProductID;


SELECT Suppliers.SupplierID,
       Suppliers.SupplierName,
       COUNT(Products.ProductID) AS TotalProducts
FROM Suppliers
INNER JOIN Products ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierName IS NOT NULL
GROUP BY Suppliers.SupplierID, Suppliers.SupplierName;




select Employees.EmployeeID, OrderDate, CustomerName,ShipperName,Phone, OrderDetails.OrderDetailID
from Employees
inner join Orders on Employees.EmployeeID = Orders.EmployeeID
inner join Customers on orders.CustomerID = Customers.CustomerID
inner join Shippers on orders.ShipperID = Shippers.ShipperID
inner join OrderDetails on Orders.OrderID = OrderDetails.OrderID
order by Employees.EmployeeID
