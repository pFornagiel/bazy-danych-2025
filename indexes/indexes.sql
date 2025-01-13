--INDEKSY NA KLUCZACH OBCYCH

-- EMPLOYEES
CREATE INDEX employees_type_id_idx ON EMPLOYEES (type_id);

-- WEBINARS
CREATE INDEX webinars_tutor_id_idx ON WEBINARS (tutor_id);
CREATE INDEX webinars_translator_id_idx ON WEBINARS (translator_id);
CREATE INDEX webinars_language_id_idx ON WEBINARS (language_id);

-- FEES
CREATE INDEX fees_order_id_idx ON FEES (order_id);
CREATE INDEX fees_product_id_idx ON FEES (product_id);
CREATE INDEX fees_type_id_idx ON FEES (type_id);

-- INTERSHIPS
CREATE INDEX interships_study_id_idx ON INTERSHIPS (study_id);

-- MEETINGS
CREATE INDEX meetings_language_id_idx ON MEETINGS (language_id);
CREATE INDEX meetings_module_id_idx ON MEETINGS (module_id);
CREATE INDEX meetings_session_id_idx ON MEETINGS (session_id);
CREATE INDEX meetings_tutor_id_idx ON MEETINGS (tutor_id);
CREATE INDEX meetings_translator_id_idx ON MEETINGS (translator_id);

-- MODULES
CREATE INDEX modules_course_id_idx ON MODULES (course_id);
CREATE INDEX modules_tutor_id_idx ON MODULES (tutor_id);

-- PRODUCT_DETAILS
CREATE INDEX product_details_order_id_idx ON PRODUCTS_DETAILS (order_id);

-- PRODUCTS
CREATE INDEX products_type_id_idx ON PRODUCTS (type_id);

-- SUBJECTS
CREATE INDEX subjects_study_id_idx ON SUBJECTS (study_id);
CREATE INDEX subjects_tutor_id_idx ON SUBJECTS (tutor_id);

-- SESSIONS
CREATE INDEX sessions_subject_id_idx ON SESSIONS (subject_id);

-- STUDENTS
CREATE INDEX students_country_id_idx ON STUDENTS (country_id);
-- CREATE INDEX students_user_id_idx ON STUDENTS (student_id);

-- ORDERS
CREATE INDEX orders_student_id_idx ON ORDERS (student_id);

--POZOSTAŁE INDEKSY

CREATE INDEX users_names ON USERS (last_name,first_name)

CREATE INDEX meeting_classrom ON STATIONARY_MEETINGS (classroom)

CREATE INDEX meeting_date_and_time ON MEETINGS (term,duration)

CREATE INDEX product_price on PRODUCTS(price)

CREATE INDEX product_vacancies on PRODUCTS(total_vacancies)

CREATE INDEX product_release on PRODUCTS(release)

CREATE INDEX webinar_publish_date on WEBINARS(publish_date,webinar_duration)

CREATE INDEX order_date on ORDERS(order_date)

CREATE INDEX internship_date on INTERSHIPS(start_date,end_date)