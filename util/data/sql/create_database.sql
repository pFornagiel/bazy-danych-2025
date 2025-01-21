-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2025-01-09 09:16:18.788

-- tables
-- Table: ASYNC_MEETINGS
CREATE TABLE ASYNC_MEETINGS (
    meeting_id int  NOT NULL,
    video_url text  NOT NULL,
    CONSTRAINT ASYNC_MEETINGS_pk PRIMARY KEY  (meeting_id)
);

-- Table: COUNTRIES
CREATE TABLE COUNTRIES (
    country_id int  NOT NULL,
    country_name nvarchar(30)  NOT NULL,
    CONSTRAINT COUNTRIES_pk PRIMARY KEY  (country_id)
);

-- Table: COURSES
CREATE TABLE COURSES (
    course_id int  NOT NULL,
    course_name nvarchar(50)  NOT NULL,
    course_description text  NULL,
    advance_share decimal(5,4)  NOT NULL DEFAULT 0.3000 CHECK (advance_share >= 0 and advance_share <= 1),
    CONSTRAINT COURSES_pk PRIMARY KEY  (course_id)
);

-- Table: EMPLOYEES
CREATE TABLE EMPLOYEES (
    employee_id int  NOT NULL,
    type_id int  NOT NULL,
    hire_date date  NULL,
    birth_date date  NULL,
    CONSTRAINT EMPLOYEES_pk PRIMARY KEY  (employee_id)
);

-- Table: EMPLOYEE_TYPES
CREATE TABLE EMPLOYEE_TYPES (
    type_id int  NOT NULL,
    type_name varchar(30)  NOT NULL,
    CONSTRAINT EMPLOYEE_TYPES_pk PRIMARY KEY  (type_id)
);

-- Table: FEES
CREATE TABLE FEES (
    fee_id int  NOT NULL IDENTITY,
    product_id int  NOT NULL,
    order_id int  NOT NULL,
    type_id int  NOT NULL,
    fee_value money  NOT NULL CHECK (fee_value>=0),
    due_date date  NOT NULL DEFAULT GETDATE(),
    payment_date date  NULL,
    CONSTRAINT FEES_pk PRIMARY KEY  (fee_id)
);

-- Table: FEE_TYPES
CREATE TABLE FEE_TYPES (
    type_id int  NOT NULL,
    type_name nvarchar(30)  NOT NULL,
    CONSTRAINT FEE_TYPES_pk PRIMARY KEY  (type_id)
);

-- Table: INTERSHIPS
CREATE TABLE INTERSHIPS (
    internship_id int  NOT NULL IDENTITY,
    study_id int  NOT NULL,
    start_date date  NOT NULL,
    end_date date  NOT NULL,
    CONSTRAINT INTERSHIPS_pk PRIMARY KEY  (internship_id)
);

-- Table: INTERSHIP_DETAILS
CREATE TABLE INTERSHIP_DETAILS (
    internship_id int  NOT NULL,
    student_id int  NOT NULL,
    passed bit  NOT NULL,
    CONSTRAINT INTERSHIP_DETAILS_pk PRIMARY KEY  (internship_id,student_id)
);

-- Table: LANGUAGES
CREATE TABLE LANGUAGES (
    language_id int  NOT NULL,
    language_name varchar(30)  NOT NULL,
    CONSTRAINT LANGUAGES_pk PRIMARY KEY  (language_id)
);

-- Table: MEETINGS
CREATE TABLE MEETINGS (
    meeting_id int  NOT NULL IDENTITY,
    tutor_id int  NOT NULL,
    translator_id int  NULL,
    meeting_name varchar(30)  NOT NULL,
    term datetime  NOT NULL,
    duration time(0)  NULL DEFAULT '01:30:00' CHECK (duration>'00:00:00'),
    language_id int  NOT NULL DEFAULT 'POLISH',
    module_id int  NULL,
    session_id int  NULL,
    CONSTRAINT MEETINGS_pk PRIMARY KEY  (meeting_id)
);

-- Table: MEETING_DETAILS
CREATE TABLE MEETING_DETAILS (
    meeting_id int  NOT NULL,
    student_id int  NOT NULL,
    attendance bit  NULL,
    CONSTRAINT MEETING_DETAILS_pk PRIMARY KEY  (meeting_id,student_id)
);

-- Table: MODULES
CREATE TABLE MODULES (
    module_id int  NOT NULL IDENTITY,
    course_id int  NOT NULL,
    tutor_id int  NOT NULL,
    module_name nvarchar(50)  NOT NULL,
    module_description text  NOT NULL,
    CONSTRAINT MODULES_pk PRIMARY KEY  (module_id)
);

-- Table: ORDERS
CREATE TABLE ORDERS (
    order_id int  NOT NULL IDENTITY,
    student_id int  NOT NULL,
    order_date date  NOT NULL DEFAULT GETDATE(),
    CONSTRAINT ORDERS_pk PRIMARY KEY  (order_id)
);

-- Table: PRODUCTS
CREATE TABLE PRODUCTS (
    product_id int  NOT NULL IDENTITY,
    type_id int  NOT NULL,
    price money  NULL DEFAULT 1000 CHECK (price>=0),
    total_vacancies int  NOT NULL DEFAULT 30 CHECK (total_vacancies>0),
    release date  NOT NULL,
    CONSTRAINT product_id PRIMARY KEY  (product_id)
);

-- Table: PRODUCT_DETAILS
CREATE TABLE PRODUCT_DETAILS (
    student_id int  NOT NULL,
    product_id int  NOT NULL,
    order_id int  NOT NULL,
    passed bit  NOT NULL DEFAULT 0,
    CONSTRAINT PRODUCT_DETAILS_pk PRIMARY KEY  (student_id,product_id)
);

-- Table: PRODUCT_TYPES
CREATE TABLE PRODUCT_TYPES (
    type_id int  NOT NULL,
    type_name varchar(30)  NOT NULL,
    CONSTRAINT PRODUCT_TYPES_pk PRIMARY KEY  (type_id)
);

-- Table: SESSIONS
CREATE TABLE SESSIONS (
    session_id int  NOT NULL,
    subject_id int  NOT NULL,
    CONSTRAINT SESSIONS_pk PRIMARY KEY  (session_id)
);

-- Table: SHOPPING_CART
CREATE TABLE SHOPPING_CART (
    student_id int  NOT NULL,
    product_id int  NOT NULL,
    CONSTRAINT SHOPPING_CART_pk PRIMARY KEY  (student_id,product_id)
);

-- Table: STATIONARY_MEETINGS
CREATE TABLE STATIONARY_MEETINGS (
    meeting_id int  NOT NULL,
    classroom varchar(10)  NOT NULL,
    CONSTRAINT STATIONARY_MEETINGS_pk PRIMARY KEY  (meeting_id)
);

-- Table: STUDENTS
CREATE TABLE STUDENTS (
    student_id int  NOT NULL,
    street varchar(30)  NOT NULL,
    city varchar(30)  NOT NULL,
    postal_code varchar(30)  NOT NULL,
    country_id int  NOT NULL,
    CONSTRAINT STUDENTS_pk PRIMARY KEY  (student_id)
);

-- Table: STUDIES
CREATE TABLE STUDIES (
    study_id int  NOT NULL,
    study_name nvarchar(50)  NOT NULL,
    study_description text  NULL,
    CONSTRAINT STUDIES_pk PRIMARY KEY  (study_id)
);

-- Table: SUBJECTS
CREATE TABLE SUBJECTS (
    subject_id int  NOT NULL,
    study_id int  NOT NULL,
    tutor_id int  NOT NULL,
    subject_name varchar(50)  NOT NULL,
    subject_description text  NULL,
    CONSTRAINT SUBJECTS_pk PRIMARY KEY  (subject_id)
);

-- Table: SYNC_MEETINGS
CREATE TABLE SYNC_MEETINGS (
    meeting_id int  NOT NULL,
    video_url text  NULL,
    meeting_url text  NOT NULL,
    CONSTRAINT SYNC_MEETINGS_pk PRIMARY KEY  (meeting_id)
);

-- Table: USERS
CREATE TABLE USERS (
    user_id int  NOT NULL IDENTITY,
    username varchar(30)  NOT NULL,
    first_name nvarchar(30)  NOT NULL,
    last_name nvarchar(30)  NOT NULL,
    email varchar(50)  NOT NULL CHECK (email LIKE '%_@%.%'),
    phone varchar(13)  NULL CHECK (LEN(Phone) = 9 AND ISNUMERIC(Phone) = 1),
    CONSTRAINT unique_email UNIQUE (email),
    CONSTRAINT unique_phone UNIQUE (phone),
    CONSTRAINT USERS_pk PRIMARY KEY  (user_id)
);

-- Table: WEBINARS
CREATE TABLE WEBINARS (
    webinar_id int  NOT NULL,
    tutor_id int  NOT NULL,
    translator_id int  NULL,
    webinar_name varchar(50)  NOT NULL,
    webinar_description text  NULL,
    meeting_url text  NOT NULL,
    video_url text  NULL,
    webinar_duration time(0)  NULL DEFAULT '01:30:00' CHECK (webinar_duration > '00:00:00'),
    publish_date datetime  NOT NULL,
    language_id int  NOT NULL DEFAULT 'POLISH',
    CONSTRAINT WEBINARS_pk PRIMARY KEY  (webinar_id)
);

-- foreign keys
-- Reference: ASYNC_MEETING_MEETING_GROUP (table: ASYNC_MEETINGS)
ALTER TABLE ASYNC_MEETINGS ADD CONSTRAINT ASYNC_MEETING_MEETING_GROUP
    FOREIGN KEY (meeting_id)
    REFERENCES MEETINGS (meeting_id);

-- Reference: Cart_PRODUCTS (table: SHOPPING_CART)
ALTER TABLE SHOPPING_CART ADD CONSTRAINT Cart_PRODUCTS
    FOREIGN KEY (product_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: Cart_STUDENTS (table: SHOPPING_CART)
ALTER TABLE SHOPPING_CART ADD CONSTRAINT Cart_STUDENTS
    FOREIGN KEY (student_id)
    REFERENCES STUDENTS (student_id);

-- Reference: Course_Products (table: COURSES)
ALTER TABLE COURSES ADD CONSTRAINT Course_Products
    FOREIGN KEY (course_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: EMPLOYEE_TYPE_EMPLOYEE (table: EMPLOYEES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEE_TYPE_EMPLOYEE
    FOREIGN KEY (type_id)
    REFERENCES EMPLOYEE_TYPES (type_id);

-- Reference: EMPLOYEE_USER (table: EMPLOYEES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEE_USER
    FOREIGN KEY (employee_id)
    REFERENCES USERS (user_id);

-- Reference: EMPLOYEE_WEBINAR (table: WEBINARS)
ALTER TABLE WEBINARS ADD CONSTRAINT EMPLOYEE_WEBINAR
    FOREIGN KEY (tutor_id)
    REFERENCES EMPLOYEES (employee_id);

-- Reference: FEES_ORDERS (table: FEES)
ALTER TABLE FEES ADD CONSTRAINT FEES_ORDERS
    FOREIGN KEY (order_id)
    REFERENCES ORDERS (order_id);

-- Reference: FEES_PRODUCTS (table: FEES)
ALTER TABLE FEES ADD CONSTRAINT FEES_PRODUCTS
    FOREIGN KEY (product_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: FEE_FEE_TYPE (table: FEES)
ALTER TABLE FEES ADD CONSTRAINT FEE_FEE_TYPE
    FOREIGN KEY (type_id)
    REFERENCES FEE_TYPES (type_id);

-- Reference: Internship_STUDY (table: INTERSHIPS)
ALTER TABLE INTERSHIPS ADD CONSTRAINT Internship_STUDY
    FOREIGN KEY (study_id)
    REFERENCES STUDIES (study_id);

-- Reference: Internship_details_Internship (table: INTERSHIP_DETAILS)
ALTER TABLE INTERSHIP_DETAILS ADD CONSTRAINT Internship_details_Internship
    FOREIGN KEY (internship_id)
    REFERENCES INTERSHIPS (internship_id);

-- Reference: Internship_details_STUDENT (table: INTERSHIP_DETAILS)
ALTER TABLE INTERSHIP_DETAILS ADD CONSTRAINT Internship_details_STUDENT
    FOREIGN KEY (student_id)
    REFERENCES STUDENTS (student_id);

-- Reference: LANGUAGES_MEETINGS (table: MEETINGS)
ALTER TABLE MEETINGS ADD CONSTRAINT LANGUAGES_MEETINGS
    FOREIGN KEY (language_id)
    REFERENCES LANGUAGES (language_id);

-- Reference: LANGUAGES_WEBINARS (table: WEBINARS)
ALTER TABLE WEBINARS ADD CONSTRAINT LANGUAGES_WEBINARS
    FOREIGN KEY (language_id)
    REFERENCES LANGUAGES (language_id);

-- Reference: MEETINGS_MODULES (table: MEETINGS)
ALTER TABLE MEETINGS ADD CONSTRAINT MEETINGS_MODULES
    FOREIGN KEY (module_id)
    REFERENCES MODULES (module_id);

-- Reference: MEETINGS_SESSIONS (table: MEETINGS)
ALTER TABLE MEETINGS ADD CONSTRAINT MEETINGS_SESSIONS
    FOREIGN KEY (session_id)
    REFERENCES SESSIONS (session_id);

-- Reference: MEETING_DETAILS_MEETING (table: MEETING_DETAILS)
ALTER TABLE MEETING_DETAILS ADD CONSTRAINT MEETING_DETAILS_MEETING
    FOREIGN KEY (meeting_id)
    REFERENCES MEETINGS (meeting_id);

-- Reference: MEETING_DETAILS_STUDENT (table: MEETING_DETAILS)
ALTER TABLE MEETING_DETAILS ADD CONSTRAINT MEETING_DETAILS_STUDENT
    FOREIGN KEY (student_id)
    REFERENCES STUDENTS (student_id);

-- Reference: MEETING_EMPLOYEE (table: MEETINGS)
ALTER TABLE MEETINGS ADD CONSTRAINT MEETING_EMPLOYEE
    FOREIGN KEY (tutor_id)
    REFERENCES EMPLOYEES (employee_id);

-- Reference: MEETING_TRANSLATORS (table: MEETINGS)
ALTER TABLE MEETINGS ADD CONSTRAINT MEETING_TRANSLATORS
    FOREIGN KEY (translator_id)
    REFERENCES EMPLOYEES (employee_id);

-- Reference: MODULE_Course (table: MODULES)
ALTER TABLE MODULES ADD CONSTRAINT MODULE_Course
    FOREIGN KEY (course_id)
    REFERENCES COURSES (course_id);

-- Reference: MODULE_EMPLOYEE (table: MODULES)
ALTER TABLE MODULES ADD CONSTRAINT MODULE_EMPLOYEE
    FOREIGN KEY (tutor_id)
    REFERENCES EMPLOYEES (employee_id);

-- Reference: PRODUCTS_DETAILS_ORDER (table: PRODUCT_DETAILS)
ALTER TABLE PRODUCT_DETAILS ADD CONSTRAINT PRODUCTS_DETAILS_ORDER
    FOREIGN KEY (order_id)
    REFERENCES ORDERS (order_id);

-- Reference: PRODUCTS_DETAILS_PRODUCT (table: PRODUCT_DETAILS)
ALTER TABLE PRODUCT_DETAILS ADD CONSTRAINT PRODUCTS_DETAILS_PRODUCT
    FOREIGN KEY (product_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: PRODUCTS_DETAILS_STUDENT (table: PRODUCT_DETAILS)
ALTER TABLE PRODUCT_DETAILS ADD CONSTRAINT PRODUCTS_DETAILS_STUDENT
    FOREIGN KEY (student_id)
    REFERENCES STUDENTS (student_id);

-- Reference: PRODUCT_PRODUCT_TYPE (table: PRODUCTS)
ALTER TABLE PRODUCTS ADD CONSTRAINT PRODUCT_PRODUCT_TYPE
    FOREIGN KEY (type_id)
    REFERENCES PRODUCT_TYPES (type_id);

-- Reference: Products_SUBJECT (table: SUBJECTS)
ALTER TABLE SUBJECTS ADD CONSTRAINT Products_SUBJECT
    FOREIGN KEY (subject_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: SESSIONS_PRODUCTS (table: SESSIONS)
ALTER TABLE SESSIONS ADD CONSTRAINT SESSIONS_PRODUCTS
    FOREIGN KEY (session_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: SESSIONS_SUBJECTS (table: SESSIONS)
ALTER TABLE SESSIONS ADD CONSTRAINT SESSIONS_SUBJECTS
    FOREIGN KEY (subject_id)
    REFERENCES SUBJECTS (subject_id);

-- Reference: STATIONARY_MEETING_MEETING_GROUP (table: STATIONARY_MEETINGS)
ALTER TABLE STATIONARY_MEETINGS ADD CONSTRAINT STATIONARY_MEETING_MEETING_GROUP
    FOREIGN KEY (meeting_id)
    REFERENCES MEETINGS (meeting_id);

-- Reference: STUDENTS_COUNTRIES (table: STUDENTS)
ALTER TABLE STUDENTS ADD CONSTRAINT STUDENTS_COUNTRIES
    FOREIGN KEY (country_id)
    REFERENCES COUNTRIES (country_id);

-- Reference: STUDENT_ORDER (table: ORDERS)
ALTER TABLE ORDERS ADD CONSTRAINT STUDENT_ORDER
    FOREIGN KEY (student_id)
    REFERENCES STUDENTS (student_id);

-- Reference: STUDY_Products (table: STUDIES)
ALTER TABLE STUDIES ADD CONSTRAINT STUDY_Products
    FOREIGN KEY (study_id)
    REFERENCES PRODUCTS (product_id);

-- Reference: SUBJECT_EMPLOYEE (table: SUBJECTS)
ALTER TABLE SUBJECTS ADD CONSTRAINT SUBJECT_EMPLOYEE
    FOREIGN KEY (tutor_id)
    REFERENCES EMPLOYEES (employee_id);

-- Reference: SUBJECT_STUDY (table: SUBJECTS)
ALTER TABLE SUBJECTS ADD CONSTRAINT SUBJECT_STUDY
    FOREIGN KEY (study_id)
    REFERENCES STUDIES (study_id);

-- Reference: SYNC_MEETING_MEETING_GROUP (table: SYNC_MEETINGS)
ALTER TABLE SYNC_MEETINGS ADD CONSTRAINT SYNC_MEETING_MEETING_GROUP
    FOREIGN KEY (meeting_id)
    REFERENCES MEETINGS (meeting_id);

-- Reference: USER_STUDENT (table: STUDENTS)
ALTER TABLE STUDENTS ADD CONSTRAINT USER_STUDENT
    FOREIGN KEY (student_id)
    REFERENCES USERS (user_id);

-- Reference: WEBINAR_EMPLOYEE (table: WEBINARS)
ALTER TABLE WEBINARS ADD CONSTRAINT WEBINAR_EMPLOYEE
    FOREIGN KEY (translator_id)
    REFERENCES EMPLOYEES (employee_id);

-- Reference: WEBINAR_Products (table: WEBINARS)
ALTER TABLE WEBINARS ADD CONSTRAINT WEBINAR_Products
    FOREIGN KEY (webinar_id)
    REFERENCES PRODUCTS (product_id);

-- End of file.

