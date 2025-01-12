
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
)

SELECT
    s.study_id,
    s.study_name,
    tf.start_date AS study_start,
    tf.end_date AS study_end,
    CAST(s.study_description AS VARCHAR(MAX)) AS study_description,
    COUNT(DISTINCT sub.subject_id) AS number_of_subjects,
    COUNT(DISTINCT m.meeting_id) AS total_meetings,
    COUNT(sm.meeting_id) AS stationary_meetings,
    COUNT(sync.meeting_id) AS online_meetings,
    COUNT(async.meeting_id) AS async_meetings,
    (
        SELECT COUNT(*)
        FROM INTERSHIPS i
        WHERE i.study_id = s.study_id
    ) AS number_of_internships,
    dbo.GetVacanciesForProduct(s.study_id) AS Vacancies,
    p.total_vacancies AS place_limit,
    p.price AS entry_fee
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
    tf.start_date,
    tf.end_date,
    p.total_vacancies,
    p.price, CAST(s.study_description AS VARCHAR(MAX));

CREATE VIEW study_internship_information AS
SELECT
    i.internship_id,
    s.study_id,
    s.study_name,
    i.start_date,
    i.end_date,
    -- Count total students assigned
    COUNT(DISTINCT id.student_id) AS total_students,
    -- Count passed students
    SUM(CASE WHEN id.passed = 1 THEN 1 ELSE 0 END) AS students_passed,
    -- Status of internship
    CASE
        WHEN i.end_date < GETDATE() THEN 'Completed'
        WHEN i.start_date > GETDATE() THEN 'Upcoming'
        ELSE 'In Progress'
    END AS internship_status
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
    CASE
        WHEN sm.meeting_id IS NOT NULL THEN 'Stationary'
        WHEN sync.meeting_id IS NOT NULL THEN 'Synchronous'
        WHEN async.meeting_id IS NOT NULL THEN 'Asynchronous'
    END AS meeting_type,
    CASE
        WHEN sm.meeting_id IS NOT NULL THEN sm.classroom
        WHEN sync.meeting_id IS NOT NULL THEN sync.meeting_url
        WHEN async.meeting_id IS NOT NULL THEN async.video_url
    END AS meeting_location,
    CASE
        WHEN m.term < GETDATE() THEN 'Past'
        ELSE 'Upcoming'
    END AS meeting_status,
    (
        SELECT COUNT(*)
        FROM MEETING_DETAILS md
        WHERE md.meeting_id = m.meeting_id
    ) AS current_enrollment,
    dbo.GetVacanciesForProduct(ses.session_id) AS Vacancies
FROM
    STUDIES s
    INNER JOIN SUBJECTS sub ON s.study_id = sub.study_id
    INNER JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
    INNER JOIN MEETINGS m ON ses.session_id = m.session_id
    LEFT JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    LEFT JOIN SYNC_MEETINGS sync ON m.meeting_id = sync.meeting_id
    LEFT JOIN ASYNC_MEETINGS async ON m.meeting_id = async.meeting_id
    LEFT JOIN PRODUCTS p ON ses.session_id = p.product_id
;

CREATE VIEW study_offers AS
SELECT
    * ,
    CASE
        WHEN si.study_start > GETDATE() THEN 'Upcoming'
        ELSE 'In Progress'
    END AS study_status
FROM
    Study_information si
WHERE
    si.Vacancies > 0
    AND (si.study_end IS NULL OR si.study_end >= GETDATE())

;

CREATE VIEW study_passes AS
SELECT
    s.study_id,
    s.study_name,
    u.user_id AS student_id,
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
    INNER JOIN PRODUCT_DETAILS pd ON s.study_id = pd.product_id
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
    pd.passed, id.passed

CREATE VIEW study_session_schedule AS
  SELECT
  s.subject_id,
  s.session_id,
  sub.study_id,
  MIN(m.term) AS start_time,
  MAX(m.term) AS end_time
  FROM
    sessions s
    join meetings m on m.session_id =  s.session_id
    join SUBJECTS sub on sub.subject_id = s.subject_id
  GROUP BY
    s.subject_id,
    s.session_id,
    sub.study_id

CREATE VIEW study_syllabus AS
SELECT
  s.study_id AS study_id,
  sub.subject_id AS subject_id,
  sub.subject_name AS subject_name,
  CAST(sub.subject_description AS VARCHAR(MAX)) AS subject_description,
  COUNT(m.meeting_id) AS meeting_count,
  MIN(m.term) AS start_time,
  MAX(m.term) AS end_time
  FROM
    studies s
    JOIN subjects sub on sub.study_id = s.study_id
    join sessions on sub.subject_id = sessions.subject_id
    JOIN meetings m ON m.session_id = sessions.session_id
  GROUP BY s.study_id, sub.subject_id, sub.subject_name, CAST(sub.subject_description AS VARCHAR(MAX))


