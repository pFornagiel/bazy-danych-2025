CREATE view Student_address as
	SELECT
    	s.student_id AS student_id,
    	u.first_name AS name,
    	u.last_name AS last_name,
    	s.street AS street,
    	s.postal_code AS zip_code,
    	s.city AS city,
	    c.country_name AS country_name
  	FROM students s
	join users u on u.user_id = s.student_id
    join countries c on c.country_id = s.country_id
;

CREATE view employees_type_list as
	SELECT
		e.employee_id as employee_id,
		u.first_name as name,
		u.last_name AS last_name,
		et.type_name as role,
	    e.birth_date as birth_date,
	    e.hire_date as hire_date

	FROM EMPLOYEES e
	join users u on u.user_id = e.employee_id
	join EMPLOYEE_TYPES et on et.type_id = e.type_id

;
CREATE view user_information as
	SELECT
		u.user_id as user_id,
		u.first_name as name,
		u.last_name as last_name,
		u.email as email,
		u.phone as phone,
		CASE
            WHEN u.user_id IN (SELECT student_id FROM students) AND
                 u.user_id NOT IN (SELECT employee_id FROM employees) THEN 'student'
            WHEN u.user_id NOT IN (SELECT student_id FROM students) AND
                 u.user_id IN (SELECT employee_id FROM employees) THEN
                (SELECT et.type_name
                 FROM employee_types et
                 JOIN employees e ON et.type_id = e.type_id
                 WHERE e.employee_id = u.user_id)
    END AS role

	FROM USERS u
;
CREATE VIEW regular_customers AS
	SELECT
		student_id,
		COUNT(order_date) AS order_count
	FROM orders
	WHERE order_date >= DATEADD(year, -2, GETDATE())
	GROUP BY student_id
	HAVING COUNT(order_date) > 0
