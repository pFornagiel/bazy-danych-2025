-- Function 1: Calculate cart value with student_id
CREATE FUNCTION GetCartValue(@StudentId INT)
RETURNS MONEY
AS
BEGIN
    RETURN (
        SELECT SUM(p.price)
        FROM SHOPPING_CART sc
        JOIN PRODUCTS p ON sc.product_id = p.product_id
        WHERE sc.student_id = @StudentId
    );
END;
Select GetCartValue(1)

-- Function 2: Check if product in fees is a single product
CREATE FUNCTION isSingleProduct(@fee_id INT)
RETURNS BIT
AS
BEGIN
    DECLARE @result BIT;

    SELECT
        @result = CASE
                     WHEN ft.type_name = 'study session' or ft.type_name = 'subject session' THEN 0
                     ELSE 1
                  END
    FROM FEES f
    JOIN FEE_TYPE ft ON f.type_id = ft.type_id
    WHERE f.fee_id = @fee_id;

    RETURN @result;
END;

--function 2.5 getSessionParentID
CREATE FUNCTION getParentId(@session_id INT)
RETURNS INT
AS
BEGIN
    DECLARE @study_id INT;

    SELECT
        @study_id = s.subject_id
    FROM
        SESSIONS ses
    JOIN SUBJECTS s ON ses.subject_id = s.subject_id
    WHERE
        ses.session_id = @session_id;

    RETURN @study_id;
END;

-- function 2.7 checks if student owns product
CREATE FUNCTION CheckStudentOwnsProduct(@student_id INT, @product_id INT)
RETURNS BIT
AS
BEGIN
    DECLARE @owns_product BIT;

    SELECT
        @owns_product = CASE
                            WHEN EXISTS (
                                SELECT 1
                                FROM PRODUCTS_DETAILS pd
                                WHERE pd.product_id = @product_id
                                  AND pd.student_id = @student_id
                            ) THEN 1
                            ELSE 0
                        END;

    RETURN @owns_product;
END;


-- Function 3: Calculate order value with order_id
CREATE FUNCTION GetOrderValue(@OrderId INT)
RETURNS MONEY
AS
BEGIN
    RETURN (
        SELECT SUM(f.fee_value)
        FROM FEES f
        WHERE f.order_id = @OrderId
    );
END;

-- Function 4: Check if student passes internships
CREATE FUNCTION DoesStudentPassInternship(@StudentId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @Result bit = 0
    IF EXISTS (SELECT 1 FROM INTERNSHIP_DETAILS WHERE @StudentId=student_id)
    BEGIN
        IF NOT EXISTS (
            SELECT 1
            FROM INTERNSHIP_DETAILS id
            JOIN INTERNSHIPS i ON i.internship_id=id.internship_id
            WHERE id.student_id=@StudentId AND i.end_date>GETDATE()
        )
        BEGIN
            IF NOT EXISTS (
                SELECT 1
                FROM INTERNSHIP_DETAILS id
                WHERE id.student_id=@StudentId and id.passed=0
            )
            SET @Result=1
        END
    END
    RETURN @Result;
END


-- Function 5: Calculate attendance % for student_id and study_id
CREATE FUNCTION GetAttendanceForStudy(@StudentId INT, @StudyId INT)
RETURNS DECIMAL(5, 2)
AS
BEGIN
    DECLARE @TotalMeetings INT, @AttendedMeetings INT;

    SELECT @TotalMeetings = COUNT(*)
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN SESSIONS sess ON m.session_id = sess.session_id
    JOIN SUBJECTS subj ON sess.subject_id = subj.subject_id
    WHERE subj.study_id = @StudyId;

    SELECT @AttendedMeetings = COUNT(*)
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN SESSIONS sess ON m.session_id = sess.session_id
    JOIN SUBJECTS subj ON sess.subject_id = subj.subject_id
    WHERE subj.study_id = @StudyId AND md.student_id = @StudentId AND md.attendance = 1;

    RETURN ISNULL((@AttendedMeetings * 100.0) / NULLIF(@TotalMeetings, 0), 0);
END;

-- Function 6: Calculate attendance % for student_id and course_id
CREATE FUNCTION GetAttendanceForCourse(@StudentId INT, @CourseId INT)
RETURNS DECIMAL(5, 2)
AS
BEGIN
    DECLARE @TotalMeetings INT, @AttendedMeetings INT;

    SELECT @TotalMeetings = COUNT(*)
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN MODULES mod ON m.module_id = mod.module_id
    WHERE mod.course_id = @CourseId;

    SELECT @AttendedMeetings = COUNT(*)
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN MODULES mod ON m.module_id = mod.module_id
    WHERE mod.course_id = @CourseId AND md.student_id = @StudentId AND md.attendance = 1;

    RETURN ISNULL((@AttendedMeetings * 100.0) / NULLIF(@TotalMeetings, 0), 0);
END;

--FOO
CREATE FUNCTION GetStudySchedule(@StudyId INT)
RETURNS TABLE
AS
RETURN (
    SELECT m.meeting_id, m.meeting_name, m.term, m.duration, l.language_name
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN LANGUAGES l ON m.language_id = l.language_id
    JOIN SESSIONS s ON m.session_id=s.session_id
    JOIN SUBJECTS sub on sub.subject_id=s.session_id
    JOIN STUDIES st on st.study_id=sub.study_id
    WHERE st.study_id=@StudyId
    ORDER BY m.term
);

--FOO
CREATE FUNCTION GetCourseSchedule(@CourseId INT)
RETURNS TABLE
AS
RETURN (
    SELECT m.meeting_id, m.meeting_name, m.term, m.duration, l.language_name
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN LANGUAGES l ON m.language_id = l.language_id
    JOIN MODULES mod ON mod.module_id=m.module_id
    JOIN COURSES c on c.course_id=m.course_id
    WHERE c.course_id=@CourseId
    ORDER BY m.term
);

-- Function 7: Create student timetable with student_id
CREATE FUNCTION GetStudentTimetable(@StudentId INT)
RETURNS TABLE
AS
RETURN (
    SELECT m.meeting_id, m.meeting_name, m.term, m.duration, l.language_name
    FROM MEETING_DETAILS md
    JOIN MEETINGS m ON md.meeting_id = m.meeting_id
    JOIN LANGUAGES l ON m.language_id = l.language_id
    WHERE md.student_id = @StudentId
    ORDER BY m.term
);

-- Function 7.5: Create tutor timetable
CREATE FUNCTION GetTutorTimetable(@EmployeeId INT)
RETURNS TABLE
AS
RETURN (
    SELECT m.meeting_id, m.meeting_name, m.term, m.duration, l.language_name
    FROM MEETINGS m
    JOIN LANGUAGES l ON m.language_id = l.language_id
    WHERE m.tutor_id = @EmployeeId
    ORDER BY m.term
);

-- Function 7.9: Create translator timetable
CREATE FUNCTION GetTranslatorTimetable(@EmployeeId INT)
RETURNS TABLE
AS
RETURN (
    SELECT m.meeting_id, m.meeting_name, m.term, m.duration, l.language_name
    FROM MEETINGS m
    JOIN LANGUAGES l ON m.language_id = l.language_id
    WHERE m.translator_id = @EmployeeId
    ORDER BY m.term
);

-- Function 8: Check if meeting intersects with schedule
CREATE FUNCTION DoesMeetingIntersect(@StudentId INT, @MeetingId INT)
RETURNS BIT
AS
BEGIN
    RETURN (
        CASE
            WHEN EXISTS (
                SELECT 1
                FROM MEETING_DETAILS md1
                JOIN MEETINGS m1 ON md1.meeting_id = m1.meeting_id
                JOIN MEETINGS m2 ON m1.meeting_id = @MeetingId
                WHERE md1.student_id = @StudentId
                AND (m1.term BETWEEN m2.term AND DATEADD(MINUTE, DATEDIFF(MINUTE, 0, m2.duration), m2.term))
            ) THEN 1
            ELSE 0
        END
    );
END;

-- Function 9: Calculate vacancies for product
CREATE FUNCTION GetVacanciesForProduct(@ProductId INT)
RETURNS INT
AS
BEGIN
    DECLARE @TotalVacancies INT, @EnrolledStudents INT;

    SELECT @TotalVacancies = p.total_vacancies
    FROM PRODUCTS p
    WHERE p.product_id = @ProductId;

    SELECT @EnrolledStudents = COUNT(*)
    FROM PRODUCTS_DETAILS pd
    WHERE pd.product_id = @ProductId;

    RETURN ISNULL(@TotalVacancies - @EnrolledStudents, 0);
END;

-- Function 10: Check if student can add product to cart
CREATE FUNCTION CanAddToCart(@StudentId INT, @ProductId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @OwnsProduct BIT;

    SELECT @OwnsProduct = CheckStudentOwnsProduct(@StudentId,@ProductId)

    RETURN @OwnsProduct
END;

-- Function 11: Check if student can buy product
CREATE FUNCTION CanStudentBuyProduct(@StudentId INT, @ProductId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @AvailableVacancies INT;

    SELECT @AvailableVacancies = GetVacanciesForProduct(@ProductId)

    RETURN (
        CASE
            WHEN @AvailableVacancies > 0 THEN 1
            ELSE 0
        END
    );
END;

CREATE FUNCTION CheckMeetingConflict(@StudentId INT, @MeetingId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @Conflicts BIT = 0;

    ;WITH StudentTimetable AS (
        SELECT
            t.meeting_id,
            t.term AS start_time,
            DATEADD(SECOND, DATEDIFF(SECOND, 0, t.duration), t.term) AS end_time
        FROM GetStudentTimetable(@StudentId) t
    ),
    CurrentMeeting AS (
        SELECT
            m.meeting_id,
            m.term AS start_time,
            DATEADD(SECOND, DATEDIFF(SECOND, 0, m.duration), m.term) AS end_time
        FROM MEETINGS m
        WHERE m.meeting_id = @MeetingId
    )
    SELECT
        @Conflicts = CASE
            WHEN EXISTS (
                SELECT 1
                FROM StudentTimetable st
                JOIN CurrentMeeting cm ON
                  st.meeting_id <> cm.meeting_id
                  AND st.start_time < cm.end_time
                  AND cm.start_time < st.end_time
            ) THEN 1
            ELSE 0
        END;

    RETURN @Conflicts;
END;
