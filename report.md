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

# 1.	Wymagania i funkcje systemu

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
## Kategoria Users
### Tabela Users

Zawiera podstawowe informacje o każdym użytkowniku bazy.

- *user_id* int - klucz główny, identifikuje użytkownika

- username varchar(30)  - nazwa użytkownika w bazie danych

- first_name nvarchar(30) - imię użytkownika

- last_name nvarchar(30) - nazwisko użytkownika

- email varchar(50) - email użytkownika
  - warunek: (mail LIKE '%_@%.%')

- phone varchar(9) nullable - numer telefonu użytkownika
  - warunek: LEN(Phone) = 15 AND ISNUMERIC(Phone) = 1


``` sql
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

### Tabela Students

Zawiera infromacje specyficzne dla studenta

- *student_id* int - klucz główny, identyfikuje studenta

- street varchar(30) - ulica, na której mieszka studenta

- city varchar(30) - miasto, w którym mieszka studenta

- postal_code varchar(30) - kod pocztowy studenta

- country varchar(30)  - kraj pochodzenia studenta

``` sql
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

Zawiera szczególne informacje dla pracowników (dyrektora, pracownika dziekanatu, nauczyciela, tłumacza)

- *emploee_id* int - klucz główny, identyfikator pracownika

- type_id int - typ pracownika (opisany poniżej)

- hire_date date nullable - data zatrudnienia
  - DEFAULT current_date

- birth_date date nullable - data urodzin pracownika
  - DEFAULT current_date

``` sql
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

Zawiera opis typów pracowników

- *type_id* int - klucz główny, typ pracownika <br>
1 - headmaster <br>
2 - administration worker <br>
3 - tutor <br>
4 - translator <br>
- type_name varchar(30) - nazwa pełnionej funkcji

``` sql
-- Table: EMPLOYEE_TYPES
CREATE TABLE EMPLOYEE_TYPES (
    type_id int  NOT NULL IDENTITY,
    type_name varchar(30)  NOT NULL,
    CONSTRAINT EMPLOYEE_TYPES_pk PRIMARY KEY  (type_id)
);
```

## Kategoria Products

### Tabela Products
Zawiera informacje o każdym produkcie w ofercie. Produkt jest rozumiany
jako każda form przeprowadzania zajęć.

- *product_id* int - klucz główny, identyfikuje produkt

- type_id int - numer kategorii produktu

- price money nullable - cena za produkt
  - warunek: prive >= 0
  - DEFAULT 1000

- vacancies int - ilość wolnoch miejsc możliwych do kupienia na dane zajęcia
  - warunek: vacancies >= 0

- total_amount int - liczba wszystkich miejsc na dane zajęcia

``` sql
-- Table: PRODUCTS
CREATE TABLE PRODUCTS (
    product_id int  NOT NULL IDENTITY,
    type_id int  NOT NULL,
    price money  NULL DEFAULT 1000 CHECK (prive>=0),
    vacancies int  NOT NULL CHECK (vacancies>=0),
    total_amount int  NOT NULL DEFAULT 30 CHECK (total_amount>0),
    CONSTRAINT product_id PRIMARY KEY  (product_id)
);
```

### Tabela Product_DETAILS

Zawiera informacje o studentach zapisanych na dane zajęcia oraz o numerze zamówienia z jakiego został kupiony dostęp do zajęć

- student_id int - wchodzi w skład klucza głównego, identyfikuje studenta
- product_id int - wchodzi w skład klucza głównego, identifukuje produkt
- order_id int - identifikuje zamówienie z jakiego został kupiony dostęp do zajęć


``` sql
-- Table: PRODUCTS_DETAILS
CREATE TABLE PRODUCTS_DETAILS (
    student_id int  NOT NULL,
    product_id int  NOT NULL,
    order_id int  NOT NULL,
    CONSTRAINT PRODUCTS_DETAILS_pk PRIMARY KEY  (student_id,product_id)
);
```

### Tabela PRODUCT_TYPES

Zawiera informacje o typach produktów

- type_id int - klucz główny, identyfikuje typ:<br>
1- study, <br>
2 - subject,<br>
3 - course,<br>
 4 - webinar
- type_name varchar(30) - nazwa typu

``` sql
-- Table: PRODUCT_TYPES
CREATE TABLE PRODUCT_TYPES (
    type_id int  NOT NULL IDENTITY,
    type_name varchar(30)  NOT NULL,
    CONSTRAINT PRODUCT_TYPES_pk PRIMARY KEY  (type_id)
);
```

## Kategoria Orders

### Tabela ORDERS

Zawiera informacje na temat zamówienia pod danym identyfikatorem

- order_id int - klucz główny, identyfikator zamówienia

- student_id int - identyfikator studenta

- order_date datetime nullable - data złożenia zamówienia

- complete_payment_date datetime nullable - data opłacenia pełnej kwoty zamówienia

- paid int - kwota, którą zapłacił student w ramach zamówienia (nie musi być to pełna kwota zamówienia)

``` sql
-- Table: ORDERS
CREATE TABLE ORDERS (
    order_id int  NOT NULL IDENTITY,
    student_id int  NOT NULL,
    order_date datetime  NOT NULL DEFAULT actual_date,
    complete_payment_date datetime  NULL,
    paid int  NOT NULL DEFAULT 0 CHECK (paid>=0),
    CONSTRAINT ORDERS_pk PRIMARY KEY  (order_id)
);
```

### Tabela ORDER_DETAILS

Tabela zawiera informacje o produktach wchodzących w skład danego zamówienia i rabacie udzielonym dla danego zamówienia

- order_id int - wchodzi w skład klucza głównego, identifikator zamówienia

- product_id int - wchodzi w skład klucza głównego, identyfikator produktu

- discount int - rabat udzielony dla zamówienia
  - Warunki: discount >= 0 and discount <= 1
  - DEFAULT 0

``` sql
-- Table: ORDER_DETAILS
CREATE TABLE ORDER_DETAILS (
   order_id int  NOT NULL,
   product_id int  NOT NULL,
   discount int  NOT NULL DEFAULT 0 CHECK (discount >= 0 and discount <= 1),
   CONSTRAINT ORDER_DETAILS_pk PRIMARY KEY  (order_id,product_id)
);
```

### Tabela PAYMENTS

Zawiera informacje o płatności dołączonej do danego zamówienia

- payment_id int - klucz główny, identyfikator płatności

- order_id int - identifikator zamówienia

- payment_date date - data dokonania płatności

- payment_value money - opłacona płatności
  - warunek: payment_value >= 0

``` sql
-- Table: PAYMENTS
CREATE TABLE PAYMENTS (
    payment_id int  NOT NULL IDENTITY,
    order_id int  NOT NULL,
    payment_date date  NOT NULL DEFAULT actual_date,
    payment_value money  NOT NULL CHECK (payment_value>=0),
    CONSTRAINT PAYMENTS_pk PRIMARY KEY  (payment_id)
);
```

## Kategoria Webinars

### Tabela Webinars

Zawiera informacje specyfinczne dla każdego produktu będącego webinarem

- webinar_id int - klucz główny, identifikator webinaru 

- tutor_id int - identifikator nauczyciela

- translator_id int nullable - identifikator tłumacza

- webinar_name varchar(50) - nazwa webinaru 

- webinar_description text nullable - opis webinaru 

- video_url text nullable - link do zapisu webinaru

- webinar_duration time(0) - czas trwania webinaru

  - warunek: DurationTime > '00:00:00'

  - DEFAULT 01:30:00

- publish_date datetime - data przeprowadzenia i udostępnięnia materiałów video

- language varchar(50) - język w jakim był prowadzony webinar
  - DEFAULT 'POLISH'

``` sql
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

Zawiera informacje o produktach, które są kursami

- course_id int - klucz główny, identifikator kursu

- course_name nvarchar(50) - nazwa kursu

- course_description text nullable - opis kursu

``` sql
-- Table: COURSES
CREATE TABLE COURSES (
    course_id int  NOT NULL,
    course_name nvarchar(50)  NOT NULL,
    course_description text  NULL,
    CONSTRAINT COURSES_pk PRIMARY KEY  (course_id)
);
```

### Tabela MODULES

Zawiera szczegółowe informacje dla każdego modułu kursu

- module_id int - klucz główny, identifikator modułu

- course_id int - identifikator kursu, z którego pochodzi

- tutor_id int - identifikator nauczyciela, który prowadzi dany moduł

``` SQL
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

Zawiera ogólne informacje o danych studiach

- study_id int - klucz główny, identifikator studium

- study_name nvarchar(50) - nazwa studium

- study_description text nullable - opis studium

``` sql
-- Table: STUDIES
CREATE TABLE STUDIES (
    study_id int  NOT NULL,
    study_name nvarchar(50)  NOT NULL,
    study_description text  NULL,
    CONSTRAINT STUDIES_pk PRIMARY KEY  (study_id)
);
```

### Tabela SUBJECTS

Zawiera informacje szczegółowe inforamcje dotyczące przedmiotow

- subject_id int - klucz główny, identifikator przedmiotu

- subject_name varchar(50) - nazwa przedmiotu

- subject_description text nullable - opis przedmiotu

- study_id int - identifikator studiów, z których pochodzi przedmiot

- tutor_id int - identifikator nauczyciela, który uczy dany przedmiot


``` sql
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

### Tabela INTERSHIPS

Zawiera informacje o praktykach prowadzonych na danych studiach

- internship_id - klucz główny, identifikator praktyk

- study_id int - identifikator studiów

- start_date date nullable - data rozpoczęcia praktyk

``` sql
-- Table: INTERSHIPS
CREATE TABLE INTERSHIPS (
   internship_id int  NOT NULL IDENTITY,
   study_id int  NOT NULL,
   start_date date  NULL,
   CONSTRAINT INTERSHIPS_pk PRIMARY KEY  (internship_id)
);
```

### Tabela INTERSHIPS_DETAILS

Zawiera szczegółowe informacje na temat danych praktyk

- internship_id int - klucz główny, identifikator praktyk

- student_id int -identifikator studenta biorącego udział w praktykach

- date date - data dnia praktyk

- attendance bit - obecność, <br>
1 - student uczestniczył w praktykach danego dnia, <br>
0 - student nie uczestniczył w praktykach danego dnia

``` sql
-- Table: INTERSHIP_DETAILS
-- Table: INTERSHIP_DETAILS
CREATE TABLE INTERSHIP_DETAILS (
   internship_id int  NOT NULL,
   student_id int  NOT NULL,
   date date  NOT NULL,
   attendance bit  NOT NULL,
   CONSTRAINT INTERSHIP_DETAILS_pk PRIMARY KEY  (internship_id)
);
```

## Kategoria MEETINGS

### Tabela MEETINGS

Zawiera ogólne informacje na temat spotkania

- meeting_id int - klucz główny, identifikator spotkania

- tutor_id int - identifikator nauczyciela prowadzącego spotkanie

- translator_id int nullable nullable - identifikator tłumacza tłumaczącego spotkanie

- meeting_name varchar(30) - nazwa spotkania

- term datetime - data i godzina spotkania

- duration time(0) nullable - czas trwania spotkania
  - Warunek: duration > '00:00:00'
  - DEFAULT 01:30:00

- language varchar(30) - język w jakim przeprowadza się spotkanie
  - DEFAULT 'POLISH'

``` sql
-- Table: MEETINGS
CREATE TABLE MEETINGS (
   meeting_id int  NOT NULL IDENTITY,
   tutor_id int  NOT NULL,
   translator_id int  NULL,
   meeting_name varchar(30)  NOT NULL,
   term datetime  NOT NULL,
   duration time(0)  NULL DEFAULT 01:30:00 CHECK (duration>'00:00:00'),
   language varchar(30)  NOT NULL DEFAULT 'POLISH',
   CONSTRAINT MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

### Tabela MEETING_DETAILS

Zawiera szczegółowe informacje na temat osób biorących udział w spotkaniu

- meeting_id int - klucz główny, identyfikator spotkania

- student_id int - identyfiaktor studenta, zapisanego na spotkanie

- attendance bit - obecność, <br>
1 - student uczestniczył w spotkaniu, <br>
0 - student nie uczestniczył w spotkaniu

``` sql
-- Table: MEETING_DETAILS
CREATE TABLE MEETING_DETAILS (
   meeting_id int  NOT NULL,
   student_id int  NOT NULL,
   attendance bit  NOT NULL,
   CONSTRAINT MEETING_DETAILS_pk PRIMARY KEY  (meeting_id,student_id)
);
```

### Tabela SUBJECT_MEETINGS

Tabela posiada identyfikatory spotkań, które odbywają się w ramach danego przedmiotu wraz z jego identyfikatorem

- subject_id int - wchodzi w skład klucza głównego, identyfikator przedmiotu

- meeting_id int - wchodzi w skład klucza głównego, identyfikator spotkania

``` sql
-- Table: SUBJECT_MEETINGS
CREATE TABLE SUBJECT_MEETINGS (
   subject_id int  NOT NULL,
   meeting_id int  NOT NULL,
   CONSTRAINT SUBJECT_MEETINGS_pk PRIMARY KEY  (subject_id,meeting_id)
);
```

### Tabela SUBJECT_MODULES

Tabela posiada identyfikatory spotkań, które odbywają się w ramach danego modułu kursu wraz z jego identyfikatorem

- module_id int - wchodzi w skład klucza głównego, identyfikator modułu

- meeting_id int - wchodzi w skład klucza głównego, identyfikator spotkania

``` sql
-- Table: MODULE_MEETINGS
CREATE TABLE MODULE_MEETINGS (
   module_id int  NOT NULL,
   meeting_id int  NOT NULL,
   CONSTRAINT MODULE_MEETINGS_pk PRIMARY KEY  (module_id,meeting_id)
);
```

### Tabela ASYNC_MEETINGS

Zawiera dane dotyczące spotkań internetowych, które nie są na żywo

- meeting_id int - klucz główny, identyfikator spotkania

- meeting_url text - link do spotkania

``` sql
-- Table: ASYNC_MEETINGS
CREATE TABLE ASYNC_MEETINGS (
   meeting_id int  NOT NULL,
   meeting_url text  NOT NULL,
   CONSTRAINT ASYNC_MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

### Tabela SYNC_MEETINGS

Zawiera dane dotyczące spotkań internetowych, które są na żywo

- meeting_id int - klucz główny, identyfikator spotkania

- video_url text nullable - link do zapisu video spotkania

- meeting_url text - link do spotkania

``` sql
-- Table: SYNC_MEETINGS
CREATE TABLE SYNC_MEETINGS (
   meeting_id int  NOT NULL,
   video_url text  NULL,
   meeting_url text  NOT NULL,
   CONSTRAINT SYNC_MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```

### STATIONARY_MEETINGS

Zawiera dane dotyczące spotkań internetowych, które są stacjonarnie

- meeting_id int - klucz główny, identyfikator spotkania

- classroom varchar(10) - numer pokoju, w którym przeprowadzane jest spotkanie

``` sql
-- Table: STATIONARY_MEETINGS
CREATE TABLE STATIONARY_MEETINGS (
   meeting_id int  NOT NULL,
   classroom varchar(10)  NOT NULL,
   CONSTRAINT STATIONARY_MEETINGS_pk PRIMARY KEY  (meeting_id)
);
```