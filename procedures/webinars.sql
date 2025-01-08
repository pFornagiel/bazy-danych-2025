CREATE PROCEDURE [dbo].[CreateWebinar]
  @tutor_id INT,
  @translator_id INT = NULL,
  @webinar_name VARCHAR(50),
  @webinar_description TEXT = NULL,
  @video_url TEXT = NULL,
  @meeting_url TEXT = NULL,
  @webinar_duration TIME(0) = '01:30:00',
  @publish_date DATETIME = NULL,
  @language_id INT = 0,
  @product_price MONEY = 0,
  @vacancies INT = 30,
  @release DATE,
  @webinar_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;
  
  BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Validate tutor exists
    EXEC [dbo].[CheckEmployeeExists] @tutor_id;

    -- Validate translator exists if provided
    IF @translator_id IS NOT NULL 
    BEGIN
      EXEC [dbo].[CheckEmployeeExists] @translator_id;
    END

    -- Validate language exists
    EXEC [dbo].[CheckLanguageExists] @language_id;
    
    -- Insert product first (webinars are products)
    DECLARE @product_id INT;
    INSERT INTO PRODUCTS (
      type_id, 
      price,
      total_vacancies,
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
      meeting_url,
      webinar_duration,
      publish_date,
      language_id
    ) VALUES (
      @product_id,
      @tutor_id,
      @translator_id,
      @webinar_name,
      @webinar_description,
      @video_url,
      @meeting_url,
      @webinar_duration,
      COALESCE(@publish_date, GETDATE()),
      @language_id
    );
    
    -- Set the output parameter to the new webinar's ID
    SET @webinar_id = @product_id;
    
    COMMIT TRANSACTION;
    
    PRINT('Webinar utworzono pomyślnie.')
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END