-- Create the productIdList type
CREATE TYPE dbo.productIdList AS TABLE (
  product_id INT
);

-- Add new order
CREATE PROCEDURE [dbo].[CreateOrder]
  @student_id INT,
  @product_ids dbo.productIdList READONLY,  -- productIdList type
  @order_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id

    -- Check if student already has access to any of the products
    IF EXISTS (
      SELECT 1 
      FROM @product_ids pid
      JOIN PRODUCT_DETAILS pd ON pid.product_id = pd.product_id
      WHERE pd.student_id = @student_id
    )
    BEGIN
      THROW 50004, 'Student już ma dostęp do jednego lub więcej produktów z zamówienia.', 1;
    END

    -- Insert order
    INSERT INTO ORDERS (
      student_id,
      order_date
    ) VALUES (
      @student_id,
      GETDATE()
    );

    -- Get the newly created order ID
    SET @order_id = SCOPE_IDENTITY();

    -- Process each product in the list
    DECLARE @product_id INT;
    DECLARE @type_id INT;

    DECLARE product_cursor CURSOR FOR
    SELECT product_id FROM @product_ids;

    OPEN product_cursor;
    FETCH NEXT FROM product_cursor INTO @product_id;

    -- While there are rows to fetch from cursor and an error has not occured
    WHILE @@FETCH_STATUS = 0
    BEGIN
      -- Get product type
      SELECT @type_id = type_id FROM PRODUCTS WHERE product_id = @product_id;

      -- Process based on product type
      IF @type_id = 1
      -- study
      BEGIN
        EXEC [dbo].[createFeesForStudySession] @order_id, @product_id;
        EXEC [dbo].[createEntryFeeForStudy] @order_id, @product_id;
      END
      ELSE IF @type_id = 2
      -- subject
      BEGIN
        EXEC [dbo].[createFeesForSubject] @order_id, @product_id;
      END
      ELSE IF @type_id = 3 
      -- course
      BEGIN
        EXEC [dbo].[createFeesForCourse] @order_id, @product_id;
      END
      ELSE IF @type_id = 4
      -- webinar
      BEGIN
        EXEC [dbo].[createFeeForWebinar] @order_id, @product_id;
      END
      ELSE IF @type_id = 5
      -- session
      BEGIN
        EXEC [dbo].[createFeeForSession] @order_id, @product_id;
      END

      -- Fetch next product
      FETCH NEXT FROM product_cursor INTO @product_id;
    END

    CLOSE product_cursor;
    DEALLOCATE product_cursor;

    COMMIT TRANSACTION;
    PRINT 'Zamówienie utworzone pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- ADDING INDIVDUAL ENTRY FEES

-- Create a new Fee
CREATE PROCEDURE [dbo].[CreateFee]
  @order_id INT,
  @product_id INT,
  @type_id INT,
  @due_date DATE,
  @fee_value MONEY,
  @fee_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate order exists
    EXEC [dbo].[CheckOrderExists] @order_id

    -- Validate product exists
    EXEC [dbo].[CheckProductExists] @product_id

    -- Get student_id for checking
    DECLARE @student_id INT;
    SELECT @student_id = student_id FROM ORDERS WHERE order_id = @order_id;

    -- Check if fee for this product already exists
    IF EXISTS (
      SELECT 1 
      FROM FEES
      JOIN ORDERS ON FEES.order_id = ORDERS.order_id
      WHERE ORDERS.student_id = @student_id 
      AND FEES.product_id = @product_id
      AND FEES.payment_date IS NOT NULL
    )
    BEGIN
      PRINT 'Opłata za ten produkt już istnieje - pominięto.';
      RETURN;
    END

    -- Validate fee type exists
    IF NOT EXISTS (SELECT 1 FROM FEE_TYPES WHERE type_id = @type_id)
    BEGIN
      THROW 50000, 'Typ opłaty nie istnieje.', 1;
    END

    -- Insert fee
    INSERT INTO FEES (
      due_date,
      fee_value,
      type_id,
      order_id,
      product_id
    ) VALUES (
      @due_date,
      @fee_value,
      @type_id,
      @order_id,
      @product_id
    );

    -- Get the newly created fee ID
    SET @fee_id = SCOPE_IDENTITY();

    COMMIT TRANSACTION;
    PRINT 'Opłata dodana pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create fee for session
CREATE PROCEDURE [dbo].[createFeeForSession]
  @order_id INT,
  @session_id INT,
  @fee_type INT = 1
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @first_meeting_date DATE;

    -- Get the date of the first meeting in the session
    SELECT TOP 1 @first_meeting_date = MIN(term)
    FROM MEETINGS
    WHERE session_id = @session_id
    GROUP BY term
    ORDER BY term;

    DECLARE @date datetime;
    SET @date = DATEADD(DAY, -1, @first_meeting_date);

    DECLARE @fee_value MONEY;
    SET @fee_value = (SELECT price FROM PRODUCTS WHERE product_id = @session_id);

    DECLARE @fee_id INT;
    
    EXEC [dbo].[CreateFee]
      @order_id = @order_id,
      @product_id = @session_id,
      @type_id = @fee_type,
      @due_date = @date,
      @fee_value =  @fee_value,
      @fee_id = @fee_id OUTPUT;

    COMMIT TRANSACTION;
    PRINT 'Opłata za sesję utworzona pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create fees for subject sessions
CREATE PROCEDURE [dbo].[createFeesForSubject]
  @order_id INT,
  @subject_id INT,
  @fee_type INT = 1
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @session_id INT;

    DECLARE session_cursor CURSOR FOR
      SELECT session_id
      FROM SESSIONS
      WHERE subject_id = @subject_id;

    OPEN session_cursor;
    FETCH NEXT FROM session_cursor INTO @session_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
      -- Create fee for each session in the subject
      EXEC [dbo].[createFeeForSession] @order_id, @session_id, @fee_type;

      FETCH NEXT FROM session_cursor INTO @session_id;
    END

    CLOSE session_cursor;
    DEALLOCATE session_cursor;

    COMMIT TRANSACTION;
    PRINT 'Opłaty za sesje przedmiotu utworzone pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create fees for study sessions
CREATE PROCEDURE [dbo].[createFeesForStudySession]
  @order_id INT,
  @study_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @subject_id INT;

    DECLARE subject_cursor CURSOR FOR
      SELECT subject_id
      FROM SUBJECTS
      WHERE study_id = @study_id;

    OPEN subject_cursor;
    FETCH NEXT FROM subject_cursor INTO @subject_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
      -- Create fees for each subject in the study
      EXEC [dbo].[createFeesForSubject] @order_id, @subject_id, 3;

      FETCH NEXT FROM subject_cursor INTO @subject_id;
    END

    CLOSE subject_cursor;
    DEALLOCATE subject_cursor;

    COMMIT TRANSACTION;
    PRINT 'Opłaty za sesje studiów utworzone pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create an entry fee for a study
CREATE PROCEDURE [dbo].[createEntryFeeForStudy]
  @order_id INT,
  @study_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @first_meeting_date DATE;

    -- Get the date of the first meeting in the study
    SELECT TOP 1 @first_meeting_date = MIN(term)
    FROM SESSIONS
    JOIN MEETINGS ON SESSIONS.session_id = MEETINGS.session_id
    WHERE SESSIONS.subject_id IN (SELECT subject_id FROM SUBJECTS WHERE study_id = @study_id)
    GROUP BY term
    ORDER BY term;

    DECLARE @date datetime;
    SET @date = DATEADD(DAY, -1, @first_meeting_date);

    DECLARE @fee_value MONEY;
    SET @fee_value = (SELECT price FROM PRODUCTS WHERE product_id = @study_id);

    -- Add entry fee
    DECLARE @fee_id INT;

    EXEC [dbo].[CreateFee]
      @order_id = @order_id,
      @product_id = @study_id,
      @type_id = 4,
      @due_date = @date,
      @fee_value =@fee_value,
      @fee_id = @fee_id OUTPUT;

    COMMIT TRANSACTION;
    PRINT 'Opłata wstępna za studia utworzona pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create fees for a course
CREATE PROCEDURE [dbo].[createFeesForCourse]
  @order_id INT,
  @course_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @product_price MONEY;
    DECLARE @advance_share DECIMAL(5,4);
    DECLARE @first_meeting_date DATE;

    -- Get product price and advance share
    SELECT @product_price = price, @advance_share = advance_share
    FROM PRODUCTS
    JOIN COURSES ON PRODUCTS.product_id = COURSES.course_id
    WHERE PRODUCTS.product_id = @course_id;

    -- Get the date of the first meeting in the course
    SELECT TOP 1 @first_meeting_date = MIN(term)
    FROM MEETINGS
    JOIN MODULES ON MEETINGS.module_id = MODULES.module_id
    WHERE MODULES.course_id = @course_id
    GROUP BY term
    ORDER BY term;

    DECLARE @date_advance datetime;
    SET @date_advance = GETDATE();

    -- Add advance fee
    DECLARE @advance_value MONEY;
    SET @advance_value =  @product_price * @advance_share;
    
    DECLARE @fee_id INT;
    
    EXEC [dbo].[CreateFee]
      @order_id = @order_id,
      @product_id = @course_id,
      @type_id = 6,
      @due_date = @date_advance,
      @fee_value = @advance_value,
      @fee_id = @fee_id OUTPUT;

    -- Add remaining fee for course
    
    DECLARE @value_remaining MONEY;
    SET @value_remaining = @product_price * (1 - @advance_share)

    DECLARE @date_remaining datetime;
    SET @date_remaining = DATEADD(DAY, -3, @first_meeting_date);
    
    EXEC [dbo].[CreateFee]
      @order_id = @order_id,
      @product_id = @course_id,
      @type_id = 5,
      @due_date = @date_remaining,
      @fee_value = @value_remaining,
      @fee_id = @fee_id OUTPUT;

    COMMIT TRANSACTION;
    PRINT 'Opłaty za kurs utworzone pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create fee for webinar
CREATE PROCEDURE [dbo].[createFeeForWebinar]
  @order_id INT,
  @webinar_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @fee_id INT;
    DECLARE @product_price MONEY;

    -- Get product price
    SELECT @product_price = price
    FROM PRODUCTS
    WHERE product_id = @webinar_id;

    -- Add fee for webinar
    DECLARE @date datetime;
    SET @date = GETDATE();

    EXEC [dbo].[CreateFee]
      @order_id = @order_id,
      @product_id = @webinar_id,
      @type_id = 7,
      @due_date =  @date,
      @fee_value = @product_price,
      @fee_id = @fee_id OUTPUT;

    COMMIT TRANSACTION;
    PRINT 'Opłata za webinar utworzona pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Create an order from the cart and empty the cart
CREATE PROCEDURE [dbo].[CreateOrderFromCart]
  @student_id INT,
  @order_id INT OUTPUT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id;

    -- Create a table variable to hold product IDs from the cart
    DECLARE @product_ids dbo.productIdList;

    -- Insert product IDs from the cart into the table variable
    INSERT INTO @product_ids (product_id)
    SELECT product_id FROM SHOPPING_CART WHERE student_id = @student_id;

    -- Create the order
    EXEC [dbo].[CreateOrder] @student_id, @product_ids, @order_id OUTPUT;

    -- Empty the cart
    DELETE FROM SHOPPING_CART WHERE student_id = @student_id;

    COMMIT TRANSACTION;
    PRINT 'Zamówienie utworzone z koszyka i koszyk opróżniony pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Add product to cart
CREATE PROCEDURE [dbo].[addProductToCart]
  @student_id INT,
  @product_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id;

    -- Validate product exists
    EXEC [dbo].[CheckProductExists] @product_id;

    -- Add product to cart
    INSERT INTO SHOPPING_CART (student_id, product_id)
    VALUES (@student_id, @product_id);

    COMMIT TRANSACTION;
    PRINT 'Produkt dodany do koszyka pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Remove product from cart
CREATE PROCEDURE [dbo].[removeProductFromCart]
  @student_id INT,
  @product_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id;

    -- Validate product exists in cart
    IF NOT EXISTS (SELECT 1 FROM SHOPPING_CART WHERE student_id = @student_id AND product_id = @product_id)
    BEGIN
      THROW 50005, 'Produkt nie znajduje się w koszyku.', 1;
      RETURN;
    END

    -- Remove product from cart
    DELETE FROM SHOPPING_CART
    WHERE student_id = @student_id AND product_id = @product_id;

    COMMIT TRANSACTION;
    PRINT 'Produkt usunięty z koszyka pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO

-- Update fee information by filling in the current date as the payment date
CREATE PROCEDURE [dbo].[UpdateFeePaymentDate]
  @fee_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate fee exists
    EXEC [dbo].[CheckFeeExists] @fee_id;

    -- Update the fee with the current date as the payment date
    UPDATE FEES
    SET payment_date = GETDATE()
    WHERE fee_id = @fee_id;

    COMMIT TRANSACTION;
    PRINT 'Data płatności została zaktualizowana pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
GO