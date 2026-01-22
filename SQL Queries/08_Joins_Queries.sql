USE MiniEcommerceDB;
GO

-- JOIN: Customers + Orders
SELECT
c.CustomerId,
c.Name,
o.OrderId,
o.OrderDate
FROM Customers c
JOIN Orders o ON c.CustomerId = o.CustomerId;

-- JOIN: Orders + OrderItems + Products (3 tabeller)
SELECT
o.OrderId,
p.Name AS ProductName,
oi.Quantity,
p.Price
FROM Orders o
JOIN OrderItems oi ON o.OrderId = oi.OrderId
JOIN Products p ON oi.ProductId = p.ProductId;

-- JOIN: Orders + Payments
SELECT
o.OrderId,
p.Amount,
p.IsPaid
FROM Orders o
JOIN Payments p ON o.OrderId = p.OrderId;
