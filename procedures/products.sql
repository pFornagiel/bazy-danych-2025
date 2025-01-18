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
    UPDATE PRODUCT_DETAILS
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


CREATE PROCEDURE [dbo].[UpdateProductDetails]
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Update passed for studies
        UPDATE pd
        SET passed = CASE WHEN dbo.DoesStudentPassStudy(pd.student_id, s.study_id) = 1 THEN 1 ELSE 0 END
        FROM PRODUCT_DETAILS pd
        JOIN PRODUCTS p ON pd.product_id = p.product_id
        JOIN PRODUCT_TYPES pt ON p.type_id = pt.type_id
        JOIN STUDIES s ON s.study_id = p.product_id
        WHERE pt.type_name = 'study';

        -- Update passed for subjects
        UPDATE pd
        SET passed = CASE WHEN dbo.DoesStudentPassSubject(pd.student_id, subj.subject_id) = 1 THEN 1 ELSE 0 END
        FROM PRODUCT_DETAILS pd
        JOIN PRODUCTS p ON pd.product_id = p.product_id
        JOIN PRODUCT_TYPES pt ON p.type_id = pt.type_id
        JOIN SUBJECTS subj ON subj.subject_id = p.product_id
        WHERE pt.type_name = 'subject';
        
        -- Update passed for courses
        UPDATE pd
        SET passed = CASE WHEN dbo.DoesStudentPassCourse(pd.student_id, c.course_id) = 1 THEN 1 ELSE 0 END
        FROM PRODUCT_DETAILS pd
        JOIN PRODUCTS p ON pd.product_id = p.product_id
        JOIN PRODUCT_TYPES pt ON p.type_id = pt.type_id
        JOIN COURSES c ON c.course_id = p.product_id
        WHERE pt.type_name = 'course';

        -- Update passed for webinars
        UPDATE pd
        SET passed = 1
        FROM PRODUCT_DETAILS pd
        JOIN PRODUCTS p ON pd.product_id = p.product_id
        JOIN PRODUCT_TYPES pt ON p.type_id = pt.type_id
        WHERE pt.type_name = 'webinar';

        -- Update passed for sessions
        UPDATE pd
        SET passed = 1
        FROM PRODUCT_DETAILS pd
        JOIN PRODUCTS p ON pd.product_id = p.product_id
        JOIN PRODUCT_TYPES pt ON p.type_id = pt.type_id
        WHERE pt.type_name = 'session';
        
        -- Print success message
        PRINT 'Tabela PRODUCT_DETAILS została pomyślnie zaktualizowana.';
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        -- Rethrow error for debugging/logging purposes
        THROW;
    END CATCH
END;
GO