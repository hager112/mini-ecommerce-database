USE MiniEcommerceDB;
GO

-- Uppdatera betalning till betald
UPDATE Payments
SET IsPaid = 1
WHERE PaymentId = 1;

-- Uppdatera pris på en produkt
UPDATE Products
SET Price = 179.00
WHERE ProductId = 2;
