CREATE PROCEDURE CreateWebinar
  @tutor_id INT,
  @translator_id INT = NULL,
  @webinar_name VARCHAR(50),
  @webinar_description TEXT = NULL,
  @video_url TEXT = NULL,
  @webinar_duration TIME(0) = '01:30:00',
  @publish_date DATETIME = NULL,
  @language VARCHAR(50) = 'POLISH',
  @product_price MONEY = 0,
  @vacancies INT = 30,
  @release INT,
  @webinar_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Validate tutor exists
    IF NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @tutor_id)
    BEGIN
      RAISERROR('Tutor nie istnieje.', 16, 1);
      RETURN;
    END
    
    -- Validate translator exists if provided
    IF @translator_id IS NOT NULL AND 
       NOT EXISTS (SELECT 1 FROM EMPLOYEES WHERE emploee_id = @translator_id)
    BEGIN
      RAISERROR('Tłumacz nie istnieje.', 16, 1);
      RETURN;
    END
    
    -- Insert product first (webinars are products)
    DECLARE @product_id INT;
    INSERT INTO PRODUCTS (
      type_id,  -- Assuming type_id 4 is for webinars
      price,
      vacancies,
      release
    ) VALUES (
      4,  
      @product_price,
      @vacancies,
      @release
    );
    
    SET @product_id = SCOPE_IDENTITY();
    
    -- Insert webinar details
    INSERT INTO WEBINARS (
      webinar_id,
      tutor_id,
      translator_id,
      webinar_name,
      webinar_description,
      video_url,
      webinar_duration,
      publish_date,
      language
    ) VALUES (
      @product_id,
      @tutor_id,
      @translator_id,
      @webinar_name,
      @webinar_description,
      @video_url,
      @webinar_duration,
      COALESCE(@publish_date, GETDATE()),
      @language
    );
    
    -- Set the output parameter to the new webinar's ID
    SET @webinar_id = @product_id;
    
    COMMIT TRANSACTION;
    
    PRINT("Webinar utworzono pomyślnie.")
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END