CREATE INDEX index_TransactionDate ON [Transaction] (TransactionDate);

CREATE INDEX index_AccountName ON Accounts (AccountName);

CREATE INDEX index_Amount ON [Transaction] (Amount);

CREATE INDEX index_CategoryName ON TransactionCategory (CategoryName);

CREATE INDEX index_TransactionCategoryLink ON TransactionCategoryLink (TransactionID, CategoryID);

CREATE INDEX index_AccountNumber ON AccountNumbers (AccountNumber);

CREATE INDEX index_TransactionAccountLink ON TransactionAccountLink (TransactionID, AccountID);

CREATE INDEX index_TransactionCategoryLinkk ON TransactionCategoryLink (TransactionID, CategoryID);  