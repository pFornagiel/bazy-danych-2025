# Generator Danych

Plik  README zawiera instrukcje dotyczące korzystania z narzędzia do generowania danych znajdującego się w katalogu `bazy-danych-2025/util/data`. Generator danych jest zaprojektowany do tworzenia przykładowych zestawów danych do celów testowych i rozwojowych.

## Wymagania wstępne
- `Python 3.6` lub nowszy
- Wymagane pakiety Pythona (wymienione w `requirements.txt`)

## Instalacja
2. Przejdź do katalogu `util/data`:
  ```sh
  cd bazy-danych-2025/util/data
  ```
3. Zainstaluj wymagane pakiety:
  ```sh
  pip install -r requirements.txt
  ```

## Użycie
Aby wygenerować dane, uruchom skrypt `generate.py` będąc w katalogu `bazy-danych-2025/util/data`.

```sh
py generate.py
```

Wygenerowane polecenia `INSERT` oraz wywołania procedur wstawiających dane w formacie T-SQL będą się znajdowały w katalogu `bazy-danych-2025/util/data/sql`.

W katalogu `bazy-danych-2025/util/data/sql` znajdują się dodatkowo pliki:
- `create_database.sql` - polecenie pozwalające utworzyć tabelę bazy danych wraz z warunkami integralności
- `reset_database.sql` - polecenie pozwalające na usunięcie dotychczasowych danych we wszystkich tabelach bazy danych oraz reset kluczy głównych każdej z tabel