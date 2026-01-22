USE MiniEcommerceDB;
GO

CREATE TABLE Customers (
CustomerId INT IDENTITY PRIMARY KEY,
Name NVARCHAR(100),
Email NVARCHAR(100) UNIQUE
);

CREATE TABLE Categories (
CategoryId INT IDENTITY PRIMARY KEY,
Name NVARCHAR(100)
);

CREATE TABLE Products (
ProductId INT IDENTITY PRIMARY KEY,
CategoryId INT,
Name NVARCHAR(100),
Price DECIMAL(10,2),
FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);

CREATE TABLE Orders (
OrderId INT IDENTITY PRIMARY KEY,
CustomerId INT,
OrderDate DATE,
FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

-- Kopplingstabell (många-till-många)
CREATE TABLE OrderItems (
OrderItemId INT IDENTITY PRIMARY KEY,
OrderId INT,
ProductId INT,
Quantity INT,
FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);

CREATE TABLE Payments (
PaymentId INT IDENTITY PRIMARY KEY,
OrderId INT,
Amount DECIMAL(10,2),
IsPaid BIT,
FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);
