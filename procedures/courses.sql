-- Adding new course
CREATE PROCEDURE [dbo].[CreateCourse]
 @course_name NVARCHAR(50),
 @course_description TEXT = NULL,
 @advance_share DECIMAL(5,4) = 0.3000,
 @product_price MONEY = 0,
 @vacancies INT,
 @release DATE,
 @course_id INT OUTPUT
AS
BEGIN
  BEGIN TRANSACTION;

  BEGIN TRY
    -- Add the product
    INSERT INTO PRODUCTS (type_id, price, total_vacancies, release)
    VALUES (3, @product_price, @vacancies, @release);
    -- Get id of the product
    SET @course_id = SCOPE_IDENTITY();

    -- Add the course
    INSERT INTO COURSES (course_id, course_name, course_description, advance_share)
    VALUES (@course_id, @course_name, @course_description, @advance_share);

    COMMIT TRANSACTION;
    PRINT 'Kurs dodany pomyślnie.';
  END TRY
  BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
  END CATCH;
END;
GO

-- Create module for course of given ID
CREATE PROCEDURE [dbo].[CreateModule]
  @course_id INT,
  @tutor_id INT,
  @module_name NVARCHAR(50),
  @module_description TEXT,
  @module_id INT OUTPUT
AS
BEGIN

  -- Validate that the course exists
  IF NOT EXISTS (SELECT 1 FROM COURSES WHERE course_id = @course_id)
  BEGIN
    RAISERROR('Kurs nie istnieje.', 16, 1);
    RETURN;
  END

  -- Validate that the tutor exists
  EXEC [dbo].[CheckEmployeeExists] @tutor_id;

  -- Insert the new module
  INSERT INTO MODULES (course_id, tutor_id, module_name, module_description)
  VALUES (@course_id, @tutor_id, @module_name, @module_description);

  -- Return the newly inserted module's ID
  SET @module_id = SCOPE_IDENTITY();
  PRINT('Moduł dodany pomyślnie.')
END
GO

-- Create Stationary Meeting for module
CREATE PROCEDURE [dbo].[CreateModuleStationaryMeeting]
  @module_id INT,
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

    -- Validate module exists
    EXEC [dbo].[CheckModuleExists] @module_id

    -- Validate tutor exists
    EXEC [dbo].CheckEmployeeExists @tutor_id

    -- Insert meeting
    INSERT INTO MEETINGS (
      module_id, 
      tutor_id, 
      translator_id, 
      meeting_name, 
      term, 
      duration, 
      language_id
    ) VALUES (
      @module_id, 
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
    PRINT('Spotkanie stacjonarne utworzone pomyślnie')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
GO


-- Create Sync Meetingu for module
CREATE PROCEDURE CreateModuleSyncMeeting
    @module_id INT,
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

    -- Validate module exists
    EXEC [dbo].[CheckModuleExists] @module_id

    -- Validate tutor exists
    EXEC [dbo].CheckEmployeeExists @tutor_id

    -- Insert meeting
    INSERT INTO MEETINGS (
      module_id, 
      tutor_id, 
      translator_id, 
      meeting_name, 
      term, 
      duration, 
      language_id
    ) VALUES (
      @module_id, 
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
    PRINT 'Spotkanie synchroniczne utworzone pomyślnie.'
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END
GO

-- Create Async Meetingu dla modułu
CREATE PROCEDURE CreateModuleAsyncMeeting
  @module_id INT,
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

    -- Validate module exists
    EXEC [dbo].[CheckModuleExists] @module_id

    -- Validate tutor exists
    EXEC [dbo].[CheckEmployeeExists] @tutor_id

    -- Insert meeting
    INSERT INTO MEETINGS (
      module_id, 
      tutor_id, 
      translator_id, 
      meeting_name, 
      term, 
      duration, 
      language_id
    ) VALUES (
      @module_id, 
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
END
GO
