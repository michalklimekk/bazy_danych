-- Tworzenie bazy danych
CREATE DATABASE newDB;
GO

-- U¿ywanie nowo utworzonej bazy danych
USE newDB;
GO

-- Tworzenie tabeli Accounts
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountName VARCHAR(50) NOT NULL
);
GO

-- Tworzenie tabeli AccountNumbers
CREATE TABLE AccountNumbers (
    AccountID INT PRIMARY KEY,
    AccountNumber VARCHAR(26) NOT NULL,
    Bank VARCHAR(50) NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);
GO

-- Tworzenie tabeli TransactionCategory
CREATE TABLE TransactionCategory (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);
GO

-- Tworzenie tabeli Transaction
CREATE TABLE [Transaction] (
    TransactionID INT PRIMARY KEY,
    Amount MONEY NOT NULL,
    TransactionDate DATETIMEOFFSET NOT NULL,
    Details NVARCHAR(MAX) NOT NULL
);
GO

-- Tworzenie tabeli TransactionAccountLink
CREATE TABLE TransactionAccountLink (
    LinkID INT PRIMARY KEY,
    TransactionID INT,
    AccountID INT,
    FOREIGN KEY (TransactionID) REFERENCES [Transaction](TransactionID),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);
GO

-- Tworzenie tabeli TransactionCategoryLink
CREATE TABLE TransactionCategoryLink (
    LinkID INT PRIMARY KEY,
    TransactionID INT,
    CategoryID INT,
    FOREIGN KEY (TransactionID) REFERENCES [Transaction](TransactionID),
    FOREIGN KEY (CategoryID) REFERENCES TransactionCategory(CategoryID)
);
GO
