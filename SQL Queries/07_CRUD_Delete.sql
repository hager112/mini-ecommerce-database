USE MiniEcommerceDB;
GO

-- Ta bort orderrader först pga foreign key
DELETE FROM OrderItems
WHERE OrderId = 2;

-- Ta bort betalningen
DELETE FROM Payments
WHERE OrderId = 2;

-- Ta bort ordern
DELETE FROM Orders
WHERE OrderId = 2;
