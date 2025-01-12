-- Creating basic user
CREATE PROCEDURE [dbo].[CreateBasicUser]
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @user_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Validate email format
    IF @email NOT LIKE '%_@%.%'
    BEGIN
      THROW 50000, 'Niepoprawny format adresu email.', 1;
      RETURN;
    END
    
    -- Validate phone number if provided
    IF @phone IS NOT NULL AND (LEN(@phone) != 9 OR ISNUMERIC(@phone) = 0)
    BEGIN
      THROW 50000, 'Niepoprawny format numeru telefonu.', 1;
      RETURN;
    END
    
    -- Check for existing email
    IF EXISTS (SELECT 1 FROM USERS WHERE email = @email)
    BEGIN
      THROW 50000, 'Email został już przypisany do innego użytkownika.', 1;
      RETURN;
    END
    
    -- Check for existing phone if provided
    IF @phone IS NOT NULL AND EXISTS (SELECT 1 FROM USERS WHERE phone = @phone)
    BEGIN
      THROW 50000, 'Numer telefonu został już przypisany do innego użytkownika.', 1;
      RETURN;
    END
    -- Insert the new user
    INSERT INTO USERS (
      username, 
      first_name, 
      last_name, 
      email, 
      phone
    ) VALUES (
      @username, 
      @first_name, 
      @last_name, 
      @email, 
      @phone
    );
    
    -- Set the output parameter to the new user's ID
    SET @user_id = SCOPE_IDENTITY();
    
    COMMIT TRANSACTION;
    PRINT('Użytkownik utworzony pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
GO

-- Create student
CREATE PROCEDURE [dbo].[CreateStudent]
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @street VARCHAR(30),
  @city VARCHAR(30),
  @postal_code VARCHAR(30),
  @country_id INT = 0,
  @user_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate country exists
    EXEC [dbo].[CheckCountryExists] @country_id;
    
    -- Create basic user first
    DECLARE @id INT;
    EXEC CreateBasicUser 
      @username = @username,
      @first_name = @first_name,
      @last_name = @last_name,
      @email = @email,
      @phone = @phone,
      @user_id = @id OUTPUT;
    
    SET @user_id = @id;

    -- Insert student details
    INSERT INTO STUDENTS (
      student_id,
      street,
      city,
      postal_code,
      country_id
    ) VALUES (
      @user_id,
      @street,
      @city,
      @postal_code,
      @country_id
    );

    
    
    COMMIT TRANSACTION;
    PRINT('Student utworzony pomyślnie')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
GO

-- Create employee
CREATE PROCEDURE [dbo].[CreateEmployee]
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @employee_type_id INT,
  @birth_date DATE = NULL,
  @hire_date DATE = NULL,
  @employee_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Validate employee type exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEE_TYPES WHERE type_id = @employee_type_id)
    BEGIN
      THROW 50000, 'Nieprawidłowy typ pracownika.', 1;
      RETURN;
    END
    
    -- Create basic user first
    DECLARE @id INT;
    EXEC CreateBasicUser 
      @username = @username,
      @first_name = @first_name,
      @last_name = @last_name,
      @email = @email,
      @phone = @phone,
      @user_id = @id OUTPUT;
    
    -- Set the returned value
    SET @employee_id = @id;

    -- Insert employee details
    INSERT INTO EMPLOYEES (
      employee_id,
      type_id,
      hire_date,
      birth_date
    ) VALUES (
      @employee_id,
      @employee_type_id,
      -- Check for NULL value
      COALESCE(@hire_date, GETDATE()),
      @birth_date
    );
    
    COMMIT TRANSACTION;
    PRINT('Pracownik utworzony pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
GO

-- Link a translator to a given webinar
CREATE PROCEDURE [dbo].[LinkTranslatorToWebinar]
  @webinar_id INT,
  @translator_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate webinar exists
    EXEC [dbo].[CheckWebinarExists] @webinar_id

    -- Validate translator exists
    EXEC [dbo].[CheckEmployeeExists] @translator_id

    -- Update the webinar to link the translator
    UPDATE WEBINARS
    SET translator_id = @translator_id
    WHERE webinar_id = @webinar_id;

    COMMIT TRANSACTION;
    PRINT 'Tłumacz został przypisany do webinaru pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Link a translator to a given meeting
CREATE PROCEDURE [dbo].[LinkTranslatorToMeeting]
  @meeting_id INT,
  @translator_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate meeting exists
    EXEC [dbo].[CheckMeetingExists] @meeting_id

    -- Validate translator exists
    EXEC [dbo].[CheckEmployeeExists] @translator_id

    -- Update the meeting to link the translator
    UPDATE MEETINGS
    SET translator_id = @translator_id
    WHERE meeting_id = @meeting_id;

    COMMIT TRANSACTION;
    PRINT 'Tłumacz został przypisany do spotkania pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO