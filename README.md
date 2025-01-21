# Projekt: System Bazodanowy Uczelni
## Podstawy Baz Danych 2025
### AGH, Wydział Informatyki, Informatyka
Projekt został stworzony na potrzeby przedmiotu "Podstawy Baz Danych" realizowanego w roku akademickim 2025.

Autorzy:
- Dariusz Marecik [[FloudMe]](https://github.com/FloudMe77)
- Filip Węgrzyn [[wegorz13]](https://github.com/wegorz13)
- Paweł Fornagiel [[pFornagiel]](https://github.com/pFornagiel)

### Zadanie

Pełna treść realizowanego zadania dostępna jest [tutaj](https://github.com/pFornagiel/bazy-danych-2025/blob/main/BD_2024.pdf).

Zadanie, w przybliżeniu, polegało na zaprojektowaniu i wdrożeniu systemu bazodanowego dla firmy oferującej różnego rodzaju formy kształcenia: studia, kursy oraz webinary. Model świadczenia usług przez firmę jest problematyczny ze względu na niejednolitą formułę realizacji form kształcenia.

Wymagane elementy systemu, które zostały przez nas zaimplementowane to obsługa:

- użytkowników - wraz z obsługą ich obecności, koszyków, zakupów,
- pracowników - wraz z wyznaczeniem ról i odpowiednich uprawnień,
- webinarów – jednorazowych, nagrywanych spotkań online,
- kursów – zbiorów spotkań w trzech różnych formach: stacjonarne, online synchroniczne, online asynchroniczne (kurs może obejmować więcej niż jeden rodzaj spotkań),
- studiów – zestawów przedmiotów składających się z zajęć studyjnych, które mogą odbywać się w tych samych formach, co kursy,
- tworzenia i zarządzenia zamówieniami na wyżej wymienione produkty edukacyjne

### Schemat Bazy Danych
![schemat bazy](schemat.png)

### Struktura repozytorium
Repozytorium projektu składa się z następujących katalogów:
- `views` - zawierającym definicje widoków
- `procedures` - zawierający definicje procedur
- `triggers` - zawierający definicje wyzwalaczy bazodanowych
- `functions` - zawierający definicje funkcji bazodanowych
- `indexes` - zawierający definicje indeksów
- `demo` - zawierający polecenia używane podczas przykładowej demonstracji danych
- `random_procedures` - zawierający procedury generujące losowe dane przykładowe
- `roles_and_permissions` - zawierający definicje ról i uprawnień
- `util` - zawierający katalogi ze skryptami pomocniczymi, tj.:
  - `data` - zawierający skrypty pozwalające na generowanie danych testowych w tabelach
  - `doc_generator` - zawierający generator prostej wersji dokumentacji bazując na pliku SQL z poleceniami tworzącymi bazę danych w formacie T-SQL eksportowanym przez narzędzie _Vertabelo_.