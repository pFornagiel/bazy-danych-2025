CREATE PROCEDURE CreateStudy
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
      type_id,  -- Assuming type_id 1 is for studies
      price,
      vacancies,
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
    
    PRINT("Studium utworzono pomyślnie")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END