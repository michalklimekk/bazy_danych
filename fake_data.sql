-- Wstawianie danych do tabeli Accounts
INSERT INTO Accounts (AccountID, AccountName)
VALUES
(1, 'Jan Kowalski'),
(2, 'Pawel Kucharski'),
(3, 'Anna Piekarska'),
(4, 'Magdalena Funia'),
(5, 'Tomasz Kot');

-- Wstawianie danych do tabeli AccountNumbers
INSERT INTO AccountNumbers (AccountID, AccountNumber, Bank)
VALUES
(1, '12345678901234567890123456', 'Santander'),
(2, '98765432109876543210987654', 'mBank'),
(3, '56789012345678901234567890', 'PKO'),
(4, '09876543210987654321098765', 'Millenium'),
(5, '34567890123456789012345678', 'PeKaO');

-- Wstawianie danych do tabeli TransactionCategory
INSERT INTO TransactionCategory (CategoryID, CategoryName)
VALUES
(1, 'Wyplata'),
(2, 'Premia'),
(3, 'Nagroda'),
(4, 'Zadoscuczynienie');


-- Wstawianie danych do tabeli Transaction
INSERT INTO [Transaction] (TransactionID, Amount, TransactionDate, Details)
VALUES
(1, 1000.00, '2024-01-01T12:00:00-05:00', 'Wyp³ata za prace'),
(2, 500.00, '2024-01-02T14:30:00-05:00', 'Premia za osi¹gniêcia'),
(3, 200.00, '2024-01-03T10:45:00-05:00', 'Nagroda za wydajnoœæ'),
(4, 300.00, '2024-01-04T08:15:00-05:00', 'Zadoscuczynienie'),
(5, 800.00, '2024-01-05T16:20:00-05:00', 'Wyp³ata'),
(6, 300.00, '2024-01-06T09:30:00-05:00', 'Premia za efektywnoœæ'),
(7, 150.00, '2024-01-07T13:45:00-05:00', 'Nagroda za inicjatywê'),
(8, 250.00, '2024-01-08T11:00:00-05:00', 'Zadoscuczynienie'),
(9, 1200.00, '2024-01-09T17:15:00-05:00', 'Nagroda za specjalne zadanie');

-- Wstawianie danych do tabeli TransactionCategoryLink
INSERT INTO TransactionCategoryLink (LinkID, TransactionID, CategoryID)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 1),
(6, 6, 2),
(7, 7, 3),
(8, 8, 4),
(9, 9, 3);

-- Wstawianie danych do tabeli TransactionAccountLink
INSERT INTO TransactionAccountLink (LinkID, TransactionID, AccountID)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 1, 5),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4);