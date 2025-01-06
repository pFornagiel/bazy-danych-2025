---
# Podstawy baz danych

**Dzień i godzina zajęć**: Środa 15:00

**Nr zespołu**: 2

**Autorzy:** Dariusz Marecik, Filip Węgrzyn, Paweł Fornagiel

**Link do repozytorium git**: https://github.com/pFornagiel/bazy-danych-2025

---

### Założenia dotyczące projektu:

- W zakres studiów wchodzą pojedyńcze przedmioty (studium), które mają przypisane spotkania

---

# 1. Wymagania i funkcje systemu

# Opis Funkcjonalności Systemu

## Funkcje Systemu

- Weryfikacja limitu zapisanych osób i blokowanie jego przekroczenia
- Blokowanie zapisu / dostępu do treści po upływie terminu ważności
- Blokowanie możliwości zapisania się na te same zajęcia wiele razy

## Użytkownicy

- Studenci (użytkownicy zalogowani)
- Goście (użytkownicy niezalogowani)
- Prowadzący zajęcia
- Dyrektor Szkoły
- Administrator zasobów
- Dziekanat
- Tłumacz

## Funkcje poszczególnych użytkowników

### Studenci (użytkownicy zalogowani, rozszerzenie możliwości gości)

- możliwość zapisania się na kurs
- zapis na praktyki
- usunięcie konta
- dodanie i usunięcie adresu korespondencyjnego
- wyświetlenie wykazu zajęć w których brał udział / obecności
- wyświetlenie frekwencji / stopnia zaliczenia dla poszczególnych zajęć
- wyświetlenie dostępnych kursów / webinarów / studiów
- wyświetlanie linków dostępu do udostępnionych zasobów
- dodanie, usunięcie i przegląd elementów w koszyku
- stworzenie zamówienia
- opłacenie zamówienia

### Goście (użytkownicy niezalogowani)

- dostęp do wybranych webinarów
- przegląd dostępnych webinarów / studiów / kursów
- założenie konta

### Prowadzący zajęcia

- modyfikacja terminu zajęć
- modyfikacja udostępnionych zasobów
- sprawdzanie obecności dla każdych zajęć
- wyświetlenie wykazu prowadzonych zajęć

### Administrator zasobów

- dodawanie / usuwanie webinarów, kursów i studiów
- dodawanie / usuwanie materiałów

### Dyrektor

- dodawanie / usuwanie pracowników
- modyfikacja dostępu do kursu
- modyfikacja opłat za kurs
- modyfikacja czasu na dokonanie płatności dla danej osoby
- przegląd wszelkich danych dotyczących realizowanych zajęć

### Dziekanat

- tworzenie dyplomów potwierdzających ukończenie kursu / studium
- dodawanie / modyfikacja praktyk
- modyfikacja webinarów / kursów / studiów / przedmiotów
- dodawanie webinarów / kursów / studiów / przedmiotów
- dodawanie / usuwanie tłumacza do wybranych przedmiotów
- tworzenie sylabusu
- generowanie harmonogramu
- generowanie danych dotyczących realizowanych zajęć
- wyświetlenie zatrudnionych pracowników
- wyświetlenie studentów przypisanych do danego zasobu wraz z limitami zasobu
- wyświetlenie danych dotyczących wybranych form zajęć
- wykrywanie i wyświetlanie kolizji czasowych studentów
- Raportowanie:
  - Tworzenie raportu liczby zapisanych osób na przyszłe wydarzenia wraz z informacjami o wydarzeniach
  - Tworzenie raportu dotyczącego frekwencji na zakończonych wydarzeniach
  - Tworzenie raportu dotyczącego osób, które skorzystały z usług, ale nie uiściły opłat
  - Tworzenie raportów finansowych
  - Tworzenie list obecności dla poszczególnych form zajęć
  - Tworzenie list kolizji czasowych wśród użytkowników

### Tłumacz

- Dostęp do zasobów poszczególnych kursów / studiów i webinarów
- Dodawanie przetłumaczonych zasobów do kursów /studiów / webinarów

# Schemat bazy danych

![Opis alternatywny](schemat.png)

# Opis tabel

## Kategoria USERS

### Tabela USERS

| Column Name | Data Type    | Properties  |
| ----------- | ------------ | ----------- |
| user_id     | int          | Primary Key |
| username    | varchar(30)  |             |
| first_name  | nvarchar(30) |             |
| last_name   | nvarchar(30) |             |
| email       | varchar(50)  |             |
| phone       | varchar(9)   |             |

Zawiera podstawowe informacje o każdym użytkowniku bazy.

- user_id int - klucz główny, identifikuje użytkownika

- username varchar(30) - nazwa użytkownika w bazie danych

- first_name nvarchar(30) - imię użytkownika

- last_name nvarchar(30) - nazwisko użytkownika

- email varchar(50) - email użytkownika

  - warunek: (mail LIKE '%\_@%.%')

- phone varchar(9) nullable - numer telefonu użytkownika
  - warunek: LEN(Phone) = 15 AND ISNUMERIC(Phone) = 1

```sql
-- Table: USERS
CREATE TABLE USERS (
    user_id int  NOT NULL IDENTITY,
    username varchar(30)  NOT NULL,
    first_name nvarchar(30)  NOT NULL,
    last_name nvarchar(30)  NOT NULL,
    email varchar(50)  NOT NULL CHECK (mail LIKE '%_@%.%'),
    phone varchar(9)  NULL CHECK (LEN(Phone) = 9 AND ISNUMERIC(Phone) = 1),
    CONSTRAINT unique_email UNIQUE (email),
    CONSTRAINT unique_phone UNIQUE (phone),
    CONSTRAINT USERS_pk PRIMARY KEY  (user_id)
);
```

### Tabela STUDENTS

| Column Name | Data Type   | Properties                 |
| ----------- | ----------- | -------------------------- |
| student_id  | int         | Primary Key<br>Foreign Key |
| street      | varchar(30) |                            |
| city        | varchar(30) |                            |
| postal_code | varchar(30) |                            |
| country_id  | varchar(30) | Foreign Key                |

Zawiera infromacje specyficzne dla studenta

- _student_id_ int - klucz główny, klucz obcy, identyfikuje studenta

- street varchar(30) - ulica, na której mieszka studenta

- city varchar(30) - miasto, w którym mieszka studenta

- postal_code varchar(30) - kod pocztowy studenta

- country_id int - klucz obcy, identyfikator pochodzenia studenta

```sql
-- Table: STUDENTS
CREATE TABLE STUDENTS (
   student_id int  NOT NULL,
   street varchar(30)  NOT NULL,
   city varchar(30)  NOT NULL,
   postal_code varchar(30)  NOT NULL,
   country varchar(30)  NOT NULL,
   CONSTRAINT STUDENTS_pk PRIMARY KEY  (student_id)
);
```

### Tabela EMPLOYEES

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| emploee_id  | int       | Primary Key<br>Foreign Key |
| type_id     | int       | Foreign Key                |
| hire_date   | date      |                            |
| birth_date  | date      |                            |

Zawiera szczególne informacje dla pracowników (dyrektora, pracownika dziekanatu, nauczyciela, tłumacza)

- _emploee_id_ int - klucz główny, klucz obcy, identyfikator pracownika

- type_id int - sklucz obcy, typ pracownika (opisany poniżej)

- hire_date date nullable - data zatrudnienia

  - DEFAULT current_date

- birth_date date nullable - data urodzin pracownika
  - DEFAULT current_date

```sql
-- Table: EMPLOYEES
CREATE TABLE EMPLOYEES (
    emploee_id int  NOT NULL,
    type_id int  NOT NULL,
    hire_date date  NULL DEFAULT current_date,
    birth_date date  NULL DEFAULT current_date,
    CONSTRAINT EMPLOYEES_pk PRIMARY KEY  (emploee_id)
);
```

### Tabela EMPLOYEES_TYPE

| Column Name | Data Type   | Properties  |
| ----------- | ----------- | ----------- |
| type_id     | int         | Primary Key |
| type_name   | varchar(30) |             |

Zawiera opis typów pracowników

- _type_id_ int - klucz główny, typ pracownika <br>
  1 - headmaster <br>
  2 - administration worker <br>
  3 - tutor <br>
  4 - translator <br>
- type_name varchar(30) - nazwa pełnionej funkcji

```sql
-- Table: EMPLOYEE_TYPES
CREATE TABLE EMPLOYEE_TYPES (
    type_id int  NOT NULL IDENTITY,
    type_name varchar(30)  NOT NULL,
    CONSTRAINT EMPLOYEE_TYPES_pk PRIMARY KEY  (type_id)
);
```

### Tabela COUNTRIES

| Column Name  | Data Type    | Properties  |
| ------------ | ------------ | ----------- |
| country_id   | int          | Primary Key |
| country_name | nvarchar(30) |             |

Tabela słownikowa, przechowująca nazwy znanych państw, z których pocodzą studenci

- country_id int - klucz główny, identyfikator państwa
- country_name nvarchar(30) - nazwa państwa

```sql
-- Table: COUNTRIES
CREATE TABLE COUNTRIES (
    country_id int  NOT NULL,
    country_name nvarchar(30)  NOT NULL,
    CONSTRAINT COUNTRIES_pk PRIMARY KEY  (country_id)
);
```

## Kategoria Products

### Tabela Products

| Column Name     | Data Type | Properties                 |
| --------------- | --------- | -------------------------- |
| product_id      | int       | Primary Key<br>Foreign Key |
| type_id         | int       | Foreign Key                |
| price           | money     |                            |
| total_vacancies | int       |                            |
| release         | date      |                            |

Zawiera informacje o każdym produkcie w ofercie. Produkt jest rozumiany
jako każda z form przeprowadzania zajęć.

- product*id* int - klucz główny, identyfikuje produkt

- type_id int - klucz obcy, numer kategorii produktu

- price money nullable - cena za produkt

  - warunek: prive >= 0
  - DEFAULT 1000

- total_vacancies int - ilość wolnych miejsc możliwych do zakupu na dane zajęcia

  - warunek: vacancies >= 0

- release date - data udostępnienia produktu do zakupu

```sql
-- Table: PRODUCTS
CREATE TABLE PRODUCTS (
    product_id int  NOT NULL,
    type_id int  NOT NULL,
    price money  NULL DEFAULT 1000 CHECK (price>=0),
    total_vacancies int  NOT NULL DEFAULT 30 CHECK (total_amount>0),
    release date  NOT NULL,
    CONSTRAINT product_id PRIMARY KEY  (product_id)
);
```

### Tabela PRODUCTS_DETAILS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| student_id  | int       | Primary Key<br>Foreign Key |
| product_id  | int       | Primary Key<br>Foreign Key |
| order_id    | int       | Foreign Key                |

Zawiera informacje o studentach zapisanych na dane zajęcia oraz o numerze zamówienia z jakiego został kupiony dostęp do zajęć

- student_id int - wchodzi w skład klucza głównego, klucz obcy, identyfikuje studenta
- product_id int - wchodzi w skład klucza głównego, klucz obcy, identifukuje produkt
- order_id int - klucz obcy, identifikuje zamówienie z jakiego został kupiony dostęp do zajęć

```sql
-- Table: PRODUCTS_DETAILS
CREATE TABLE PRODUCTS_DETAILS (
    student_id int  NOT NULL,
    product_id int  NOT NULL,
    order_id int  NOT NULL,
    CONSTRAINT PRODUCTS_DETAILS_pk PRIMARY KEY  (student_id,product_id)
);
```

### Tabela PRODUCT_TYPES

| Column Name | Data Type   | Properties  |
| ----------- | ----------- | ----------- |
| type_id     | int         | Primary Key |
| type_name   | varchar(30) |             |

Zawiera informacje o typach produktów

- type_id int - klucz główny, identyfikuje typ:<br>
  1- study, <br>
  2 - subject,<br>
  3 - course,<br>
  4 - webinar
- type_name varchar(30) - nazwa typu

```sql
-- Table: PRODUCT_TYPES
CREATE TABLE PRODUCT_TYPES (
    type_id int  NOT NULL IDENTITY,
    type_name varchar(30)  NOT NULL,
    CONSTRAINT PRODUCT_TYPES_pk PRIMARY KEY  (type_id)
);
```

### Tabela CART

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| student_id  | int       | Primary Key<br>Foreign Key |
| product_id  | int       | Foreign Key                |

Zawiera informacje o koszyku użytkownika

- student_id int - klucz główny, klucz obcy, identyfikator użytkownika

- product_id int - klucz główny, klucz obcy, identyfikator produktu

```sql
-- Table: CART
CREATE TABLE CART (
    student_id int  NOT NULL,
    product_id int  NOT NULL,
    CONSTRAINT CART_pk PRIMARY KEY  (student_id)
);
```

## Kategoria Orders

### Tabela ORDERS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| order_id    | int       | Primary Key<br>Foreign Key |
| student_id  | int       | Foreign Key                |
| order_date  | date      |                            |

Zawiera informacje na temat zamówienia pod danym identyfikatorem

- order_id int - klucz główny, identyfikator zamówienia

- student_id int - kluczo obcy, identyfikator studenta

- order_date datetime nullable - data złożenia zamówienia

```sql
-- Table: ORDERS
CREATE TABLE ORDERS (
    order_id int  NOT NULL IDENTITY,
    student_id int  NOT NULL,
    order_date date  NOT NULL DEFAULT actual_date,
    CONSTRAINT ORDERS_pk PRIMARY KEY  (order_id)
);
```

### Tabela FEES

| Column Name  | Data Type | Properties                 |
| ------------ | --------- | -------------------------- |
| fee_id       | int       | Primary Key<br>Foreign Key |
| due_date     | date      |                            |
| payment_date | date      |                            |
| fee_value    | money     |                            |
| type_id      | int       | Foreign Key                |
| order_id     | int       | Foreign Key                |
| product_id   | int       | Foreign Key                |

Zawiera informacje o płatności za dany produkt dołączonej do danego zamówienia

- fee_id int - klucz główny, identyfikator płatności

- due_date date - data wymagania płatności, nieuregulowanie do podanego teminu skutkuje wpisem na liste dłużników

- payment_date date nullable - data dokonania płatności

- fee_value money - cena płatności

  - warunek: fee_value >= 0

- type_id int - klucz obcy, identyfikator typu płatności

- order_id int - klucz obcy, identifikator zamówienia

- product_id int, klucz obcy, identyfikator produktu

```sql
-- Table: PAYMENTS
CREATE TABLE FEES (
    fee_id int  NOT NULL IDENTITY,
    due_date date  NOT NULL DEFAULT actual_date,
    payment_date date  NULL,
    fee_value money  NOT NULL CHECK (payment_value>=0),
    type_id int  NOT NULL,
    order_id int  NOT NULL,
    product_id int  NOT NULL,
    CONSTRAINT FEES_pk PRIMARY KEY  (fee_id)
);
```

### Tabela FEE_TYPE

| Column Name | Data Type    | Properties  |
| ----------- | ------------ | ----------- |
| type_id     | int          | Primary Key |
| type_name   | nvarchar(30) |             |

Zawiera informacje o możliwych typach płatności

- type_id int - klucz główny, identyfikator typu płatności

- type_name nvarachar(30) - nazwa typu płatności

```sql
CREATE TABLE FEE_TYPE (
    type_id int  NOT NULL,
    type_name nvarchar(30)  NOT NULL,
    CONSTRAINT FEE_TYPE_pk PRIMARY KEY  (type_id)
);
```

## Kategoria Webinars

### Tabela Webinars

| Column Name         | Data Type   | Properties                 |
| ------------------- | ----------- | -------------------------- |
| webinar_id          | int         | Primary Key<br>Foreign Key |
| tutor_id            | int         | Foreign Key                |
| translator_id       | int         | Foreign Key                |
| webinar_name        | varchar(50) |                            |
| webinar_description | text        |                            |
| meeting_url         | text        |                            |
| video_url           | text        |                            |
| webinar_duration    | time(0)     |                            |
| publish_date        | datetime    |                            |
| language_id         | int         | Foreign Key                |

Zawiera informacje specyfinczne dla każdego produktu będącego webinarem

- webinar_id int - klucz główny, klucz obcy, identifikator webinaru

- tutor_id int - klucz obcy, identifikator nauczyciela

- translator_id int nullable - klucz obcy, identifikator tłumacza

- webinar_name varchar(50) - nazwa webinaru

- webinar_description text nullable - opis webinaru

- meeting_url text nullable - link do webinaru na żywo

- video_url text nullable - link do zapisu webinaru

- webinar_duration time(0) - czas trwania webinaru

  - warunek: DurationTime > '00:00:00'

  - DEFAULT 01:30:00

- publish_date datetime - data przeprowadzenia i udostępnięnia materiałów video

- language_id int - klucz obcy, identyfikator języka, w jakim jest prowadzony Webinar
  - DEFAULT 0

```sql
-- Table: WEBINARS
CREATE TABLE WEBINARS (
   webinar_id int  NOT NULL,
   tutor_id int  NOT NULL,
   translator_id int  NULL,
   webinar_name varchar(50)  NOT NULL,
   webinar_description text  NULL,
   video_url text  NULL,
   webinar_duration time(0)  NULL DEFAULT 01:30:00 CHECK (DurationTime > '00:00:00'),
   publish_date datetime  NOT NULL,
   language varchar(50)  NOT NULL DEFAULT 'POLISH',
   CONSTRAINT WEBINARS_pk PRIMARY KEY  (webinar_id)
);
```

## Kategoria COURSES

### Tabela COURSES

| Column Name        | Data Type    | Properties                 |
| ------------------ | ------------ | -------------------------- |
| course_id          | int          | Primary Key<br>Foreign Key |
| course_name        | nvarchar(50) |                            |
| course_description | text         |                            |

Zawiera informacje o produktach, które są kursami

- course_id int - klucz główny, klucz obcy, identifikator kursu

- course_name nvarchar(50) - nazwa kursu

- course_description text nullable - opis kursu

```sql
-- Table: COURSES
CREATE TABLE COURSES (
    course_id int  NOT NULL,
    course_name nvarchar(50)  NOT NULL,
    course_description text  NULL,
    CONSTRAINT COURSES_pk PRIMARY KEY  (course_id)
);
```

### Tabela MODULES

| Column Name        | Data Type | Properties                 |
| ------------------ | --------- | -------------------------- |
| module_id          | int       | Primary Key<br>Foreign Key |
| course_id          | int       | Foreign Key                |
| tutor_id           | int       | Foreign Key                |
| module_name        | int       |                            |
| module_description | int       |                            |

Zawiera szczegółowe informacje dla każdego modułu kursu

- module_id int - klucz główny, identifikator modułu

- course_id int - klucz obcy, identifikator kursu, z którego pochodzi

- tutor_id int - klucz obcy, identifikator nauczyciela, który prowadzi dany moduł

- module_name - nazwa modułu

- module_description - opis modułu

```SQL
-- Table: MODULES
CREATE TABLE MODULES (
    module_id int  NOT NULL IDENTITY,
    course_id int  NOT NULL,
    tutor_id int  NOT NULL,
    CONSTRAINT MODULES_pk PRIMARY KEY  (module_id)
);
```

## Kategoria STUDIES

### Tabela STUDIES

| Column Name       | Data Type    | Properties                 |
| ----------------- | ------------ | -------------------------- |
| study_id          | int          | Primary Key<br>Foreign Key |
| study_name        | nvarchar(50) |                            |
| study_description | text         |                            |

Zawiera ogólne informacje o danych studiach

- study_id int - klucz główny, klucz obcy, identifikator studium

- study_name nvarchar(50) - nazwa studium

- study_description text nullable - opis studium

```sql
-- Table: STUDIES
CREATE TABLE STUDIES (
    study_id int  NOT NULL,
    study_name nvarchar(50)  NOT NULL,
    study_description text  NULL,
    CONSTRAINT STUDIES_pk PRIMARY KEY  (study_id)
);
```

### Tabela SUBJECTS

| Column Name         | Data Type   | Properties                 |
| ------------------- | ----------- | -------------------------- |
| subject_id          | int         | Primary Key<br>Foreign Key |
| study_id            | int         | Foreign Key                |
| tutor_id            | int         | Foreign Key                |
| subject_name        | varchar(50) |                            |
| subject_description | text        |                            |

Zawiera informacje szczegółowe inforamcje dotyczące przedmiotow

- subject_id int - klucz główny, klucz obcy, identifikator przedmiotu

- subject_name varchar(50) - nazwa przedmiotu

- subject_description text nullable - opis przedmiotu

- study_id int - klucz obcy, identifikator studiów, z których pochodzi przedmiot

- tutor_id int - klucz obcy, identifikator nauczyciela, który uczy dany przedmiot

```sql
-- Table: SUBJECTS
CREATE TABLE SUBJECTS (
   subject_id int  NOT NULL,
   study_id int  NOT NULL,
   tutor_id int  NOT NULL,
   subject_name varchar(50)  NOT NULL,
   subject_description text  NULL,
   CONSTRAINT SUBJECTS_pk PRIMARY KEY  (subject_id)
);
```

## Tabela SESSIONS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| session_id  | int       | Primary Key<br>Foreign Key |
| subject_id  | int       | Foreign Key                |

Zawiera informacje o poszczególnych sesjach (grupach spotkań zjazdowych)

- sessions_id int - klucz główny, klucz obcy, identyfikator sesji
- subject_id int - klucz główny, klucz obcy, identifikator przedmiotu związanego z sesją

```sql
CREATE TABLE SESSIONS (
    session_id int  NOT NULL,
    subject_id int  NOT NULL,
    CONSTRAINT SESSIONS_pk PRIMARY KEY  (session_id)
);
```

### Tabela INTERSHIPS

| Column Name   | Data Type | Properties                 |
| ------------- | --------- | -------------------------- |
| internship_id | int       | Primary Key<br>Foreign Key |
| study_id      | int       | Foreign Key                |
| start_date    | date      |                            |
| end_date      | date      |                            |

Zawiera informacje o praktykach prowadzonych na danych studiach

- internship_id - klucz główny, identifikator praktyk

- study_id int - klucz obcy, identifikator studiów

- start_date date nullable - data rozpoczęcia praktyk

- end_date date nullable - data zakończenia praktyk

```sql
-- Table: INTERSHIPS
CREATE TABLE INTERSHIPS (
    internship_id int  NOT NULL IDENTITY,
    study_id int  NOT NULL,
    start_date date  NULL,
    end_date date  NULL,
    CONSTRAINT INTERSHIPS_pk PRIMARY KEY  (internship_id)
);
```

### Tabela INTERSHIPS_DETAILS

| Column Name   | Data Type | Properties                 |
| ------------- | --------- | -------------------------- |
| internship_id | int       | Primary Key<br>Foreign Key |
| student_id    | int       | Primary Key<br>Foreign Key |
| passed        | bit       |                            |

Zawiera szczegółowe informacje na temat danych praktyk

- internship_id int - klucz główny, klucz obcy, identifikator praktyk

- student_id int - klucz główny, klucz obcy, identifikator studenta biorącego udział w praktykach

- passed bit - zaliczenie danych praktyk, <br>
  1 - student zaliczył praktyki (100% obecności), <br>
  0 - student nie zaliczył praktyk (brak 100% obecności)

```sql
-- Table: INTERSHIP_DETAILS
-- Table: INTERSHIP_DETAILS
CREATE TABLE INTERSHIP_DETAILS (
    internship_id int  NOT NULL,
    student_id int  NOT NULL,
    passed bit  NOT NULL,
    CONSTRAINT INTERSHIP_DETAILS_pk PRIMARY KEY  (internship_id,student_id)
);
```

## Kategoria MEETINGS

### Tabela MEETINGS

| Column Name   | Data Type   | Properties                 |
| ------------- | ----------- | -------------------------- |
| meeting_id    | int         | Primary Key<br>Foreign Key |
| tutor_id      | int         | Foreign Key                |
| translator_id | int         | Foreign Key                |
| meeting_name  | varchar(30) |                            |
| term          | datetime    |                            |
| duration      | time(0)     |                            |
| language_id   | int         | Foreign Key                |
| module_id     | int         | Foreign Key                |
| session_id    | int         | Foreign Key                |

Zawiera ogólne informacje na temat spotkania

- meeting_id int - klucz główny, identifikator spotkania

- tutor_id int - klucz obcy, identifikator nauczyciela prowadzącego spotkanie

- translator_id int nullable nullable - klucz obcy, identifikator tłumacza tłumaczącego spotkanie

- meeting_name varchar(30) - nazwa spotkania

- term datetime - data i godzina spotkania

- duration time(0) nullable - czas trwania spotkania

  - Warunek: duration > '00:00:00'
  - DEFAULT 01:30:00

- language_id int - klucz obcy, identyfikator języka w jakim przeprowadza się spotkanie

  - DEFAULT 0

- module_id int nullable - klucz obcy, identyfikator modułu kursu odpowiadającego spotkani

- sessions_id int nullable - klucz obcy, identyfikator sesji odpowiadającej spotkaniu

```sql
-- Table: MEETINGS
CREATE TABLE MEETINGS (
    meeting_id int  NOT NULL IDENTITY,
    tutor_id int  NOT NULL,
    translator_id int  NULL,
    meeting_name varchar(30)  NOT NULL,
    term datetime  NOT NULL,
    duration time(0)  NULL DEFAULT 01:30:00 CHECK (duration>'00:00:00'),
    language varchar(30)  NOT NULL DEFAULT 'POLISH',
    module_id int  NULL,
    session_id int  NULL,
    CONSTRAINT MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

### Tabela MEETING_DETAILS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| meeting_id  | int       | Primary Key<br>Foreign Key |
| student_id  | int       | Primary Key<br>Foreign Key |
| attendance  | bit       |                            |

Zawiera szczegółowe informacje na temat osób biorących udział w spotkaniu

- meeting_id int - klucz główny, identyfikator spotkania

- student_id int - identyfiaktor studenta, zapisanego na spotkanie

- attendance bit - obecność, <br>
  1 - student uczestniczył w spotkaniu, <br>
  0 - student nie uczestniczył w spotkaniu

```sql
-- Table: MEETING_DETAILS
CREATE TABLE MEETING_DETAILS (
   meeting_id int  NOT NULL,
   student_id int  NOT NULL,
   attendance bit  NOT NULL,
   CONSTRAINT MEETING_DETAILS_pk PRIMARY KEY  (meeting_id,student_id)
);
```

### Tabela ASYNC_MEETINGS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| meeting_id  | int       | Primary Key<br>Foreign Key |
| meeting_url | text      |                            |

Zawiera dane dotyczące spotkań internetowych, które nie są na żywo

- meeting_id int - klucz główny, klucz obcy, identyfikator spotkania

- meeting_url text - link do spotkania

```sql
-- Table: ASYNC_MEETINGS
CREATE TABLE ASYNC_MEETINGS (
   meeting_id int  NOT NULL,
   meeting_url text  NOT NULL,
   CONSTRAINT ASYNC_MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

### Tabela SYNC_MEETINGS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| meeting_id  | int       | Primary Key<br>Foreign Key |
| video_url   | text      |                            |
| meeting_url | text      |                            |

Zawiera dane dotyczące spotkań internetowych, które są na żywo

- meeting_id int - klucz główny, klucz obcy, identyfikator spotkania

- video_url text nullable - link do zapisu video spotkania

- meeting_url text - link do spotkania

```sql
-- Table: SYNC_MEETINGS
CREATE TABLE SYNC_MEETINGS (
   meeting_id int  NOT NULL,
   video_url text  NULL,
   meeting_url text  NOT NULL,
   CONSTRAINT SYNC_MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

### Tabela STATIONARY_MEETINGS

| Column Name | Data Type   | Properties                 |
| ----------- | ----------- | -------------------------- |
| meeting_id  | int         | Primary Key<br>Foreign Key |
| classroom   | varchar(10) |                            |

Zawiera dane dotyczące spotkań internetowych, które są stacjonarnie

- meeting_id int - klucz główny, klucz obcy, identyfikator spotkania

- classroom varchar(10) - numer pokoju, w którym przeprowadzane jest spotkanie

```sql
-- Table: STATIONARY_MEETINGS
CREATE TABLE STATIONARY_MEETINGS (
   meeting_id int  NOT NULL,
   classroom varchar(10)  NOT NULL,
   CONSTRAINT STATIONARY_MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

## Kategoria LANGUAGES

### Tabela LANGUAGES

| Column Name   | Data Type   | Properties  |
| ------------- | ----------- | ----------- |
| language_id   | int         | Primary Key |
| language_name | varchar(30) |             |

Tabela słownikowa, zawierająca nazwy dostępnych język, w których
są przeprowadzane formy kształcenia

- language_id int - klucz główny, identyfikator języka
- language_name varchar(30) - nazwa języka

```sql
-- Table: LANGUAGES
CREATE TABLE LANGUAGES (
    language_id int  NOT NULL,
    language_name varchar(30)  NOT NULL,
    CONSTRAINT LANGUAGES_pk PRIMARY KEY  (language_id)
);
```

# Dokumentacja kluczy obcych

| Table Name          | FK Column     | Referenced Table | Referenced Column |
| ------------------- | ------------- | ---------------- | ----------------- |
| ASYNC_MEETINGS      | meeting_id    | MEETINGS         | meeting_id        |
| SHOPPING_CART       | product_id    | PRODUCTS         | product_id        |
| SHOPPING_CART       | student_id    | STUDENTS         | student_id        |
| COURSES             | course_id     | PRODUCTS         | product_id        |
| EMPLOYEES           | type_id       | EMPLOYEE_TYPES   | type_id           |
| EMPLOYEES           | emploee_id    | USERS            | user_id           |
| WEBINARS            | tutor_id      | EMPLOYEES        | emploee_id        |
| FEES                | order_id      | ORDERS           | order_id          |
| FEES                | product_id    | PRODUCTS         | product_id        |
| FEES                | type_id       | FEE_TYPE         | type_id           |
| INTERSHIPS          | study_id      | STUDIES          | study_id          |
| INTERSHIP_DETAILS   | internship_id | INTERSHIPS       | internship_id     |
| INTERSHIP_DETAILS   | student_id    | STUDENTS         | student_id        |
| MEETINGS            | language_id   | LANGUAGES        | language_id       |
| WEBINARS            | language_id   | LANGUAGES        | language_id       |
| MEETINGS            | module_id     | MODULES          | module_id         |
| MEETINGS            | session_id    | SESSIONS         | session_id        |
| MEETING_DETAILS     | meeting_id    | MEETINGS         | meeting_id        |
| MEETING_DETAILS     | student_id    | STUDENTS         | student_id        |
| MEETINGS            | tutor_id      | EMPLOYEES        | emploee_id        |
| MEETINGS            | translator_id | EMPLOYEES        | emploee_id        |
| MODULES             | course_id     | COURSES          | course_id         |
| MODULES             | tutor_id      | EMPLOYEES        | emploee_id        |
| PRODUCTS_DETAILS    | order_id      | ORDERS           | order_id          |
| PRODUCTS_DETAILS    | product_id    | PRODUCTS         | product_id        |
| PRODUCTS_DETAILS    | student_id    | STUDENTS         | student_id        |
| PRODUCTS            | type_id       | PRODUCT_TYPES    | type_id           |
| SUBJECTS            | subject_id    | PRODUCTS         | product_id        |
| SESSIONS            | session_id    | PRODUCTS         | product_id        |
| SESSIONS            | subject_id    | SUBJECTS         | subject_id        |
| STATIONARY_MEETINGS | meeting_id    | MEETINGS         | meeting_id        |
| STUDENTS            | country_id    | COUNTRIES        | country_id        |
| ORDERS              | student_id    | STUDENTS         | student_id        |
| STUDIES             | study_id      | PRODUCTS         | product_id        |
| SUBJECTS            | tutor_id      | EMPLOYEES        | emploee_id        |
| SUBJECTS            | study_id      | STUDIES          | study_id          |
| SYNC_MEETINGS       | meeting_id    | MEETINGS         | meeting_id        |
| STUDENTS            | student_id    | USERS            | user_id           |
| WEBINARS            | translator_id | EMPLOYEES        | emploee_id        |
| WEBINARS            | webinar_id    | PRODUCTS         | product_id        |

# Widoki

## Users

### Student_address

Widok student_address dla każdego studenta podaje jego imię i nazwisko i adres zamieszkania ,
czyli ulicę, kod pocztowy, miasto i państwo.

```sql
CREATE view student_address as
	SELECT
    	students.user_id AS student_id,
    	users.first_name + ' ' + users.last_name AS name,
    	students.street AS street,
    	students.postal_code AS zip_code,
    	students.city AS city,
    	student.country AS country

  	FROM students
	join user on users.user_id = students.student_id
;
```

### Emploee_list

Widok emploee_type_list wylisowuje wszystkich imiona i nazwiaska wszystkich pracowników oraz przypisane do nich role

```sql
CREATE view emploee_type_list as
	SELECT
		emploees.emploee_id as emploee_id,
		users.first_name + ' ' + users.last_name AS name,
		emploee_type.type_name as rola

	FROM emploees
	join user on users.user_id = emploees.emploee_id
	join emploee_type on emploee_type.type_id = emploees.type_id
;
```

### User_information

Widok user_information dla każdego użytkownika podaje jego imię, nazwisko, adres e-mail, nr
telefonu oraz czy jest studentem, czy pracownikiem

```sql
CREATE view user_information as
	SELECT
		users.user_id as user_id,
		users.first_name + ' ' + users.last_name AS name,
		users.email as email,
		users.phone as phone
		CASE
			WHEN users.id IN (SELECT user_id FROM students) AND
			users.id NOT IN (SELECT user_id FROM emploees) AND
			THEN 'student'

			WHEN users.id NOT IN (SELECT user_id FROM students) AND
			users.id IN (SELECT user_id FROM emploees) AND
			THEN 'employee'

	FROM emploees
;
```

### Regular_customers

Widok regular_customers pokazuje stałych klientów, którzy są zdefiniowani jako osoby,
które złożyły jakiekolwiek zamówienie w przeciągu ostatnich 2 lat

```sql
CREATE VIEW regular_customers AS
	SELECT
		student_id,
		COUNT(order_date) AS order_count
	FROM orders
	WHERE order_date >= DATEADD(year, -2, GETDATE())
	GROUP BY student_id
	HAVING COUNT(order_date) > 0
;
```

# Webinars

## Webinar_information

Widok webinar_information dla każdego webinaru podaje jego tytuł, opis, ID prowadzącego, ramy
czasowe, ID tłumacza, link do spotkania, link do nagrania oraz jezyk w jakim jest prowadzony.

```sql
CREATE VIEW Webinar_information report AS
	SELECT
		webinar_id as webinar_id
		webinar_name as name
		webinar_description as description
		tutor_id as tutor
		publish_date as start_time
		webinar_duration as duration
		translator_id as translator
		meeting_url as meeting_url
		language as language
	FROM WEBINARS
;
```

alternatywnie

Widok webinar_information dla każdego webinaru podaje jego tytuł, opis, imie i nazwisko prowadzącego, ramy
czasowe, imie i nazwisko tłumacza, link do spotkania, link do nagrania oraz jezyk w jakim jest prowadzony.

```sql
CREATE VIEW Webinar_information report AS
	SELECT
		webinar_id as webinar_id,
		webinar_name as name,
		webinar_description as description,
		Tu.first_name  AS tutor_name,
    Tu.last_name as tutor_last_name,
		publish_date as start_time,
		webinar_duration as duration,
		Tr.first_name + ' ' + Tr.last_name AS translator_name,
		meeting_url as meeting_url,
		language as language
	FROM WEBINARS
	left join users Tu
		on Tu.user_id = WEBINARS.tutor_id
	left join users Tr
		on Tr.user_id = WEBINARS.translator_id
;
```

## Webinar_free_entry

Widok webinar_information wylistowuje webinary, które są darmowe. Dla każdego webinaru podaje jego tytuł, opis, imie i nazwisko prowadzącego, ramy
czasowe, imie i nazwisko tłumacza, link do spotkania, link do nagrania oraz jezyk w jakim jest prowadzony.

```sql
CREATE VIEW Webinar_free_entry report AS
	SELECT
		webinar_id as webinar_id
		webinar_name as name
		webinar_description as description
		Tu.first_name AS tutor_name,
    Tu.last_name as tutor_last_name,
		publish_date as start_time,
		webinar_duration as duration,
		Tr.first_name + ' ' + Tr.last_name AS translator_name,
		meeting_url as meeting_url,
		language as language
	FROM WEBINARS
	left join users Tu
		on Tu.user_id = WEBINARS.tutor_id
	left join users Tr
		on Tr.user_id = WEBINARS.translator_id
	left join Products
		on webinar_id = product_id
	where products.price = 0
;
```

## Webinar_available

Widok Webinar_available wylistowuje webinary, które odbędą się w przyszłości. Dla każdego webinaru podaje jego tytuł, opis, imie i nazwisko prowadzącego, ramy
czasowe, imie i nazwisko tłumacza, link do spotkania, link do nagrania oraz jezyk w jakim jest prowadzony.

```sql
CREATE VIEW Webinar_available report AS
	SELECT
		webinar_id as webinar_id
		webinar_name as name
		webinar_description as description
		Tu.first_name + ' ' + Tu.last_name AS tutor_name,
		publish_date as start_time
		webinar_duration as duration
		Tr.first_name + ' ' + Tr.last_name AS translator_name,
		meeting_url as meeting_url
		language as language
	FROM WEBINARS
	join users Tu
		on Tu.user_id = WEBINARS.tutor_id
	join users Tr
		on Tr.user_id = WEBINARS.translator_id
	WHERE publish_date >= GETDATE()
;
```

# Courses

## Course_information

Widok Course_information dla każdego kursu podaje jego ID wraz z jego tytułem, opisem,
ramami czasowymi, językiem w którym odbywają się spotkania,
limitem miejsc i ceną.

```sql
CREATE VIEW Course_information report AS
	with course_start_end_date as (
		select
			course_id as course_id,
			min(term) as start_date,
			max(term) as end_date
		from meetings
		join modules on modules.module_id = meetings.module_id
		GROUP by module_id
		where module_id is not null
	)

	SELECT
		c.course_id as course_id
		c.course_name as name
		c.course_description as description
		start_end_date.start_date as start_date
		start_end_date.end_date as end_date
		c.meeting_url as meeting_url
		language as language
		products.price as price
		products.total_vacancies as amount_of_site
	FROM courses c
	join course_start_end_date
		on course_start_end_date.course_id = courses.course_id
	join products
		on products.product_id = course.course_id
;
```

## Course_module_meeting_types

Widok course_module_meeting_types dla każdego modułu kursu podaje ile spotkań danego typu
do niego należy.

```sql
CREATE VIEW course_module_meeting_types AS

	with STATIONARY_course_MEETINGS_count as (
		select
			module_id,
			count(*) as STATIONARY_MEETINGS_count
		from MEETINGS
		join STATIONARY_MEETINGS on STATIONARY_MEETINGS.meeting_id = MEETINGS.meeting_id
		GROUP by module_id
	),
	with sync_course_MEETINGS_count as (
		select
			module_id,
			count(*) as sync_MEETINGS_count
		from MEETINGS
		join sync_MEETINGS on sync_MEETINGS.meeting_id = MEETINGS.meeting_id
		GROUP by module_id
	),
	with async_course_MEETINGS_count as (
		select
			module_id,
			count(*) as async_MEETINGS_count
		from MEETINGS
		join async_MEETINGS on async_MEETINGS.meeting_id = MEETINGS.meeting_id
		GROUP by module_id
	)

	select
		module_id as module_id
		module_name as name
		STATIONARY_MEETINGS_count as STATIONARY_MEETINGS_count
		sync_MEETINGS_count as sync_MEETINGS_count
		async_MEETINGS_count as async_MEETINGS_count
	from
		MODULES
	JOIN STATIONARY_course_MEETINGS_count AS scmc
		ON scmc.module_id = m.module_id
	JOIN sync_course_MEETINGS_count AS syncmc
		ON syncmc.module_id = m.module_id
	JOIN async_course_MEETINGS_count AS asyncmc
		ON asyncmc.module_id = m.module_id;


```

## Course_module_information

Widok course_module_information dla każdego modułu kursu podaje jego typ, limit miejsc oraz imię i nazwisko nauczyciela

```sql
CREATE VIEW Course_module_information report AS
	with STATIONARY_course_MEETINGS_count as (
		select
			module_id,
			count(*) as STATIONARY_MEETINGS_count
		from MEETINGS
		join STATIONARY_MEETINGS on STATIONARY_MEETINGS.meeting_id = MEETINGS.meeting_id
		GROUP by module_id
	),
	with sync_course_MEETINGS_count as (
		select
			module_id,
			count(*) as sync_MEETINGS_count
		from MEETINGS
		join sync_MEETINGS on sync_MEETINGS.meeting_id = MEETINGS.meeting_id
		GROUP by module_id
	),
	with async_course_MEETINGS_count as (
		select
			module_id,
			count(*) as async_MEETINGS_count
		from MEETINGS
		join async_MEETINGS on async_MEETINGS.meeting_id = MEETINGS.meeting_id
		GROUP by module_id
	)

	SELECT
    m.module_id,
    CASE
        WHEN scmc.STATIONARY_MEETINGS_count <> 0 AND
             syncmc.sync_MEETINGS_count = 0 AND
             asyncmc.async_MEETINGS_count = 0 THEN 'on_site'
        WHEN scmc.STATIONARY_MEETINGS_count = 0 AND
             syncmc.sync_MEETINGS_count <> 0 AND
             asyncmc.async_MEETINGS_count = 0 THEN 'online_synchronous'
        WHEN scmc.STATIONARY_MEETINGS_count = 0 AND
             syncmc.sync_MEETINGS_count = 0 AND
             asyncmc.async_MEETINGS_count <> 0 THEN 'online_asynchronous'
        WHEN scmc.STATIONARY_MEETINGS_count <> 0 OR
             syncmc.sync_MEETINGS_count <> 0 OR
             asyncmc.async_MEETINGS_count <> 0 THEN 'hybrid'
    END AS module_type,
	Tu.first_name + ' ' + Tu.last_name AS tutor_name,
	products.total_vacancies

FROM modules AS m
JOIN STATIONARY_course_MEETINGS_count AS scmc
    ON scmc.module_id = m.module_id
JOIN sync_course_MEETINGS_count AS syncmc
    ON syncmc.module_id = m.module_id
JOIN async_course_MEETINGS_count AS asyncmc
    ON asyncmc.module_id = m.module_id
join courses
	on courses.module_id = m.module_id
join products
	on courses.course_id = products.product_id
join emploees Tu
	on Tu.emploee_id = m.tutor_id
;
```

## Course meeting information

Widok course_meeting_information dla każdego spotkania w ramach kursu podaje ID kursu do
którego należy, ID modułu do którego należy, tytuł, opis spotkania, ramy czasowe oraz jego typ.

```sql
CREATE VIEW course_meeting_information report AS
	select
		modules.course_id AS course_id,
		modules.activity_id AS module_id,
		meetings.meeting_id AS meeting_id,
		meeting.name AS name,
		modules.description as description,
		meeting.term as start_time,
		meeting.duration as duration,
		CASE
			WHEN
				meetings.meeting_id IN (SELECT meeting_id FROM
				STATIONARY_MEETINGS) AND
				meetings.meeting_id not IN (SELECT meeting_id FROM
				async_meetings) AND
				meetings.meeting_id NOT IN (SELECT meeting_id FROM
				sync_meetings)
			THEN 'stationary'
			WHEN
				meetings.meeting_id not IN (SELECT meeting_id FROM
				STATIONARY_MEETINGS) AND
				meetings.meeting_id not IN (SELECT meeting_id FROM
				async_meetings) AND
				meetings.meeting_id IN (SELECT meeting_id FROM
				sync_meetings)
			THEN 'online_synchronous'
			WHEN
				meetings.meeting_id not IN (SELECT meeting_id FROM
				STATIONARY_MEETINGS) AND
				meetings.meeting_id IN (SELECT meeting_id FROM
				async_meetings) AND
				meetings.meeting_id NOT IN (SELECT meeting_id FROM
				sync_meetings)
			THEN 'online_asynchronous'
			END AS meeting_type,
	from modules
	join meeting on meeting.course_id = modules.module_id
```

## Course passes

Widok course_passes dla każdego kursu podaje listę jego uczestników wraz z informacją o jego
zaliczeniu.

```sql
CREATE VIEW course_passes AS
	SELECT
	courses.course_id as course_id,
	student_id as student_id,
	passed as passed
	from courses
	join products on products.product_id = courses.course_id
	join PRODUCTS_DETAILS on PRODUCTS_DETAILS.product_id = courses.course_id

```

# Kategoria zamówienia i produkty

## PRODUCT VACANCIES

Przedstawia ID produktu i wolne miejsca na dany produkt

```sql
create view PRODUCT_VACANCIES as
select product_id, total_vacancies-(select count(*) from FEES where FEES.product_id=PRODUCTS.product_id)
from PRODUCTS
```

**USERS IN DEBT**\
Przedstawia użytkowników którzy nie opłacili danej usługi, ale z niej skorzystali co wykazane jest na liście obecności

```sql
create view USERS_IN_DEBT as
select student_id, first_name,last_name as name
from STUDENTS
join USERS on USERS.user_id=STUDENTS.student_id
where exists (select student_id
              from ORDERS
              join FEES on ORDERS.order_id=FEES.order_id
              join PRODUCTS on PRODUCTS.product_id = FEES.product_id
              join STUDIES on STUDIES.study_id=PRODUCTS.product_id
              join SUBJECTS on STUDIES.study_id=SUBJECTS.study_id
              join SESSIONS on SESSIONS.subject_id=SUBJECTS.subject_id
              join MEETINGS on MEETINGS.session_id=SESSIONS.session_id
              join MEETING_DETAILS on MEETINGS.meeting_id=MEETING_DETAILS.meeting_id
              where FEES.due_date>MEETINGS.term and FEES.payment_date=null
              union all
              select student_id
              from ORDERS
              join FEES on ORDERS.order_id=FEES.order_id
              join PRODUCTS on PRODUCTS.product_id = FEES.product_id
              join COURSES on COURSES.course_id=PRODUCTS.product_id
              join MODULES on COURSES.course_id=MODULES.course_id
              join MEETINGS on MEETINGS.module_id=MODULES.module_id
              join MEETING_DETAILS on MEETINGS.meeting_id=MEETING_DETAILS.meeting_id
              where FEES.due_date>MEETINGS.term and FEES.payment_date=null
              union all
              select student_id
              from ORDERS
              join FEES on ORDERS.order_id=FEES.order_id
              join PRODUCTS on PRODUCTS.product_id = FEES.product_id
              join MEETINGS on MEETINGS.session_id=PRODUCTS.product_id
              join MEETING_DETAILS on MEETINGS.meeting_id=MEETING_DETAILS.meeting_id
              where FEES.due_date>MEETINGS.term and FEES.payment_date=null
)
```

## FINANCIAL REPORT

Przedstawia przychód dla każdego z produktów

```sql
create view FINANCIAL_REPORT as
select
  product_id,
  (select count(*)
    from FEES
    where FEES.product_id=PRODUCTS.product_id
  )*price as income, type_name
from PRODUCTS
join PRODUCT_TYPES on PRODUCTS.type_id=PRODUCT_TYPES.type_id
```

## BILOCATION REPORT

Przedstawia studentów którzy mają kolizje wśród swoich zajęć

```sql
create view BILOCATION_REPORT as
with student_meetings as (
    select student_id, meeting_id,term,duration
    from MEETING_DETAILS
    join MEETINGS on MEETING_DETAILS.meeting_id=MEETINGS.meeting_id)
select student_id
from STUDENTS
join (select sm1.student_id,count(*) as collisions
      from student_meetings sm1
      join student_meetings sm2 on sm1.student_id=sm2.student_id and
      (
        datediff(hour,sm2.term-sm1.term)<sm1.duration or
        (datediff(hour,sm2.term-sm1.term)=sm1.duration and
        datediff(minute,sm2.term-sm1.term)<sm1.duration )
      ) or
      datediff(hour,sm1.term-sm2.term)<sm2.duration or
      (
        datediff(hour,sm1.term-sm2.term)=sm2.duration and
        datediff(minute,sm1.term-sm2.term)<sm2.duration
      )
      group by sm1.student_id) T on STUDENTS.student_id=T.student_id
where collisions>1
```

## PRODUCT OWNERS

Przedstawia użytkowników i zakupione przez nich produkty

```sql
create view PRODUCT_OWNERS as
select student_id, first_name,last_name as name
from ORDER_DETAILS
join USERS on USER.user_id=ORDER_DETAILS.student_id
```

## Product_payment_information

Widok product_payment_information dla każdego produktu podaje jego typ, najpóźniejszy termin
opłacenia całej aktywności, a także czy istnieje opcja wpłacenia zaliczki.

```sql
CREATE VIEW product_payment_information AS
SELECT
  p.product_id,
  pt.type_name,
  fee.due_date as due_date
  IIF(pt.type_name IN ('study', 'study',
  'course', 'session'), 1, 0) AS accepts_advance_payments
FROM 
  products p
  join products_type pt on pt.product_id = p.product_id
  join fee on fee.product_id = p.product_id 

```

## Unpaid special permissions

Widok unpaid_special_permissions dla każdego klienta, któremu została odroczona płatność za
zamówienie, pokazuje łączną kwotę jaką musi jeszcze dopłacić ze wszystkich zamówień.

<!-- ```sql
CREATE VIEW product_payment_information AS
SELECT
  o.student_id
  sum(fee.value - product.price) as to_pay_value
FROM 
  orders o
  join fee on fee.order_id = o.order_id
  join product p on fee.product_id = p.product_id
group by
  o.student_id -->

<!-- ``` -->


## Product_information

Widok product_information dla każdego produktu wylistowuje jego tytuł, opis, typ i cenę.

``` sql
create view PRODUCT_OWNERS
select product_id,
  case
    WHEN pt.type_id = 1 then studies.study_name
    when pt.type_id = 2 then subjects.subject_name
    When pt.type_id = 3 then courses.course_name
    when pt.type_id = 4 then webinars.webinar_name
    when pt.type_id = 5 then null
  end as product_name,

  case
    WHEN pt.type_id = 1 then studies.study_description
    when pt.type_id = 2 then subjects.subject_description
    When pt.type_id = 3 then courses.course_description
    when pt.type_id = 4 then webinars.webinar_description
    when pt.type_id = 5 then null
  end as product_description

  price,
  pt.type_name,
from products p
join PRODUCT_TYPES pt on p.product_id = pt.product_id,
left join courses on courses.country_id = p.product_id,
left join subjects on subjects.subject_id = p.product_id,
left join studies on studies.study_id = p.product_id,
left join sessions on sessions.session_id = p.product_id,
left join webinars on webinars.webinar_id = p.product_id
```


# Meetings

## Attendance_list
Widok Attendance_list pokazuje id spotkań,jego nazwe, datę kiedy się spotkanie odbyło, rodzaj spotkania, jezyk spotkania, 
imie i nazwisko nauczyciela, imie i nazwisko tłumacza, imię i nazwisko studenta wraz z jego statusem obecności

```sql
create view ATTENDANCE_LIST as
SELECT 
    m.meeting_id,
    m.meeting_name,
    m.term AS meeting_date,
    m.duration,
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    l.language_name,
    tutor.first_name + ' ' + tutor.last_name AS tutor_name,
    CASE 
        WHEN trans.user_id IS NOT NULL 
        THEN trans.first_name + ' ' + trans.last_name 
        ELSE NULL 
    END AS translator_name,
    u.first_name + ' ' + u.last_name AS student_name,
    u.email AS student_email,
    CASE 
        WHEN md.attendance = 1 THEN 'Present'
        ELSE 'Absent'
    END AS attendance_status
FROM 
    MEETINGS m
    INNER JOIN MEETING_DETAILS md ON m.meeting_id = md.meeting_id
    INNER JOIN USERS u ON md.student_id = u.user_id
    INNER JOIN USERS tutor ON m.tutor_id = tutor.user_id
    LEFT JOIN USERS trans ON m.translator_id = trans.user_id
    INNER JOIN LANGUAGES l ON m.language_id = l.language_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
WHERE 
    m.term < GETDATE()
ORDER BY 
    m.term DESC, m.meeting_id, u.last_name, u.first_name;
    
```

## Future_meeting_attendee_count
Widok Future_meeting_attendee_count pokazuje id przyszłych spotkań, ich nazwę, termin, rodzaj oraz liczbę zapisanych na to spotkanie studentów 

``` sql
CREATE VIEW vw_future_meeting_attendee_count AS
SELECT 
    m.meeting_id as meeting_id,
    m.meeting_name as meeting_name,
    m.term AS meeting_date,
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    COUNT(md.student_id) AS total_registered,
FROM 
    MEETINGS m
    LEFT JOIN MEETING_DETAILS md ON m.meeting_id = md.meeting_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
WHERE 
    m.term > GETDATE()
GROUP BY 
    m.meeting_id,
    m.meeting_name,
    m.term,
    sm.meeting_id,
    sync.meeting_id,
    async.meeting_id
ORDER BY 
    m.term;
```

## Meeting_type
Widok Meeting_type wylistowuje id meetingu, jego nazwę, date, jego typ, czy należy do kursu, czy do studiów, nazwę studiów i nazwę kursów
``` sql
CREATE VIEW vw_meeting_types AS
SELECT 
    m.meeting_id,
    m.meeting_name,
    m.term,
    -- Determine meeting type
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    -- Check if meeting is part of a course
    CASE 
        WHEN c.course_id IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS is_part_of_course,
    c.course_name,
    -- Check if meeting is part of studies
    CASE 
        WHEN s.study_id IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS is_part_of_studies,
    sub.subject_name,
FROM 
    MEETINGS m
    -- Join with meeting type tables
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
    -- Join with modules to get course information
    LEFT JOIN MODULES mod ON m.module_id = mod.module_id
    LEFT JOIN COURSES c ON mod.course_id = c.course_id
    -- Join with sessions to get study information
    LEFT JOIN SESSIONS ses ON m.session_id = ses.session_id
    LEFT JOIN SUBJECTS sub ON ses.subject_id = sub.subject_id
    LEFT JOIN STUDIES s ON sub.study_id = s.study_id
ORDER BY 
    m.term, m.meeting_id;
```

## Only_course_meeting
Widok Only_course_meeting pokazuje id spotkania, jego nazwę, date, czas trwania, nazwę kursu do którego należy, nazwę modułu, którego jest częścią,
typ spotkania, imie i nazwisko nauczyciela oraz jezyk, w którym jest prowadzone spotkanie
``` sql
CREATE VIEW Only_course_meeting AS
SELECT 
    m.meeting_id,
    m.meeting_name,
    m.term AS meeting_date,
    m.duration,
    c.course_name,
    mod.module_name,
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    tutor.first_name + ' ' + tutor.last_name AS tutor_name,
    l.language_name
FROM 
    MEETINGS m
    INNER JOIN MODULES mod ON m.module_id = mod.module_id
    INNER JOIN COURSES c ON mod.course_id = c.course_id
    INNER JOIN USERS tutor ON m.tutor_id = tutor.user_id
    INNER JOIN LANGUAGES l ON m.language_id = l.language_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
WHERE 
    m.module_id IS NOT NULL
    AND m.session_id IS NULL
ORDER BY 
    m.term;
```

## Only_studies_meeting
Widok Only_studies_meeting pokazuje id spotkania, jego nazwę, date, czas trwania, nazwę studiów do którego należy, nazwę przedmiotu, którego jest częścią,
numer zjazdu, do którego należy ,typ spotkania, imie i nazwisko nauczyciela oraz jezyk, w którym jest prowadzone spotkanie.
``` sql
CREATE VIEW Only_studies_meeting AS
SELECT 
    m.meeting_id,
    m.meeting_name,
    m.term AS meeting_date,
    m.duration,
    s.study_name,
    sub.subject_name,
    ses.session_id AS session_number,
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    tutor.first_name + ' ' + tutor.last_name AS tutor_name,
    l.language_name
FROM 
    MEETINGS m
    INNER JOIN SESSIONS ses ON m.session_id = ses.session_id
    INNER JOIN SUBJECTS sub ON ses.subject_id = sub.subject_id
    INNER JOIN STUDIES s ON sub.study_id = s.study_id
    INNER JOIN USERS tutor ON m.tutor_id = tutor.user_id
    INNER JOIN LANGUAGES l ON m.language_id = l.language_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
WHERE 
    m.session_id IS NOT NULL
    AND m.module_id IS NULL
ORDER BY 
    m.term;
```
## Room_schedule
Widok Room_schedule listuje id spotkania, jego nazwę, numer pokoju, termin startu i zakończenia spotkania, czas jego trwania, imie i nazwisko
nauczyciela, nazwę kursu lub studiów z których dane spotkanie pochodzi, nazwę języka, w którym jest prowadzone spotkanie oraz określenie, czy
spotkanie się już odbyło, czy dopiero odbędzie
``` sql
CREATE VIEW Room_schedule AS
SELECT 
    m.meeting_id,
    m.meeting_name,
    sm.classroom AS room,
    m.term AS start_time,
    DATEADD(MINUTE, DATEDIFF(MINUTE, '00:00:00', m.duration), m.term) AS end_time,
    m.duration,
    tutor.first_name + ' ' + tutor.last_name AS tutor_name,
    CASE 
        WHEN mod.module_id IS NOT NULL THEN 'Course: ' + c.course_name
        WHEN ses.session_id IS NOT NULL THEN 'Study: ' + s.study_name
    END AS meeting_context,
    l.language_name,
    CASE 
        WHEN m.term < GETDATE() THEN 'Past'
        ELSE 'Upcoming'
    END AS meeting_status
FROM 
    MEETINGS m
    INNER JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    INNER JOIN USERS tutor ON m.tutor_id = tutor.user_id
    INNER JOIN LANGUAGES l ON m.language_id = l.language_id
    LEFT JOIN MODULES mod ON m.module_id = mod.module_id
    LEFT JOIN COURSES c ON mod.course_id = c.course_id
    LEFT JOIN SESSIONS ses ON m.session_id = ses.session_id
    LEFT JOIN SUBJECTS sub ON ses.subject_id = sub.subject_id
    LEFT JOIN STUDIES s ON sub.study_id = s.study_id
ORDER BY 
    sm.classroom,
    m.term;
```

## Studies

## Study_information

Widok Study_information pokazuje id studiów, ich nazwe, opis, date rozpoczęcia pierwszych zajęć
i date rozpoczęcia ostatnich zajęc, ilość przedmiotów, liczbę wszystkich zajęć, liczbę zajęć stacjonarnych,
liczbe zajęć online oraz liczbę asynchronicznych zajęć online, liczbę praktyk podpiętych pod studia,
limit miejsc na studia, opłatę za wpis oraz liczbę zapisanych studentów na dane studia.

``` sql
CREATE VIEW Study_information AS
WITH study_timeframe AS (
    SELECT 
        s.study_id,
        MIN(m.term) AS start_date,
        MAX(m.term) AS end_date
    FROM 
        STUDIES s
        JOIN SUBJECTS sub ON s.study_id = sub.study_id
        JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
        JOIN MEETINGS m ON ses.session_id = m.session_id
    GROUP BY 
        s.study_id
),

SELECT 
    s.study_id,
    s.study_name,
    s.study_description,
    tf.start_date AS study_start,
    tf.end_date AS study_end,
    -- Count of subjects
    COUNT(DISTINCT sub.subject_id) AS number_of_subjects,
    -- Count of all meetings
    COUNT(DISTINCT m.meeting_id) AS total_meetings,
    -- Count meetings by type
    SUM(CASE WHEN sm.meeting_id IS NOT NULL THEN 1 ELSE 0 END) AS stationary_meetings,
    SUM(CASE WHEN sync.meeting_id IS NOT NULL THEN 1 ELSE 0 END) AS online_meetings,
    SUM(CASE WHEN async.meeting_id IS NOT NULL THEN 1 ELSE 0 END) AS async_meetings,
    -- Count of internships
    (
        SELECT COUNT(*)
        FROM INTERSHIPS i
        WHERE i.study_id = s.study_id
    ) AS number_of_internships,
    -- Available languages
    m.language_id
    -- Product information
    p.total_vacancies AS place_limit,
    p.price AS entry_fee,
    -- Calculate occupancy
    (
        SELECT COUNT(DISTINCT pd.student_id)
        FROM PRODUCTS_DETAILS pd
        WHERE pd.product_id = s.study_id
    ) AS current_enrollment
FROM 
    STUDIES s
    LEFT JOIN study_timeframe tf ON s.study_id = tf.study_id
    LEFT JOIN SUBJECTS sub ON s.study_id = sub.study_id
    LEFT JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
    LEFT JOIN MEETINGS m ON ses.session_id = m.session_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
    LEFT JOIN PRODUCTS p ON s.study_id = p.product_id
GROUP BY 
    s.study_id,
    s.study_name,
    s.study_description,
    tf.start_date,
    tf.end_date,
    sl.available_languages,
    p.total_vacancies,
    p.price;
```

## Study_internship_information

Widok Study_internship_information wypisuje infomacje o praktykach. Wilistowuje id praktyk,
nazwę studiów, z których te praktyki pochodzą, date ich rozpoczęcia i zakończenia, długość ich trwania,
studentów zapisanych na te praktyki, ilość studentów, którzy zaliczyli praktyki, status praktyk.

``` sql
CREATE VIEW study_internship_information AS
SELECT 
    i.internship_id,
    s.study_id,
    s.study_name,
    i.start_date,
    i.end_date,
    DATEDIFF(day, i.start_date, i.end_date) AS duration_days,
    -- Count total students assigned
    COUNT(DISTINCT id.student_id) AS total_students,
    -- Count passed students
    SUM(CASE WHEN id.passed = 1 THEN 1 ELSE 0 END) AS students_passed,
    -- Status of internship
    CASE 
        WHEN i.end_date < GETDATE() THEN 'Completed'
        WHEN i.start_date > GETDATE() THEN 'Upcoming'
        ELSE 'In Progress'
    END AS internship_status,
    -- Time until start or since end
FROM 
    INTERSHIPS i
    INNER JOIN STUDIES s ON i.study_id = s.study_id
    LEFT JOIN INTERSHIP_DETAILS id ON i.internship_id = id.internship_id
GROUP BY 
    i.internship_id,
    s.study_id,
    s.study_name,
    i.start_date,
    i.end_date
ORDER BY 
    i.start_date DESC;
```

## Study_meeting_information
Widok Study_meeting_information wylistowuje informacje na temat spotkań organizowanych 
w ramach studiów. wylisowuje id studiów, ich nazwe, id przedmiotu wraz z jego nazwą, 
id sesji, organizowanych dla danych przedmiotów, id spotkania, nazwę spotkania, 
datę spotkania oraz czas jego trwania, typ spotkania, link do spotkania albo numer sali 
stosownie do typu spotkania, status odbycia się spotkania oraz liczbe zapisanych studentów na to spotkanie

``` sql
CREATE VIEW study_meeting_information AS
SELECT 
    s.study_id,
    s.study_name,
    sub.subject_id,
    sub.subject_name,
    ses.session_id, 
    m.meeting_id,
    m.meeting_name,
    m.term AS meeting_date,
    m.duration,
    -- Meeting type determination
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    -- Location/URL information based on type
    CASE 
        WHEN sm.meeting_id IS NOT NULL THEN sm.classroom
        WHEN sync.meeting_id IS NOT NULL THEN sync.meeting_url
        WHEN async.meeting_id IS NOT NULL THEN async.video_url
    END AS meeting_location,
    -- Meeting status
    CASE 
        WHEN m.term < GETDATE() THEN 'Past'
        ELSE 'Upcoming'
    END AS meeting_status,
    -- Current enrollment count
    (
        SELECT COUNT(*)
        FROM MEETING_DETAILS md
        WHERE md.meeting_id = m.meeting_id
    ) AS current_enrollment
FROM 
    STUDIES s
    INNER JOIN SUBJECTS sub ON s.study_id = sub.study_id
    INNER JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
    INNER JOIN MEETINGS m ON ses.session_id = m.session_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
    LEFT JOIN PRODUCTS p ON ses.session_id = p.product_id
ORDER BY 
    s.study_id,
    ses.session_id,  -- Added to ordering
    m.term;
```

## Study_offers

Widok study_offers wylistowuje informacje o oferowanych aktualnie studiach. Podaje informacje
o id studiów, ich nazwie, ich opisie, dacie rozpoczęcia pierwszych i ostatnich zajęć, ilości 
przedmiotów oraz spotkań z podziałem na typy spotkań, informacje o ilości wszystkich, zajętych
 oraz wolnych miejsc na studiach oraz opłacie za nie oraz statusie czsowym studiów.

``` sql
CREATE VIEW study_offers AS
WITH study_timeframe AS (
    SELECT 
        s.study_id,
        MIN(m.term) AS start_date,
        MAX(m.term) AS end_date
    FROM 
        STUDIES s
        JOIN SUBJECTS sub ON s.study_id = sub.study_id
        JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
        JOIN MEETINGS m ON ses.session_id = m.session_id
    GROUP BY 
        s.study_id
),
study_languages AS (
    SELECT 
        s.study_id,
        STRING_AGG(DISTINCT l.language_name, ', ') AS available_languages
    FROM 
        STUDIES s
        JOIN SUBJECTS sub ON s.study_id = sub.study_id
        JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
        JOIN MEETINGS m ON ses.session_id = m.session_id
        JOIN LANGUAGES l ON m.language_id = l.language_id
    GROUP BY 
        s.study_id
),
current_enrollment AS (
    SELECT 
        product_id,
        COUNT(DISTINCT student_id) AS enrolled_students
    FROM 
        PRODUCTS_DETAILS
    GROUP BY 
        product_id
)
SELECT 
    s.study_id,
    s.study_name,
    s.study_description,
    tf.start_date,
    tf.end_date,
    -- Count of subjects
    COUNT(DISTINCT sub.subject_id) AS number_of_subjects,
    -- Count meetings by type
    COUNT(DISTINCT m.meeting_id) AS total_meetings,
    SUM(CASE WHEN sm.meeting_id IS NOT NULL THEN 1 ELSE 0 END) AS stationary_meetings,
    SUM(CASE WHEN sync.meeting_id IS NOT NULL THEN 1 ELSE 0 END) AS online_meetings,
    SUM(CASE WHEN async.meeting_id IS NOT NULL THEN 1 ELSE 0 END) AS async_meetings,
    -- Count of internships
    (
        SELECT COUNT(*)
        FROM INTERSHIPS i
        WHERE i.study_id = s.study_id
    ) AS number_of_internships,
    p.total_vacancies AS total_places,
    COALESCE(ce.enrolled_students, 0) AS current_enrollment,
    p.total_vacancies - COALESCE(ce.enrolled_students, 0) AS available_places,
    p.price AS entry_fee,
    -- Status information
    CASE 
        WHEN tf.start_date > GETDATE() THEN 'Upcoming'
        ELSE 'In Progress'
    END AS study_status
FROM 
    STUDIES s
    JOIN PRODUCTS p ON s.study_id = p.product_id
    LEFT JOIN study_timeframe tf ON s.study_id = tf.study_id
    LEFT JOIN study_languages sl ON s.study_id = sl.study_id
    LEFT JOIN current_enrollment ce ON s.study_id = ce.product_id
    LEFT JOIN SUBJECTS sub ON s.study_id = sub.study_id
    LEFT JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
    LEFT JOIN MEETINGS m ON ses.session_id = m.session_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
WHERE 
    p.total_vacancies - COALESCE(ce.enrolled_students, 0) > 0  -- Only studies with available places
    AND (tf.end_date IS NULL OR tf.end_date >= GETDATE())     -- Only current or future studies
GROUP BY 
    s.study_id,
    s.study_name,
    s.study_description,
    tf.start_date,
    tf.end_date,
    sl.available_languages,
    p.total_vacancies,
    p.price,
    ce.enrolled_students
ORDER BY 
    tf.start_date;
```

## Study_passed

Widok Study_passed wylistowuje id studiów, ich nazwe, id studenta zapisanego na te studia,
jego imie i nazwisko wraz z informacją, czy zdał dane studia i jego frekwencją w wykładach.

``` sql
CREATE VIEW study_passes AS
SELECT 
    s.study_id,
    s.study_name,
    u.user_id AS student_id,
    u.email,
    -- Study completion status directly from PRODUCTS_DETAILS
    CASE 
        WHEN pd.passed = 1 THEN 'Passed'
        ELSE 'Not Passed'
    END AS study_status,
    -- Meeting attendance details
    COUNT(DISTINCT m.meeting_id) AS total_available_meetings,
    COUNT(DISTINCT CASE WHEN md.attendance = 1 THEN m.meeting_id END) AS meetings_attended,
    CASE 
        WHEN COUNT(DISTINCT m.meeting_id) = 0 THEN 0
        ELSE CAST(COUNT(DISTINCT CASE WHEN md.attendance = 1 THEN m.meeting_id END) AS FLOAT) / 
             COUNT(DISTINCT m.meeting_id) * 100 
    END AS attendance_rate,
    -- Internship completion details
    id.passed as internships_passed
FROM 
    STUDIES s
    INNER JOIN PRODUCTS_DETAILS pd ON s.study_id = pd.product_id
    INNER JOIN ORDERS o ON pd.order_id = o.order_id
    INNER JOIN USERS u ON pd.student_id = u.user_id
    -- Meeting attendance
    LEFT JOIN SUBJECTS sub ON s.study_id = sub.study_id
    LEFT JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
    LEFT JOIN MEETINGS m ON ses.session_id = m.session_id
    LEFT JOIN MEETING_DETAILS md ON m.meeting_id = md.meeting_id AND md.student_id = pd.student_id
    -- Internship completion
    LEFT JOIN INTERSHIPS i ON s.study_id = i.study_id
    LEFT JOIN INTERSHIP_DETAILS id ON i.internship_id = id.internship_id AND id.student_id = pd.student_id
GROUP BY 
    s.study_id,
    s.study_name,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    pd.order_id,
    o.order_date,
    pd.passed
ORDER BY 
    s.study_name,
    u.last_name,
    u.first_name;
```

## Study_session_schedule

Widok Study_session_schedule wylistowuje wszystkie zjazdy wraz z czasem rozpoczęcia pierwszych
i ostatnich zajęć wramach tego zjazdu

``` sql
CREATE VIEW study_session_schedule AS
  SELECT
  s.study_id,
  s.session_id,
  MIN(m.term) AS start_time,
  MAX(m.term) AS end_time
  FROM 
    sessions s
    join meetings m on m.session_id =  s.session_id
  GROUP BY 
    s.study_id,
    s.session_id
```

## Study_syllabus


``` sql
CREATE VIEW study_syllabus AS
SELECT
  s.study_id AS study_id,
  sub.subject_id AS subject_id,
  s.stady_name AS name,
  s.stady_description AS description,
  COUNT(m.meeting_id) AS meeting_count,
  MIN(m.start_time) AS start_time,
  MAX(m.end_time) AS end_time
  FROM 
    stadies s
    JOIN subjects sub on sub.study_id = s.study_id 
    join sessions on sub.subject_id = sessions.subject_id
    JOIN meetings m ON m.session_id = sessions.session_id
  GROUP BY 
    s.study_id
```

# Procedury

## Użytkownicy

### CreateBasicUser

Procedura CreateBasicUser tworzy nowego użytkownika w systemie. ID użytkownika zwracane jest za pomocą @user_id.

Argumenty:

- @username - Nazwa użytkownika
- @first_name - Imię użytkownika
- @last_name - Nazwisko użytkownika
- @email - Adres email użytkownika
- @phone - Opcjonalny numer telefonu
- @user_id - Zwracany ID użytkownika

```sql
CREATE PROCEDURE CreateBasicUser
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @user_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate email format
    IF @email NOT LIKE '%_@%.%'
    BEGIN
      RAISERROR('Niepoprawny format adresu email.', 16, 1);
      RETURN;
    END

    -- Validate phone number if provided
    IF @phone IS NOT NULL AND (LEN(@phone) != 9 OR ISNUMERIC(@phone) = 0)
    BEGIN
      RAISERROR('Niepoprawny format numeru telefonu.', 16, 1);
      RETURN;
    END

    -- Check for existing email
    IF EXISTS (SELECT 1 FROM USERS WHERE email = @email)
    BEGIN
      RAISERROR('Email został już przypisany do innego użytkownika.', 16, 1);
      RETURN;
    END

    -- Check for existing phone if provided
    IF @phone IS NOT NULL AND EXISTS (SELECT 1 FROM USERS WHERE phone = @phone)
    BEGIN
      RAISERROR('Numer telefonu został już przypisany do innego użytkownika.', 16, 1);
      RETURN;
    END

    -- Insert the new user
    INSERT INTO USERS (
      username,
      first_name,
      last_name,
      email,
      phone
    ) VALUES (
      @username,
      @first_name,
      @last_name,
      @email,
      @phone
    );

    -- Set the output parameter to the new user's ID
    SET @user_id = SCOPE_IDENTITY();

    COMMIT TRANSACTION;
    PRINT('Użytkownik utworzony pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

### CreateStudent

Procedura CreateStudent tworzy nowego studenta w systemie. ID studenta jest zwracane za pomocą @student_id

Argumenty:

@username - Nazwa użytkownika
@first_name - Imię studenta
@last_name - Nazwisko studenta
@email - Adres email studenta
@phone - Opcjonalny numer telefonu
@street - Ulica zamieszkania
@city - Miasto zamieszkania
@postal_code - Kod pocztowy
@country - Kraj zamieszkania
@student_id - Wyjściowy identyfikator utworzonego studenta

```sql
CREATE PROCEDURE CreateStudent
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @street VARCHAR(30),
  @city VARCHAR(30),
  @postal_code VARCHAR(30),
  @country VARCHAR(30),
  @user_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Create basic user first
    DECLARE @id INT;
    EXEC CreateBasicUser
      @username = @username,
      @first_name = @first_name,
      @last_name = @last_name,
      @email = @email,
      @phone = @phone,
      @user_id = @id OUTPUT;

    -- Insert student details
    INSERT INTO STUDENTS (
      student_id,
      street,
      city,
      postal_code,
      country
    ) VALUES (
      @user_id,
      @street,
      @city,
      @postal_code,
      @country
    );

    COMMIT TRANSACTION;
    PRINT("Student utworzony pomyślnie")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

### CreateEmployee

Procedura CreateEmployee tworzy nowego pracownika w systemie. ID pracownika jest zwracane za pomocą @employee_id

Argumenty:

- @username - Nazwa użytkownika
- @first_name - Imię pracownika
- @last_name - Nazwisko pracownika
- @email - Adres email pracownika
- @phone - Opcjonalny numer telefonu
- @employee_type_id - Identyfikator typu pracownika
- @hire_date - Opcjonalna data zatrudnienia
- @birth_date - Opcjonalna data urodzenia
- @employee_id - Zwracany ID pracownika

```sql
CREATE PROCEDURE CreateEmployee
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @employee_type_id INT,
  @hire_date DATE = NULL,
  @birth_date DATE = NULL,
  @employee_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate employee type exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEE_TYPES WHERE type_id = @employee_type_id)
    BEGIN
      RAISERROR('Nieprawidłowy typ pracownika.', 16, 1);
      RETURN;
    END

    -- Create basic user first
    EXEC CreateBasicUser
      @username = @username,
      @first_name = @first_name,
      @last_name = @last_name,
      @email = @email,
      @phone = @phone,
      @employee_id = @user_id OUTPUT;

    -- Insert employee details
    INSERT INTO EMPLOYEES (
      emploee_id,
      type_id,
      hire_date,
      birth_date
    ) VALUES (
      @user_id,
      @employee_type_id,
      -- Check for NULL value
      COALESCE(@hire_date, GETDATE()),
      @birth_date
    );

    COMMIT TRANSACTION;
    PRINT("Pracownik utworzony pomyślnie.")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

## Kursy

### CreateCourse

Procedura `CreateCourse` tworzy nowy kurs na podstawie podanych danych oraz zwraca jego ID
poprzez argument @course_id.
Argumenty:

- @course_name - Nazwa kursu
- @course_description - Opis kursu
- @product_price MONEY - Cena kursu
- @vacancies - Ilość wolnych miejsc podczas zapisu na kurs
- @course_id - Zwracane ID kursu

```sql
CREATE PROCEDURE [dbo].[CreateCourse]
  @course_name NVARCHAR(50),
  @course_description TEXT = NULL,
  @product_price MONEY = 0,
  @vacancies INT,
  @release DATE,
  @course_id INT OUTPUT
AS
BEGIN
  BEGIN TRANSACTION;

  BEGIN TRY
    -- Add the product
    INSERT INTO PRODUCTS (type_id, price, total_vacancies, release)
    VALUES (3, @product_price, @vacancies, @release);
    -- Get created product ID, return it later
    SET @course_id = SCOPE_IDENTITY();

    -- Add the course
    INSERT INTO COURSES (course_id, course_name, course_description)
    VALUES (@course_id, @course_name, @course_description);

    COMMIT TRANSACTION;
    PRINT 'Kurs dodany pomyślnie.';
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
  END CATCH;
END;
```

### CreateModule

Procedura `CreateModule` tworzy nowy moduł dla istniejącego kursu. Procedura sprawdza poprawność wprowadzanych danych i zwraca identyfikator nowo utworzonego modułu. ID modułu zwracane jest przez @module_id.

Argumenty:

- @course_id - Identyfikator istniejącego kursu, do którego zostanie dodany moduł
- @tutor_id - Identyfikator prowadzącego (nauczyciela) przypisanego do modułu
- @module_id - Zwracane ID modułu

```sql
CREATE PROCEDURE createModule
  @course_id INT,
  @tutor_id INT,
  @module_id INT OUTPUT
AS
BEGIN
  -- Validate that the course exists
  IF NOT EXISTS (SELECT 1 FROM COURSES WHERE course_id = @course_id)
  BEGIN
    RAISERROR('Kurs nie istnieje.', 16, 1);
    RETURN;
  END

  -- Validate that the tutor exists
  IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @tutor_id)
  BEGIN
    RAISERROR('Tutor nie istnieje.', 16, 1);
    RETURN;
  END

  -- Insert the new module
  INSERT INTO MODULES (course_id, tutor_id)
  VALUES (@course_id, @tutor_id);

  -- Return the newly inserted module's ID
  SET @module_id = SCOPE_IDENTITY();
  PRINT("Moduł dodany pomyślnie.")
END
```

### CreateModuleStationaryMeeting

Procedura CreateModuleStationaryMeeting tworzy nowe spotkanie stacjonarne dla modułu kursu. ID spotkania zwracane jest przez @meeting_id

Argumenty:

- @module_id - Identyfikator modułu kursu
- @tutor_id - Identyfikator prowadzącego
- @translator_id - Opcjonalny identyfikator tłumacza
- @meeting_name - Nazwa spotkania
- @term - Termin spotkania
- @duration - Czas trwania spotkania (domyślnie 1h 30min)
- @language - Język spotkania (domyślnie polski)
- @classroom - Numer sali, w której odbędzie się spotkanie
- @meeting_id - Zwracane ID spotkania

```sql
-- Stworzenie Stationary Meetingu dla modułu
CREATE PROCEDURE CreateModuleStationaryMeeting
  @module_id INT,
  @tutor_id INT,
  @translator_id INT = NULL,
  @meeting_name VARCHAR(30),
  @term DATETIME,
  @duration TIME(0) = '01:30:00',
  @language VARCHAR(30) = 'POLISH',
  @classroom VARCHAR(10),
  @meeting_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate module exists
    IF NOT EXISTS (SELECT 1 FROM MODULES WHERE module_id = @module_id)
    BEGIN
      RAISERROR('Moduł o podanym ID nie istnieje.', 16, 1);
      RETURN;
    END

    -- Validate tutor exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @tutor_id)
    BEGIN
      RAISERROR('Tutor o podanym ID nie istnieje.', 16, 1);
      RETURN;
    END

    -- Insert meeting
    INSERT INTO MEETINGS (
      module_id,
      tutor_id,
      translator_id,
      meeting_name,
      term,
      duration,
      language
    ) VALUES (
      @module_id,
      @tutor_id,
      @translator_id,
      @meeting_name,
      @term,
      @duration,
      @language
    );

    -- Get the newly created meeting ID
    SET @meeting_id INT = SCOPE_IDENTITY();

    -- Insert stationary meeting details
    INSERT INTO STATIONARY_MEETINGS (
      meeting_id,
      classroom
    ) VALUES (
      @meeting_id,
      @classroom
    );

    COMMIT TRANSACTION;
    PRINT("Spotkanie dodane pomyślnie")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

### CreateModuleSyncMeeting

Procedura CreateModuleSyncMeeting tworzy nowe spotkanie synchroniczne (na żywo) dla modułu kursu. ID spotkania zwracane jest za pomocą @meeting_id.

Argumenty:

- @module_id - Identyfikator modułu kursu
- @tutor_id - Identyfikator prowadzącego
- @translator_id - Opcjonalny identyfikator tłumacza
- @meeting_name - Nazwa spotkania
- @term - Termin spotkania
- @duration - Czas trwania spotkania (domyślnie 1h 30min)
- @language - Język spotkania (domyślnie polski)
- @meeting_url - Link do spotkania online
- @video_url - Opcjonalny link do nagrania wideo
- @meeting_id - Zwracane ID spotkania

```sql
CREATE PROCEDURE CreateModuleSyncMeeting
    @module_id INT,
    @tutor_id INT,
    @translator_id INT = NULL,
    @meeting_name VARCHAR(30),
    @term DATETIME,
    @duration TIME(0) = '01:30:00',
    @language VARCHAR(30) = 'POLISH',
    @meeting_url TEXT,
    @video_url TEXT = NULL,
    @meeting_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate module exists
    IF NOT EXISTS (SELECT 1 FROM MODULES WHERE module_id = @module_id)
    BEGIN
      RAISERROR('Module does not exist.', 16, 1);
      RETURN;
    END

    -- Validate tutor exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @tutor_id)
    BEGIN
      RAISERROR('Tutor does not exist.', 16, 1);
      RETURN;
    END

    -- Insert meeting
    INSERT INTO MEETINGS (
      module_id,
      tutor_id,
      translator_id,
      meeting_name,
      term,
      duration,
      language
    ) VALUES (
      @module_id,
      @tutor_id,
      @translator_id,
      @meeting_name,
      @term,
      @duration,
      @language
    );

    -- Get the newly created meeting ID
    SET @meeting_id INT = SCOPE_IDENTITY();

    -- Insert sync meeting details
    INSERT INTO SYNC_MEETINGS (
      meeting_id,
      video_url,
      meeting_url
    ) VALUES (
      @meeting_id,
      @video_url,
      @meeting_url
    );

    COMMIT TRANSACTION;
    PRINT "Spoktanie synchroniczne utworzone pomyślnie."
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

### CreateModuleAsyncMeeting

Procedura CreateModuleAsyncMeeting tworzy nowe spotkanie asynchroniczne dla modułu kursu. ID spotkania zwracane jest za pomocą @meeting_id.

Argumenty:

- @module_id - Identyfikator modułu kursu
- @tutor_id - Identyfikator prowadzącego
- @translator_id - Opcjonalny identyfikator tłumacza
- @meeting_name - Nazwa spotkania
- @term - Termin spotkania
- @duration - Czas trwania spotkania (domyślnie 1h 30min)
- @language - Język spotkania (domyślnie polski)
- @meeting_url - Link do materiałów
- @meeting_id - Zwracane ID spotkania

```sql
CREATE PROCEDURE CreateModuleAsyncMeeting
  @module_id INT,
  @tutor_id INT,
  @translator_id INT = NULL,
  @meeting_name VARCHAR(30),
  @term DATETIME,
  @duration TIME(0) = '01:30:00',
  @language VARCHAR(30) = 'POLISH',
  @meeting_url TEXT,
  @meeting_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate module exists
    IF NOT EXISTS (SELECT 1 FROM MODULES WHERE module_id = @module_id)
    BEGIN
      RAISERROR('Module does not exist.', 16, 1);
      RETURN;
    END

    -- Validate tutor exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @tutor_id)
    BEGIN
      RAISERROR('Tutor does not exist.', 16, 1);
      RETURN;
    END

    -- Insert meeting
    INSERT INTO MEETINGS (
      module_id,
      tutor_id,
      translator_id,
      meeting_name,
      term,
      duration,
      language
    ) VALUES (
      @module_id,
      @tutor_id,
      @translator_id,
      @meeting_name,
      @term,
      @duration,
      @language
    );

    -- Get the newly created meeting ID
    SET @meeting_id INT = SCOPE_IDENTITY();

    -- Insert async meeting details
    INSERT INTO ASYNC_MEETINGS (
      meeting_id,
      meeting_url
    ) VALUES (
      @meeting_id,
      @meeting_url
    );

    COMMIT TRANSACTION;
    PRINT("Spotkanie asynchroniczne utworzone pomyślnie.")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

## Webinary

### CreateWebinar

Procedura CreateWebinar tworzy nowy webinar w systemie. ID webinaru jest zwracane za pomocą @webinar_id

Argumenty:

- @tutor_id - Identyfikator prowadzącego webinar
- @translator_id - Opcjonalny identyfikator tłumacza
- @webinar_name - Nazwa webinaru
- @webinar_description - Opcjonalny opis webinaru
- @video_url - Opcjonalny link do nagrania wideo
- @webinar_duration - Czas trwania webinaru (domyślnie 1h 30min)
- @publish_date - Data publikacji webinaru (domyślnie aktualna data)
- @language - Język webinaru (domyślnie polski)
- @product_price - Cena webinaru (domyślnie 0)
- @vacancies - Liczba dostępnych miejsc (domyślnie 30)
- @webinar_id - Wyjściowy identyfikator utworzonego webinaru

```sql
CREATE PROCEDURE CreateWebinar
  @tutor_id INT,
  @translator_id INT = NULL,
  @webinar_name VARCHAR(50),
  @webinar_description TEXT = NULL,
  @video_url TEXT = NULL,
  @webinar_duration TIME(0) = '01:30:00',
  @publish_date DATETIME = NULL,
  @language VARCHAR(50) = 'POLISH',
  @product_price MONEY = 0,
  @vacancies INT = 30,
  @release INT,
  @webinar_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate tutor exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @tutor_id)
    BEGIN
      RAISERROR('Tutor nie istnieje.', 16, 1);
      RETURN;
    END

    -- Validate translator exists if provided
    IF @translator_id IS NOT NULL AND
       NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @translator_id)
    BEGIN
      RAISERROR('Tłumacz nie istnieje.', 16, 1);
      RETURN;
    END

    -- Insert product first (webinars are products)
    DECLARE @product_id INT;
    INSERT INTO PRODUCTS (
      type_id,  -- Assuming type_id 4 is for webinars
      price,
      vacancies,
      release
    ) VALUES (
      4,
      @product_price,
      @vacancies,
      @release
    );

    SET @product_id = SCOPE_IDENTITY();

    -- Insert webinar details
    INSERT INTO WEBINARS (
      webinar_id,
      tutor_id,
      translator_id,
      webinar_name,
      webinar_description,
      video_url,
      webinar_duration,
      publish_date,
      language
    ) VALUES (
      @product_id,
      @tutor_id,
      @translator_id,
      @webinar_name,
      @webinar_description,
      @video_url,
      @webinar_duration,
      COALESCE(@publish_date, GETDATE()),
      @language
    );

    -- Set the output parameter to the new webinar's ID
    SET @webinar_id = @product_id;

    COMMIT TRANSACTION;

    PRINT("Webinar utworzono pomyślnie.")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
```

## Studia

### CreateStudy

Procedura CreateStudy tworzy nowe studia w systemie. ID studium jest zwracane za pomocą @study_id

Argumenty:

- @study_name - Nazwa studiów
- @study_description - Opcjonalny opis studiów
- @product_price - Cena studiów (domyślnie 1000)
- @vacancies - Liczba dostępnych miejsc (domyślnie 30)
- @study_id - Wyjściowy identyfikator utworzonych studiów
