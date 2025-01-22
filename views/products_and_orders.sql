create view PRODUCT_VACANCIES as
select product_id as product_id, dbo.GetVacanciesForProduct(product_id) as vacancies
from PRODUCTS
;
select user_id,count(*) from USERS_IN_DEBT
group by user_id


drop VIEW USERS_IN_DEBT
CREATE VIEW USERS_IN_DEBT AS
SELECT DISTINCT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    COALESCE(s.session_id, m.module_id, w.webinar_id) AS product_reference_id,
    CASE
        WHEN s.session_id IS NOT NULL THEN 'Study Session'
        WHEN m.module_id IS NOT NULL THEN 'Course'
        WHEN w.webinar_id IS NOT NULL THEN 'Webinar'
    END AS product_type,
    p.price AS amount_to_pay
FROM
    USERS u
    JOIN MEETING_DETAILS md ON md.student_id = u.user_id
    JOIN MEETINGS m ON m.meeting_id = md.meeting_id
    LEFT JOIN SESSIONS s ON s.session_id = m.session_id
    LEFT JOIN MODULES mod ON mod.module_id = m.module_id
    LEFT JOIN WEBINARS w ON w.webinar_id = md.meeting_id
    JOIN PRODUCTS p ON p.product_id IN (
        COALESCE(s.session_id, m.module_id, w.webinar_id)
    )
WHERE
    p.price > 0    -- Only check products that aren't free
    AND NOT EXISTS (
        -- Check if student has paid for this product (session/module/webinar)
        SELECT 1
        FROM FEES f
        WHERE f.product_id = COALESCE(s.session_id, m.module_id, w.webinar_id)
        AND f.order_id IN (
            SELECT order_id
            FROM PRODUCT_DETAILS
            WHERE student_id = u.user_id
        )
        AND (f.payment_date IS NOT NULL and f.due_date < DATEADD(DAY, 3, getdate()))
    )

CREATE VIEW FINANCIAL_REPORT AS
SELECT
    P.product_id,
    PT.type_name,
    CASE
        WHEN PT.type_name = 'session' THEN dbo.getParentId(P.product_id)
        WHEN PT.type_name = 'subject' THEN dbo.getParentIdFromSubject(P.product_id)
    END AS study_id,
    SUM(CASE
        WHEN PT.type_id = 1 AND FT.type_id IN (3, 4) AND payment_date IS NOT NULL THEN F.fee_value
        WHEN PT.type_id = 2 AND FT.type_id = 2 AND payment_date IS NOT NULL THEN F.fee_value
        WHEN PT.type_id = 3 AND FT.type_id IN (5, 6) AND payment_date IS NOT NULL THEN F.fee_value
        WHEN PT.type_id = 4 AND FT.type_id = 7 AND payment_date IS NOT NULL THEN F.fee_value
        WHEN PT.type_id = 5 AND FT.type_id = 1 AND payment_date IS NOT NULL THEN F.fee_value
        ELSE 0
    END) AS total_fee_value,
    -- Start Date
    CASE
        WHEN PT.type_id = 1 THEN (SELECT start_date FROM dbo.GetStudyTimeframe(P.product_id))
        WHEN PT.type_id = 2 THEN (SELECT start_date FROM dbo.GetSubjectTimeframe(P.product_id))
        WHEN PT.type_id = 3 THEN (SELECT start_date FROM dbo.GetCourseStartEndDate(P.product_id))
        WHEN PT.type_id = 4 THEN (SELECT publish_date FROM dbo.GetWebinarTime(P.product_id))
        WHEN PT.type_id = 5 THEN (SELECT start_date FROM dbo.GetSessionTimeframe(P.product_id))
        ELSE NULL
    END AS start_date,
    -- End Date
    CASE
        WHEN PT.type_id = 1 THEN (SELECT end_date FROM dbo.GetStudyTimeframe(P.product_id))
        WHEN PT.type_id = 2 THEN (SELECT end_date FROM dbo.GetSubjectTimeframe(P.product_id))
        WHEN PT.type_id = 3 THEN (SELECT end_date FROM dbo.GetCourseStartEndDate(P.product_id))
        WHEN PT.type_id = 4 THEN (SELECT publish_date FROM dbo.GetWebinarTime(P.product_id))
        WHEN PT.type_id = 5 THEN (SELECT end_date FROM dbo.GetSessionTimeframe(P.product_id))
        ELSE NULL
    END AS end_date
FROM
    PRODUCTS P
JOIN PRODUCT_TYPES PT ON P.type_id = PT.type_id
JOIN FEES F ON P.product_id = F.product_id
JOIN dbo.FEE_TYPES FT ON F.type_id = FT.type_id
GROUP BY
    P.product_id,
    PT.type_name,
    PT.type_id; -- Dodanie type_id do klauzuli GROUP BY




CREATE FUNCTION dbo.GetStudyTimeframe(@StudyId INT)
RETURNS TABLE
AS
RETURN (
    SELECT
        s.study_id,
        MIN(m.term) AS start_date,
        MAX(m.term) AS end_date
    FROM
        STUDIES s
        JOIN SUBJECTS sub ON s.study_id = sub.study_id
        JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
        JOIN MEETINGS m ON ses.session_id = m.session_id
    WHERE
        s.study_id = @StudyId
    GROUP BY
        s.study_id
)
go

select * from GetStudyTimeframe(1)


CREATE FUNCTION GetWebinarTime(@webinar_id INT)
RETURNS TABLE
AS
RETURN (
    SELECT
        webinar_id,
        publish_date
    FROM WEBINARS
    where webinar_id = @webinar_id
)


CREATE FUNCTION GetSubjectTimeframe(@subject_id INT)
RETURNS TABLE
AS
RETURN (
    SELECT
        sub.subject_id,
        MIN(m.term) AS start_date,
        MAX(m.term) AS end_date
    FROM SUBJECTS sub
        JOIN SESSIONS ses ON sub.subject_id = ses.subject_id
        JOIN MEETINGS m ON ses.session_id = m.session_id
    WHERE
        sub.subject_id = @subject_id
    GROUP BY
        sub.subject_id
)




CREATE VIEW BILOCATION_REPORT AS
WITH student_meetings AS (
    SELECT
        student_id,
        MEETING_DETAILS.meeting_id,
        term,
        CAST(DATEPART(HOUR, duration) * 60 + DATEPART(MINUTE, duration) AS INT) AS duration_in_minutes
    FROM MEETING_DETAILS
    JOIN MEETINGS ON MEETING_DETAILS.meeting_id = MEETINGS.meeting_id
)
SELECT
    sm1.student_id,
    sm1.meeting_id AS meeting_id_1,
    sm2.meeting_id AS meeting_id_2
FROM
    student_meetings sm1
JOIN
    student_meetings sm2
    ON sm1.student_id = sm2.student_id
    AND sm1.meeting_id < sm2.meeting_id -- Ensure unique pairs (no duplicates or self-joins)
    AND (
        -- Check if sm2 starts during sm1's duration
        DATEDIFF(MINUTE, sm1.term, sm2.term) BETWEEN 0 AND sm1.duration_in_minutes
        OR
        -- Check if sm1 starts during sm2's duration
        DATEDIFF(MINUTE, sm2.term, sm1.term) BETWEEN 0 AND sm2.duration_in_minutes
    );

create view PRODUCT_OWNERS as
select product_id,
       pd.order_id,
       pd.student_id,
       first_name,
       last_name as name,
       ORDERS.order_date
from PRODUCT_DETAILS pd
join USERS u on u.user_id=pd .student_id
join ORDERS on pd.order_id = ORDERS.order_id


CREATE VIEW product_payment_information AS
SELECT
  p.product_id,
  pt.type_name,
  fees.due_date as due_date,
  IIF(pt.type_name IN ('study', 'study',
  'course', 'session'), 1, 0) AS accepts_advance_payments
FROM
  products p
  join PRODUCT_TYPES pt on pt.type_id = p.type_id
  join fees on fees.product_id = p.product_id

create view Product_information as
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
  end as product_description,

  p.price,
  pt.type_name
from products p
join PRODUCT_TYPES pt on p.type_id = pt.type_id
left join courses on courses.course_id = p.product_id
left join subjects on subjects.subject_id = p.product_id
left join studies on studies.study_id = p.product_id
left join sessions on sessions.session_id = p.product_id
left join webinars on webinars.webinar_id = p.product_id

CREATE VIEW unpaid_special_permissions AS
SELECT
  o.student_id,
  SUM(f.fee_value - p.price) AS to_pay_value
FROM
  orders o
  JOIN fees f ON f.order_id = o.order_id
  JOIN products p ON f.product_id = p.product_id
  JOIN PRODUCT_TYPES pt ON p.type_id = pt.type_id
WHERE
  (
    pt.type_name = 'session' AND
    EXISTS (
      SELECT 1
      FROM MEETINGS m
      WHERE m.session_id = f.product_id
      HAVING MIN(m.term) > f.due_date
    )
  ) OR
  (
    pt.type_name = 'course' AND
    EXISTS (
      SELECT 1
      FROM MEETINGS m
      JOIN MODULES mod ON m.module_id = mod.module_id
      WHERE mod.course_id = f.product_id
      HAVING MIN(m.term) > f.due_date
    )
  ) OR
  (
    pt.type_name = 'webinar' AND
    EXISTS (
      SELECT 1
      FROM WEBINARS w
      WHERE w.webinar_id = f.product_id AND w.publish_date > f.due_date
    )
  )
GROUP BY
  o.student_id;

CREATE FUNCTION getParentId(@session_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @study_id INT;

    SELECT
        @study_id = s.study_id
    FROM
        SESSIONS ses
    JOIN SUBJECTS s ON ses.subject_id = s.subject_id
    WHERE
        ses.session_id = @session_id;

    RETURN @study_id;
END;

CREATE FUNCTION getParentIdFromSubject(@subject_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @study_id INT;

    SELECT
        @study_id = s.study_id
    FROM
        SUBJECTS s
    WHERE
        s.subject_id = @subject_id;

    RETURN @study_id;
END;