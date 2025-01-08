-- Employee existing check
CREATE PROCEDURE [dbo].[CheckEmployeeExists]
  @employee_id INT
AS
BEGIN
  IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE employee_id = @employee_id)
  BEGIN
    RAISERROR('Pracownik o id %d nie istnieje.', 16, 1, @employee_id);
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
    RAISERROR('Pracownik o id %d nie istnieje.', 16, 1, @student_id);
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
    RAISERROR('Państwo nie istnieje.', 16, 1);
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
    RAISERROR('Język nie istnieje.', 16, 1);
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
    RAISERROR('Moduł o ID %d nie istnieje.', 16, 1, @module_id);
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
    RAISERROR('Studia o ID %d nie istnieją.', 16, 1, @study_id);
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
    RAISERROR('Sesja o ID %d nie istnieje.', 16, 1, @session_id);
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
    RAISERROR('Sesja o ID %d nie istnieje.', 16, 1, @order_id);
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
    RAISERROR('Sesja o ID %d nie istnieje.', 16, 1, @product_id);
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
    RAISERROR('Sesja o ID %d nie istnieje.', 16, 1, @meeting_id);
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
    RAISERROR('Webinar o podanym ID nie istnieje.', 16, 1);
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
    RAISERROR('Należność o podanym ID nie istnieje.', 16, 1);
    RETURN;
  END
END;
GO