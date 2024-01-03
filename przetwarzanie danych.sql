-- Poni¿sza kwerenda zwiêksza kwotê w transakcji o 10% dla wszystkich transakcji, 
-- które s¹ nagrodami (kategoria 'Nagroda').

-- Procedura:
-- Rozpoczêcie transakcji.
-- Wybieranie wszystkich TransactionID dla transakcji z kategorii 'Nagroda' i 
-- zapisanie do tabeli tymczasowej @RewardTransactions.
-- Zwiêkszenie kwoty o 10% dla wszystkich transakcji o identyfikatorach znajduj¹cych 
-- siê w tabeli tymczasowej @RewardTransactions.
-- Zamkniêcie transakcji za pomoc¹ COMMIT.


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
