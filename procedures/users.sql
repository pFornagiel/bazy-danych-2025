-- Stworzenie zwykłego usera
CREATE PROCEDURE CreateBasicUser
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
      RAISERROR('Niepoprawny format adresu email.', 16, 1);
      RETURN;
    END
    
    -- Validate phone number if provided
    IF @phone IS NOT NULL AND (LEN(@phone) != 9 OR ISNUMERIC(@phone) = 0)
    BEGIN
      RAISERROR('Niepoprawny format numeru telefonu.', 16, 1);
      RETURN;
    END
    
    -- Check for existing email
    IF EXISTS (SELECT 1 FROM USERS WHERE email = @email)
    BEGIN
      RAISERROR('Email został już przypisany do innego użytkownika.', 16, 1);
      RETURN;
    END
    
    -- Check for existing phone if provided
    IF @phone IS NOT NULL AND EXISTS (SELECT 1 FROM USERS WHERE phone = @phone)
    BEGIN
      RAISERROR('Numer telefonu został już przypisany do innego użytkownika.', 16, 1);
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


-- Stworzenie nowego studenta
CREATE PROCEDURE CreateStudent
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @street VARCHAR(30),
  @city VARCHAR(30),
  @postal_code VARCHAR(30),
  @country VARCHAR(30),
  @user_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Create basic user first
    DECLARE @id INT;
    EXEC CreateBasicUser 
      @username = @username,
      @first_name = @first_name,
      @last_name = @last_name,
      @email = @email,
      @phone = @phone,
      @user_id = @id OUTPUT;
    
    -- Insert student details
    INSERT INTO STUDENTS (
      student_id,
      street,
      city,
      postal_code,
      country
    ) VALUES (
      @user_id,
      @street,
      @city,
      @postal_code,
      @country
    );
    
    COMMIT TRANSACTION;
    PRINT("Student utworzony pomyślnie")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END

-- Utworzenie pracwonika
CREATE PROCEDURE CreateEmployee
  @username VARCHAR(30),
  @first_name NVARCHAR(30),
  @last_name NVARCHAR(30),
  @email VARCHAR(50),
  @phone VARCHAR(9) = NULL,
  @employee_type_id INT,
  @hire_date DATE = NULL,
  @birth_date DATE = NULL,
  @employee_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Validate employee type exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEE_TYPES WHERE type_id = @employee_type_id)
    BEGIN
      RAISERROR('Nieprawidłowy typ pracownika.', 16, 1);
      RETURN;
    END
    
    -- Create basic user first
    EXEC CreateBasicUser 
      @username = @username,
      @first_name = @first_name,
      @last_name = @last_name,
      @email = @email,
      @phone = @phone,
      @employee_id = @user_id OUTPUT;
    
    -- Insert employee details
    INSERT INTO EMPLOYEES (
      emploee_id,
      type_id,
      hire_date,
      birth_date
    ) VALUES (
      @user_id,
      @employee_type_id,
      -- Check for NULL value
      COALESCE(@hire_date, GETDATE()),
      @birth_date
    );
    
    COMMIT TRANSACTION;
    PRINT("Pracownik utworzony pomyślnie.")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END