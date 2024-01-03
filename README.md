Projekt wykonany na laboratorium Bazy Danych (Politechnika Warszawska - wydział MiNI).

# Opis Repozytorium

## Baza Danych

Repozytorium zawiera skrypty SQL do utworzenia bazy danych oraz związane z nią operacje. Struktura bazy obejmuje tabele Transaction, Accounts, AccountsNumbers, TransactionCategory, TransactionAccountLink oraz TransactionCategoryLink.

### Tabele:

1. **Transaction:** Zawiera informacje o transakcjach, takie jak identyfikator transakcji, kwota, data transakcji i szczegóły w formacie JSON.

2. **Accounts:** Przechowuje informacje o kontach, takie jak identyfikator konta i nazwa właściciela konta.

3. **AccountsNumbers:** Zawiera numery kont i informacje o bankach przypisanych do tych kont.

4. **TransactionCategory:** Definiuje kategorie transakcji, takie jak Wyplata, Premia, Nagroda, Zadoscuczynienie.

5. **TransactionAccountLink:** Ustanawia relacje między transakcjami a kontami.

6. **TransactionCategoryLink:** Ustanawia relacje między transakcjami a kategoriami.

## Skrypty

### create_database.sql

Tworzy bazę danych o nazwie MyDatabase i strukturze zgodnej z opisem powyżej.

### fake_data.sql

Wstawia przykładowe dane do utworzonej bazy danych.

### indexes.sql

Tworzy indeksy w celu optymalizacji wydajności zapytań dla często używanych kolumn.

### przetwarzanie danych.sql

Skrypt zawiera kwerendę zwiększającą kwotę w transakcji o 10% dla wszystkich transakcji, które są nagrodami (kategoria 'Nagroda').

### procedura.sql

Skrypt tworzy procedurę, która zwraca listę transakcji dla określonego konta.  

