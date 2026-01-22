USE MiniEcommerceDB;
GO

-- Insert ny kund
INSERT INTO Customers (Name, Email)
VALUES ('Sara Nilsson', 'sara@test.se');

-- Insert ny order till kunden (CustomerId = 3 eftersom den nya blir tredje)
INSERT INTO Orders (CustomerId, OrderDate)
VALUES (3, GETDATE());

-- Lägg till en orderrad (OrderId = 2 om det finns en order sedan seed)
INSERT INTO OrderItems (OrderId, ProductId, Quantity)
VALUES (2, 1, 1);

-- Lägg till betalning till ordern
INSERT INTO Payments (OrderId, Amount, IsPaid)
VALUES (2, 499.00, 1);
