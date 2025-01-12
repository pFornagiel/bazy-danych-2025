
CREATE VIEW Course_information AS
SELECT
    c.course_id AS course_id,
    c.course_name AS name,
    c.course_description AS description,
    csed.start_date AS start_date,
    csed.end_date AS end_date,
    p.price AS price,
    p.total_vacancies AS amount_of_site,
    dbo.GetVacanciesForProduct(c.course_id) AS Vacancies
FROM courses c
CROSS APPLY GetCourseStartEndDate(c.course_id) csed
JOIN products p
    ON p.product_id = c.course_id;

CREATE VIEW course_module_meeting_types_count AS
SELECT
    m.module_id AS module_id,
    m.module_name AS name,
    mtc.STATIONARY_MEETINGS_count AS STATIONARY_MEETINGS_count,
    mtc.sync_MEETINGS_count AS sync_MEETINGS_count,
    mtc.async_MEETINGS_count AS async_MEETINGS_count
FROM MODULES m
CROSS APPLY GetMeetingTypeCounts(m.module_id) mtc;

;


CREATE VIEW Course_module_information AS
SELECT
    m.module_id,
    CASE
        WHEN mtc.STATIONARY_MEETINGS_count <> 0
             AND mtc.sync_MEETINGS_count = 0
             AND mtc.async_MEETINGS_count = 0 THEN 'on_site'
        WHEN mtc.STATIONARY_MEETINGS_count = 0
             AND mtc.sync_MEETINGS_count <> 0
             AND mtc.async_MEETINGS_count = 0 THEN 'online_synchronous'
        WHEN mtc.STATIONARY_MEETINGS_count = 0
             AND mtc.sync_MEETINGS_count = 0
             AND mtc.async_MEETINGS_count <> 0 THEN 'online_asynchronous'
        WHEN mtc.STATIONARY_MEETINGS_count <> 0
             OR mtc.sync_MEETINGS_count <> 0
             OR mtc.async_MEETINGS_count <> 0 THEN 'hybrid'
    END AS module_type,
    tu.first_name AS tutor_name,
    tu.last_name AS tutor_last_name,
    p.total_vacancies

FROM modules AS m
CROSS APPLY GetMeetingTypeCounts(m.module_id) mtc
JOIN courses c ON c.course_id = m.course_id
JOIN products p ON c.course_id = p.product_id
INNER JOIN USERS tu ON m.tutor_id = tu.user_id;

CREATE VIEW course_passes AS
SELECT
    courses.course_id AS course_id,
    PRODUCT_DETAILS.student_id AS student_id,
    CASE
        WHEN PRODUCT_DETAILS.passed = 1 THEN 'pass'
        ELSE 'fail'
    END AS passed_status,
    COUNT(DISTINCT m.meeting_id) AS total_available_meetings,
    COUNT(DISTINCT CASE WHEN md.attendance = 1 THEN m.meeting_id END) AS meetings_attended,
    CASE
        WHEN COUNT(DISTINCT m.meeting_id) = 0 THEN 0
        ELSE CAST(COUNT(DISTINCT CASE WHEN md.attendance = 1 THEN m.meeting_id END) AS FLOAT) /
             COUNT(DISTINCT m.meeting_id) * 100
    END AS attendance_rate
FROM courses
JOIN products
    ON products.product_id = courses.course_id
JOIN PRODUCT_DETAILS
    ON PRODUCT_DETAILS.product_id = courses.course_id
join MODULES Mod on courses.course_id = Mod.course_id
join MEETINGS m on Mod.module_id = m.module_id
JOIN MEETING_DETAILS md ON m.meeting_id = md.meeting_id AND md.student_id = PRODUCT_DETAILS.student_id
group by courses.course_id, PRODUCT_DETAILS.student_id, PRODUCT_DETAILS.passed


CREATE FUNCTION GetCourseStartEndDate(@course_id INT)
RETURNS TABLE
AS
RETURN
    SELECT
        MIN(m.term) AS start_date,
        MAX(m.term) AS end_date
    FROM meetings m
    JOIN modules mo ON mo.module_id = m.module_id
    WHERE m.module_id IS NOT NULL AND mo.course_id = @course_id;

CREATE FUNCTION GetMeetingTypeCounts(@module_id INT)
RETURNS TABLE
AS
RETURN
    SELECT
        @module_id AS module_id,
        (SELECT COUNT(*)
         FROM MEETINGS m
         JOIN STATIONARY_MEETINGS sm ON sm.meeting_id = m.meeting_id
         WHERE m.module_id = @module_id) AS STATIONARY_MEETINGS_count,
        (SELECT COUNT(*)
         FROM MEETINGS m
         JOIN SYNC_MEETINGS sy ON sy.meeting_id = m.meeting_id
         WHERE m.module_id = @module_id) AS sync_MEETINGS_count,
        (SELECT COUNT(*)
         FROM MEETINGS m
         JOIN ASYNC_MEETINGS am ON am.meeting_id = m.meeting_id
         WHERE m.module_id = @module_id) AS async_MEETINGS_count;


CREATE VIEW course_syllabus AS
SELECT
    c.course_id AS course_id,
    m.module_id AS module_id,
    m.module_name AS module_name,
    CAST(m.module_description AS VARCHAR(MAX)) AS module_description,
    COUNT(mt.meeting_id) AS meeting_count,
    MIN(mt.term) AS start_time,
    MAX(mt.term) AS end_time
FROM
    COURSES c
    JOIN MODULES m ON m.course_id = c.course_id
    JOIN MEETINGS mt ON mt.module_id = m.module_id
GROUP BY
    c.course_id,
    m.module_id,
    m.module_name,
    CAST(m.module_description AS VARCHAR(MAX))