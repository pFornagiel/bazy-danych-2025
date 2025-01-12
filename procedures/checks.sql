-- Employee existing check
CREATE PROCEDURE [dbo].[CheckEmployeeExists]
  @employee_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE employee_id = @employee_id)
  BEGIN
    THROW 50001, 'Pracownik nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Student existing check
CREATE PROCEDURE [dbo].[CheckStudentExists]
  @student_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM STUDENTS WHERE student_id = @student_id)
  BEGIN
    THROW 50001, 'Student nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Country existing check
CREATE PROCEDURE [dbo].[CheckCountryExists]
  @country_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM COUNTRIES WHERE country_id = @country_id)
  BEGIN
    THROW 50001, 'Państwo nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Language existing check
CREATE PROCEDURE [dbo].[CheckLanguageExists]
  @language_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM LANGUAGES WHERE language_id = @language_id)
  BEGIN
    THROW 50001, 'Język nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Module existing check
CREATE PROCEDURE [dbo].[CheckModuleExists]
  @module_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM MODULES WHERE module_id = @module_id)
  BEGIN
    THROW 50001, 'Moduł nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Study existing check
CREATE PROCEDURE [dbo].[CheckStudyExists]
  @study_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM STUDIES WHERE study_id = @study_id)
  BEGIN
    THROW 50001, 'Studia nie istnieją.', 1;
    RETURN;
  END
END;
GO

-- Session existing check
CREATE PROCEDURE [dbo].[CheckSessionExists]
  @session_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM SESSIONS WHERE session_id = @session_id)
  BEGIN
    THROW 50001, 'Sesja nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Order existing check
CREATE PROCEDURE [dbo].[CheckOrderExists]
  @order_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM ORDERS WHERE order_id = @order_id)
  BEGIN
    THROW 50001, 'Zamówienie nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Product existing check
CREATE PROCEDURE [dbo].[CheckProductExists]
  @product_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM PRODUCTS WHERE product_id = @product_id)
  BEGIN
    THROW 50001, 'Produkt nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Meeting existing check
CREATE PROCEDURE [dbo].[CheckMeetingExists]
  @meeting_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM MEETINGS WHERE meeting_id = @meeting_id)
  BEGIN
    THROW 50001, 'Spotkanie nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Webinar existing check
CREATE PROCEDURE [dbo].[CheckWebinarExists]
  @webinar_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM WEBINARS WHERE webinar_id = @webinar_id)
  BEGIN
    THROW 50001, 'Webinar nie istnieje.', 1;
    RETURN;
  END
END;
GO

-- Fee existing check
CREATE PROCEDURE [dbo].[CheckFeeExists]
  @fee_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM FEES WHERE fee_id = @fee_id)
  BEGIN
    THROW 50001, 'Należność nie istnieje.', 1;
    RETURN;
  END
END;
GO