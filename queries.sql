-- Show all customers
SELECT * FROM Customers;

-- Show all products in Electronics
SELECT * FROM Products WHERE Category = 'Electronics';

-- List orders with customer names
SELECT Orders.OrderID, Customers.FirstName, Customers.LastName, Orders.TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-- Update stock after a sale
UPDATE Products SET StockQuantity = StockQuantity - 1 WHERE ProductID = 1;

-- Delete an order
DELETE FROM Orders WHERE OrderID = 2;