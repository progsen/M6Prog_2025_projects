-- ===========================
-- ORDER DATABASE TABLES
-- ===========================

CREATE TABLE Order_Customers (
    CustomerID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Order_Products (
    ProductID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Order_Orders (
    OrderID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT UNSIGNED NOT NULL,
    OrderDate DATETIME NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Order_Customers(CustomerID)
);


CREATE TABLE Order_OrderItems (
    OrderItemID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    OrderID INT UNSIGNED NOT NULL,
    ProductID INT UNSIGNED NOT NULL,
    Quantity INT UNSIGNED NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Order_Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Order_Products(ProductID)
);
-- Base Data with IDs
INSERT INTO Order_Customers (CustomerID, Name, Email) VALUES
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com');

INSERT INTO Order_Products (ProductID, Name, Price) VALUES
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Headphones', 150.00),
(4, 'Tablet', 600.00),
(5, 'Monitor', 300.00);

-- ===========================
-- BANKING DATABASE TABLES
-- ===========================

CREATE TABLE Bank_Customers (
    CustomerID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Bank_Accounts (
    AccountID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT UNSIGNED NOT NULL,
    AccountNumber VARCHAR(20) UNIQUE NOT NULL,
    Balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    FOREIGN KEY (CustomerID) REFERENCES Bank_Customers(CustomerID)
);

CREATE TABLE Bank_Transactions (
    TransactionID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    AccountID INT UNSIGNED NOT NULL,
    Amount DECIMAL(15,2) NOT NULL,
    TransactionDate DATETIME NOT NULL,
    Type ENUM('DEPOSIT','WITHDRAWAL','TRANSFER') NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Bank_Accounts(AccountID)
);


-- Base Data with IDs
INSERT INTO Bank_Customers (CustomerID, Name, Email) VALUES
(1, 'Diana Prince', 'diana@example.com'),
(2, 'Edward Norton', 'edward@example.com'),
(3, 'Fiona Apple', 'fiona@example.com');

INSERT INTO Bank_Accounts (AccountID, CustomerID, AccountNumber, Balance) VALUES
(1, 1, 'ACC1001', 5000.00),
(2, 1, 'ACC1002', 1500.00),
(3, 2, 'ACC2001', 3000.00),
(4, 3, 'ACC3001', 7500.00);


-- ===========================
-- EVENT DATABASE TABLES
-- ===========================

CREATE TABLE Event_Users (
    UserID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Event_Events (
    EventID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    EventDate DATETIME NOT NULL,
    Location VARCHAR(200) NOT NULL
);

CREATE TABLE Event_Tickets (
    TicketID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    EventID INT UNSIGNED NOT NULL,
    UserID INT UNSIGNED NOT NULL,
    PurchaseDate DATETIME NOT NULL,
    FOREIGN KEY (EventID) REFERENCES Event_Events(EventID),
    FOREIGN KEY (UserID) REFERENCES Event_Users(UserID)
);

CREATE TABLE Event_Payments (
    PaymentID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TicketID INT UNSIGNED NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATETIME NOT NULL,
    FOREIGN KEY (TicketID) REFERENCES Event_Tickets(TicketID)
);

-- Base Data with IDs
INSERT INTO Event_Users (UserID, Name, Email) VALUES
(1, 'George Miller', 'george@example.com'),
(2, 'Hannah Lee', 'hannah@example.com'),
(3, 'Ian Curtis', 'ian@example.com');

INSERT INTO Event_Events (EventID, Title, EventDate, Location) VALUES
(1, 'Rock Concert', '2025-12-15 20:00:00', 'Amsterdam Arena'),
(2, 'Tech Conference', '2026-01-10 09:00:00', 'RAI Convention Center'),
(3, 'Art Exhibition', '2026-02-05 10:00:00', 'Van Gogh Museum');