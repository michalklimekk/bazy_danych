-- procedura, która zwraca listê transakcji dla okreœlonego konta

CREATE PROCEDURE GetTransactionsForAccount
    @AccountName VARCHAR(50)
AS
BEGIN
    SELECT
        t.TransactionID,
        t.Amount,
        t.TransactionDate,
        t.Details
    FROM
        [Transaction] t
    INNER JOIN
        TransactionAccountLink tal ON t.TransactionID = tal.TransactionID
    INNER JOIN
        Accounts a ON tal.AccountID = a.AccountID
    WHERE
        a.AccountName = @AccountName;
END;
