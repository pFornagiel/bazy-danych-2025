# Database Documentation

## Table: ASYNC_MEETINGS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| meeting_id  | int       | Primary Key<br>Foreign Key |
| video_url   | text      |                            |

## Table: COUNTRIES

| Column Name  | Data Type    | Properties  |
| ------------ | ------------ | ----------- |
| country_id   | int          | Primary Key |
| country_name | nvarchar(30) |             |

## Table: COURSES

| Column Name        | Data Type    | Properties                 |
| ------------------ | ------------ | -------------------------- |
| course_id          | int          | Primary Key<br>Foreign Key |
| course_name        | nvarchar(50) |                            |
| course_description | text         |                            |
| advance_share      | decimal(5,4) |                            |

## Table: EMPLOYEES

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| employee_id | int       | Primary Key<br>Foreign Key |
| type_id     | int       |                            |
| hire_date   | date      |                            |
| birth_date  | date      |                            |

## Table: EMPLOYEE_TYPES

| Column Name | Data Type   | Properties  |
| ----------- | ----------- | ----------- |
| type_id     | int         | Primary Key |
| type_name   | varchar(30) |             |

## Table: FEES

| Column Name  | Data Type | Properties                 |
| ------------ | --------- | -------------------------- |
| fee_id       | int       | Primary Key<br>Foreign Key |
| product_id   | int       |                            |
| order_id     | int       |                            |
| type_id      | int       |                            |
| fee_value    | money     |                            |
| due_date     | date      |                            |
| payment_date | date      |                            |

## Table: FEE_TYPES

| Column Name | Data Type    | Properties  |
| ----------- | ------------ | ----------- |
| type_id     | int          | Primary Key |
| type_name   | nvarchar(30) |             |

## Table: INTERSHIPS

| Column Name   | Data Type | Properties                 |
| ------------- | --------- | -------------------------- |
| internship_id | int       | Primary Key<br>Foreign Key |
| study_id      | int       |                            |
| start_date    | date      |                            |
| end_date      | date      |                            |

## Table: INTERSHIP_DETAILS

| Column Name   | Data Type | Properties                 |
| ------------- | --------- | -------------------------- |
| internship_id | int       | Primary Key<br>Foreign Key |
| student_id    | int       | Primary Key<br>Foreign Key |
| passed        | bit       |                            |

## Table: LANGUAGES

| Column Name   | Data Type   | Properties  |
| ------------- | ----------- | ----------- |
| language_id   | int         | Primary Key |
| language_name | varchar(30) |             |

## Table: MEETINGS

| Column Name   | Data Type   | Properties                 |
| ------------- | ----------- | -------------------------- |
| meeting_id    | int         | Primary Key<br>Foreign Key |
| tutor_id      | int         |                            |
| translator_id | int         |                            |
| meeting_name  | varchar(30) |                            |
| term          | datetime    |                            |
| duration      | time(0)     |                            |
| language_id   | int         |                            |
| module_id     | int         |                            |
| session_id    | int         |                            |

## Table: MEETING_DETAILS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| meeting_id  | int       | Primary Key<br>Foreign Key |
| student_id  | int       | Primary Key<br>Foreign Key |
| attendance  | bit       |                            |

## Table: MODULES

| Column Name        | Data Type    | Properties                 |
| ------------------ | ------------ | -------------------------- |
| module_id          | int          | Primary Key<br>Foreign Key |
| course_id          | int          |                            |
| tutor_id           | int          |                            |
| module_name        | nvarchar(50) |                            |
| module_description | text         |                            |

## Table: ORDERS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| order_id    | int       | Primary Key<br>Foreign Key |
| student_id  | int       |                            |
| order_date  | date      |                            |

## Table: PRODUCTS

| Column Name     | Data Type | Properties                 |
| --------------- | --------- | -------------------------- |
| product_id      | int       | Primary Key<br>Foreign Key |
| type_id         | int       |                            |
| price           | money     |                            |
| total_vacancies | int       |                            |
| release         | date      |                            |

## Table: PRODUCT_DETAILS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| student_id  | int       | Primary Key<br>Foreign Key |
| product_id  | int       | Primary Key<br>Foreign Key |
| order_id    | int       |                            |
| passed      | bit       |                            |

## Table: PRODUCT_TYPES

| Column Name | Data Type   | Properties  |
| ----------- | ----------- | ----------- |
| type_id     | int         | Primary Key |
| type_name   | varchar(30) |             |

## Table: SESSIONS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| session_id  | int       | Primary Key<br>Foreign Key |
| subject_id  | int       |                            |

## Table: SHOPPING_CART

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| student_id  | int       | Primary Key<br>Foreign Key |
| product_id  | int       | Primary Key<br>Foreign Key |

## Table: STATIONARY_MEETINGS

| Column Name | Data Type   | Properties                 |
| ----------- | ----------- | -------------------------- |
| meeting_id  | int         | Primary Key<br>Foreign Key |
| classroom   | varchar(10) |                            |

## Table: STUDENTS

| Column Name | Data Type   | Properties                 |
| ----------- | ----------- | -------------------------- |
| student_id  | int         | Primary Key<br>Foreign Key |
| street      | varchar(30) |                            |
| city        | varchar(30) |                            |
| postal_code | varchar(30) |                            |
| country_id  | int         |                            |

## Table: STUDIES

| Column Name       | Data Type    | Properties                 |
| ----------------- | ------------ | -------------------------- |
| study_id          | int          | Primary Key<br>Foreign Key |
| study_name        | nvarchar(50) |                            |
| study_description | text         |                            |

## Table: SUBJECTS

| Column Name         | Data Type   | Properties                 |
| ------------------- | ----------- | -------------------------- |
| subject_id          | int         | Primary Key<br>Foreign Key |
| study_id            | int         |                            |
| tutor_id            | int         |                            |
| subject_name        | varchar(50) |                            |
| subject_description | text        |                            |

## Table: SYNC_MEETINGS

| Column Name | Data Type | Properties                 |
| ----------- | --------- | -------------------------- |
| meeting_id  | int       | Primary Key<br>Foreign Key |
| video_url   | text      |                            |
| meeting_url | text      |                            |

## Table: USERS

| Column Name | Data Type    | Properties  |
| ----------- | ------------ | ----------- |
| user_id     | int          | Primary Key |
| username    | varchar(30)  |             |
| first_name  | nvarchar(30) |             |
| last_name   | nvarchar(30) |             |
| email       | varchar(50)  |             |
| phone       | varchar(13)  |             |
| CONSTRAINT  | unique_email |             |
| CONSTRAINT  | unique_phone |             |

## Table: WEBINARS

| Column Name         | Data Type   | Properties                 |
| ------------------- | ----------- | -------------------------- |
| webinar_id          | int         | Primary Key<br>Foreign Key |
| tutor_id            | int         |                            |
| translator_id       | int         |                            |
| webinar_name        | varchar(50) |                            |
| webinar_description | text        |                            |
| meeting_url         | text        |                            |
| video_url           | text        |                            |
| webinar_duration    | time(0)     |                            |
| publish_date        | datetime    |                            |
| language_id         | int         |                            |

# Foreign Key Documentation

| Table Name          | FK Column     | Referenced Table | Referenced Column |
| ------------------- | ------------- | ---------------- | ----------------- |
| ASYNC_MEETINGS      | meeting_id    | MEETINGS         | meeting_id        |
| SHOPPING_CART       | product_id    | PRODUCTS         | product_id        |
| SHOPPING_CART       | student_id    | STUDENTS         | student_id        |
| COURSES             | course_id     | PRODUCTS         | product_id        |
| EMPLOYEES           | type_id       | EMPLOYEE_TYPES   | type_id           |
| EMPLOYEES           | employee_id   | USERS            | user_id           |
| WEBINARS            | tutor_id      | EMPLOYEES        | employee_id       |
| FEES                | order_id      | ORDERS           | order_id          |
| FEES                | product_id    | PRODUCTS         | product_id        |
| FEES                | type_id       | FEE_TYPES        | type_id           |
| INTERSHIPS          | study_id      | STUDIES          | study_id          |
| INTERSHIP_DETAILS   | internship_id | INTERSHIPS       | internship_id     |
| INTERSHIP_DETAILS   | student_id    | STUDENTS         | student_id        |
| MEETINGS            | language_id   | LANGUAGES        | language_id       |
| WEBINARS            | language_id   | LANGUAGES        | language_id       |
| MEETINGS            | module_id     | MODULES          | module_id         |
| MEETINGS            | session_id    | SESSIONS         | session_id        |
| MEETING_DETAILS     | meeting_id    | MEETINGS         | meeting_id        |
| MEETING_DETAILS     | student_id    | STUDENTS         | student_id        |
| MEETINGS            | tutor_id      | EMPLOYEES        | employee_id       |
| MEETINGS            | translator_id | EMPLOYEES        | employee_id       |
| MODULES             | course_id     | COURSES          | course_id         |
| MODULES             | tutor_id      | EMPLOYEES        | employee_id       |
| PRODUCT_DETAILS     | order_id      | ORDERS           | order_id          |
| PRODUCT_DETAILS     | product_id    | PRODUCTS         | product_id        |
| PRODUCT_DETAILS     | student_id    | STUDENTS         | student_id        |
| PRODUCTS            | type_id       | PRODUCT_TYPES    | type_id           |
| SUBJECTS            | subject_id    | PRODUCTS         | product_id        |
| SESSIONS            | session_id    | PRODUCTS         | product_id        |
| SESSIONS            | subject_id    | SUBJECTS         | subject_id        |
| STATIONARY_MEETINGS | meeting_id    | MEETINGS         | meeting_id        |
| STUDENTS            | country_id    | COUNTRIES        | country_id        |
| ORDERS              | student_id    | STUDENTS         | student_id        |
| STUDIES             | study_id      | PRODUCTS         | product_id        |
| SUBJECTS            | tutor_id      | EMPLOYEES        | employee_id       |
| SUBJECTS            | study_id      | STUDIES          | study_id          |
| SYNC_MEETINGS       | meeting_id    | MEETINGS         | meeting_id        |
| STUDENTS            | student_id    | USERS            | user_id           |
| WEBINARS            | translator_id | EMPLOYEES        | employee_id       |
| WEBINARS            | webinar_id    | PRODUCTS         | product_id        |
