-- Trigger to add MEETING_DETAILS rows when a student is added to PRODUCTS_DETAILS
CREATE TRIGGER trg_AddMeetingDetails
ON PRODUCTS_DETAILS
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @student_id INT;
  DECLARE @product_id INT;
  DECLARE @type_id INT;

  -- Get the inserted student_id and product_id
  SELECT @student_id = inserted.student_id, @product_id = inserted.product_id
  FROM inserted;

  -- Get the type_id of the product
  SELECT @type_id = type_id FROM PRODUCTS WHERE product_id = @product_id;

  -- Return early if type_id does not match study, subject, course, or session
  IF @type_id NOT IN (1, 2, 3, 5)
  BEGIN
    RETURN;
  END

  -- Add meeting details based on product type
  IF @type_id = 1 -- study
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    JOIN SESSIONS ON MEETINGS.session_id = SESSIONS.session_id
    JOIN SUBJECTS ON SESSIONS.subject_id = SUBJECTS.subject_id
    WHERE SUBJECTS.study_id = @product_id;
  END
  ELSE IF @type_id = 2 -- subject
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    JOIN SESSIONS ON MEETINGS.session_id = SESSIONS.session_id
    WHERE SESSIONS.subject_id = @product_id;
  END
  ELSE IF @type_id = 3 -- course
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    JOIN MODULES ON MEETINGS.module_id = MODULES.module_id
    WHERE MODULES.course_id = @product_id;
  END
  ELSE IF @type_id = 5 -- session
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    WHERE session_id = @product_id;
  END
END;
