-- Sample Customers
INSERT INTO Customers VALUES (1, 'John', 'Doe', 'john@example.com', '1234567890', 'USA');
INSERT INTO Customers VALUES (2, 'Jane', 'Smith', 'jane@example.com', '9876543210', 'Canada');

-- Sample Products
INSERT INTO Products VALUES (1, 'Laptop', 75000, 10, 'Electronics');
INSERT INTO Products VALUES (2, 'Headphones', 2000, 25, 'Electronics');

-- Sample Orders
INSERT INTO Orders VALUES (1, 1, '2024-06-01', 77000, 'Shipped');
INSERT INTO Orders VALUES (2, 2, '2024-06-03', 2000, 'Processing');

-- Sample OrderDetails
INSERT INTO OrderDetails VALUES (1, 1, 1, 1, 75000);
INSERT INTO OrderDetails VALUES (2, 2, 2, 1, 2000);

-- Sample Payments
INSERT INTO Payments VALUES (1, 1, '2024-06-01', 77000, 'Credit Card');
INSERT INTO Payments VALUES (2, 2, '2024-06-03', 2000, 'PayPal');