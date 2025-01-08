-- Fill the PRODUCTS_DETAILS table
CREATE PROCEDURE [dbo].[FillProductDetails]
  @student_id INT,
  @product_id INT,
  @order_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id

    -- Validate product exists
    EXEC [dbo].[CheckProductExists] @product_id

    -- Validate order exists
    EXEC [dbo].[CheckOrderExists] @order_id

    -- Insert into PRODUCTS_DETAILS
    INSERT INTO PRODUCTS_DETAILS (
      student_id,
      product_id,
      order_id
    ) VALUES (
      @student_id,
      @product_id,
      @order_id
    );

    COMMIT TRANSACTION;
    PRINT 'Tabela PRODUCTS_DETAILS została wypełniona pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Mark a product as passed for a given student
CREATE PROCEDURE [dbo].[MarkProductAsPassed]
  @product_id INT,
  @student_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id

    -- Validate product exists
    EXEC [dbo].[CheckProductExists] @product_id

    -- Update the product details to mark as passed
    UPDATE PRODUCTS_DETAILS
    SET passed = 1
    WHERE product_id = @product_id AND student_id = @student_id;

    COMMIT TRANSACTION;
    PRINT 'Produkt oznaczony jako zaliczony pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO