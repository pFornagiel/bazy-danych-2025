CREATE PROCEDURE [dbo].[CreateStudy]
  @study_name NVARCHAR(50),
  @study_description TEXT = NULL,
  @product_price MONEY,
  @vacancies INT = 30,
  @release DATE,
  @study_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Insert product first (studies are products)
    INSERT INTO PRODUCTS (
      type_id,
      price,
      total_vacancies,
      release
    ) VALUES (
      1,  
      @product_price,
      @vacancies,
      @release
    );
    
    -- Get the newly created product ID
    SET @study_id = SCOPE_IDENTITY();
    
    -- Insert study details
    INSERT INTO STUDIES (
      study_id,
      study_name,
      study_description
    ) VALUES (
      @study_id,
      @study_name,
      @study_description
    );
    
    COMMIT TRANSACTION;
    
    PRINT('Studium utworzono pomyślnie')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
GO

-- Create new product
CREATE PROCEDURE [dbo].[CreateSubject]
  @study_id INT,
  @tutor_id INT,
  @subject_name NVARCHAR(50),
  @subject_description TEXT = NULL,
  @product_price MONEY = 0,
  @vacancies INT = 30,
  @release DATE,
  @subject_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate study exists
    EXEC [dbo].[CheckStudyExists] @study_id

    -- Validate tutor exists
    EXEC [dbo].[CheckEmployeeExists] @tutor_id

    -- Insert product first (subjects are products)
    INSERT INTO PRODUCTS (
      type_id,  -- Assuming type_id 2 is for subjects
      price,
      total_vacancies,
      release
    ) VALUES (
      2,
      @product_price,
      @vacancies,
      @release
    );

    -- Get the newly created product ID
    SET @subject_id = SCOPE_IDENTITY();

    -- Insert subject details
    INSERT INTO SUBJECTS (
      subject_id,
      study_id,
      tutor_id,
      subject_name,
      subject_description
    ) VALUES (
      @subject_id,
      @study_id,
      @tutor_id,
      @subject_name,
      @subject_description
    );

    COMMIT TRANSACTION;
    PRINT 'Przedmiot dodany pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create new session
CREATE PROCEDURE [dbo].[CreateSession]
  @subject_id INT,
  @product_price MONEY = 0,
  @vacancies INT = 30,
  @release DATE,
  @session_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate subject exists
    IF NOT EXISTS (SELECT 1 FROM SUBJECTS WHERE subject_id = @subject_id)
    BEGIN
      RAISERROR('Przedmiot nie istnieje.', 16, 1);
      RETURN;
    END

    -- Insert product first (sessions are products)
    INSERT INTO PRODUCTS (
      type_id,  -- Assuming type_id 5 is for sessions
      price,
      total_vacancies,
      release
    ) VALUES (
      5,
      @product_price,
      @vacancies,
      @release
    );

    -- Get the newly created product ID
    SET @session_id = SCOPE_IDENTITY();

    -- Insert session details
    INSERT INTO SESSIONS (
      session_id,
      subject_id
    ) VALUES (
      @session_id,
      @subject_id
    );

    COMMIT TRANSACTION;
    PRINT 'Sesja dodana pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Dodanie nowej praktyki
CREATE PROCEDURE [dbo].[CreateInternship]
  @study_id INT,
  @start_date DATE = NULL,
  @end_date DATE = NULL,
  @internship_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate study exists
    EXEC [dbo].[CheckStudyExists] @study_id

    -- Insert internship
    INSERT INTO INTERSHIPS (
      study_id,
      start_date,
      end_date
    ) VALUES (
      @study_id,
      @start_date,
      @end_date
    );

    -- Get the newly created internship ID
    SET @internship_id = SCOPE_IDENTITY();

    COMMIT TRANSACTION;
    PRINT 'Praktyka dodana pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create details of internship
CREATE PROCEDURE [dbo].[CreateInternshipDetails]
  @internship_id INT,
  @student_id INT,
  @passed BIT = 0,
  @internship_detail_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate internship exists
    IF NOT EXISTS (SELECT 1 FROM INTERSHIPS WHERE internship_id = @internship_id)
    BEGIN
      RAISERROR('Praktyka nie istnieje.', 16, 1);
      RETURN;
    END

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id

    -- Insert internship details
    INSERT INTO INTERSHIP_DETAILS (
      internship_id,
      student_id,
      passed
    ) VALUES (
      @internship_id,
      @student_id,
      @passed
    );

    -- Get the newly created internship detail ID
    SET @internship_detail_id = SCOPE_IDENTITY();

    COMMIT TRANSACTION;
    PRINT 'Szczegóły praktyki dodane pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create new async meeting for session
CREATE PROCEDURE [dbo].[CreateSessionAsyncMeeting]
  @session_id INT,
  @tutor_id INT,
  @translator_id INT = NULL,
  @meeting_name VARCHAR(30),
  @term DATETIME,
  @duration TIME(0) = '01:30:00',
  @language_id INT = 0,
  @video_url TEXT,
  @meeting_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate session exists
    EXEC [dbo].[CheckSessionExists] @session_id

    -- Validate tutor exists
    EXEC [dbo].[CheckEmployeeExists] @tutor_id

    -- Insert meeting
    INSERT INTO MEETINGS (
      session_id,
      tutor_id,
      translator_id,
      meeting_name,
      term,
      duration,
      language_id
    ) VALUES (
      @session_id,
      @tutor_id,
      @translator_id,
      @meeting_name,
      @term,
      @duration,
      @language_id
    );

    -- Get the newly created meeting ID
    SET @meeting_id = SCOPE_IDENTITY();

    -- Insert async meeting details
    INSERT INTO ASYNC_MEETINGS (
      meeting_id,
      video_url
    ) VALUES (
      @meeting_id,
      @video_url
    );

    COMMIT TRANSACTION;
    PRINT('Spotkanie asynchroniczne utworzone pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Dodanie nowego spotkania stacjonarnego dla sesji
CREATE PROCEDURE [dbo].[CreateSessionStationaryMeeting]
  @session_id INT,
  @tutor_id INT,
  @translator_id INT = NULL,
  @meeting_name VARCHAR(30),
  @term DATETIME,
  @duration TIME(0) = '01:30:00',
  @language_id INT = 0,
  @classroom VARCHAR(10),
  @meeting_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate session exists
    EXEC [dbo].[CheckSessionExists] @session_id

    -- Validate tutor exists
    EXEC [dbo].[CheckEmployeeExists] @tutor_id

    -- Insert meeting
    INSERT INTO MEETINGS (
      session_id,
      tutor_id,
      translator_id,
      meeting_name,
      term,
      duration,
      language_id
    ) VALUES (
      @session_id,
      @tutor_id,
      @translator_id,
      @meeting_name,
      @term,
      @duration,
      @language_id
    );

    -- Get the newly created meeting ID
    SET @meeting_id = SCOPE_IDENTITY();

    -- Insert stationary meeting details
    INSERT INTO STATIONARY_MEETINGS (
      meeting_id,
      classroom
    ) VALUES (
      @meeting_id,
      @classroom
    );

    COMMIT TRANSACTION;
    PRINT('Spotkanie stacjonarne utworzone pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Dodanie nowego spotkania synchronicznego dla sesji
CREATE PROCEDURE [dbo].[CreateSessionSyncMeeting]
  @session_id INT,
  @tutor_id INT,
  @translator_id INT = NULL,
  @meeting_name VARCHAR(30),
  @term DATETIME,
  @duration TIME(0) = '01:30:00',
  @language_id INT = 0,
  @meeting_url TEXT,
  @video_url TEXT = NULL,
  @meeting_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate session exists
    EXEC [dbo].[CheckSessionExists] @session_id

    -- Validate tutor exists
    EXEC [dbo].[CheckEmployeeExists] @tutor_id

    -- Insert meeting
    INSERT INTO MEETINGS (
      session_id,
      tutor_id,
      translator_id,
      meeting_name,
      term,
      duration,
      language_id
    ) VALUES (
      @session_id,
      @tutor_id,
      @translator_id,
      @meeting_name,
      @term,
      @duration,
      @language_id
    );

    -- Get the newly created meeting ID
    SET @meeting_id = SCOPE_IDENTITY();

    -- Insert sync meeting details
    INSERT INTO SYNC_MEETINGS (
      meeting_id,
      video_url,
      meeting_url
    ) VALUES (
      @meeting_id,
      @video_url,
      @meeting_url
    );

    COMMIT TRANSACTION;
    PRINT('Spotkanie synchroniczne utworzone pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO