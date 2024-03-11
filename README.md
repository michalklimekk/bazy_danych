Projekt wykonany na laboratorium Bazy Danych (Politechnika Warszawska - wydział MiNI).
https://cdn.fbsbx.com/v/t59.2708-21/427978874_3682497702020085_8687202406197145474_n.xlsx/Stat_dane_kolokwium2024_1.xlsx?_nc_cat=101&ccb=1-7&_nc_sid=2b0e22&_nc_ohc=XfUzoN57574AX_hI-3Q&_nc_ht=cdn.fbsbx.com&oh=03_AdTkKQPZ9gp2l2LL4GrytacLFoDNePOUl2S4yjG19m5AVg&oe=65F09521&dl=1
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

