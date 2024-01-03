-- Poni�sza kwerenda zwi�ksza kwot� w transakcji o 10% dla wszystkich transakcji, 
-- kt�re s� nagrodami (kategoria 'Nagroda').

-- Procedura:
-- Rozpocz�cie transakcji.
-- Wybieranie wszystkich TransactionID dla transakcji z kategorii 'Nagroda' i 
-- zapisanie do tabeli tymczasowej @RewardTransactions.
-- Zwi�kszenie kwoty o 10% dla wszystkich transakcji o identyfikatorach znajduj�cych 
-- si� w tabeli tymczasowej @RewardTransactions.
-- Zamkni�cie transakcji za pomoc� COMMIT.


BEGIN TRANSACTION;

DECLARE @RewardTransactions TABLE (
    TransactionID INT
);

INSERT INTO @RewardTransactions (TransactionID)
SELECT TransactionID
FROM TransactionCategoryLink
WHERE CategoryID = (SELECT CategoryID FROM TransactionCategory WHERE CategoryName = 'Nagroda');

UPDATE [Transaction]
SET Amount = Amount * 1.1
WHERE TransactionID IN (SELECT TransactionID FROM @RewardTransactions);

COMMIT;
