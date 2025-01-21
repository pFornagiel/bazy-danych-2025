CREATE PROCEDURE [dbo].[RandomlyUpdateFeePaymentDate]
  @order_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Declare variables
    DECLARE @fee_id INT;
    DECLARE @type_id INT;
    DECLARE @random_number FLOAT;
    DECLARE @payment_date DATE;

    -- Cursor to iterate through fees for the given order_id
    DECLARE fee_cursor CURSOR FOR
    SELECT fee_id, type_id
    FROM FEES
    WHERE order_id = @order_id;

    OPEN fee_cursor;
    FETCH NEXT FROM fee_cursor INTO @fee_id, @type_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
      -- Generate a random number between 0 and 1
      SET @random_number = RAND();

      -- Always perform the operation for specific type_ids
      IF @type_id IN (6, 4, 7, 1) OR @random_number <= 0.9
      BEGIN
        -- Generate a random date (example: between 2023-01-01 and 2023-12-31)
        SET @payment_date = DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 365, '2024-01-01');

        EXEC [dbo].[UpdateFeePaymentDateWithDate] @fee_id , @payment_date ;
      END

      -- Fetch the next fee_id and type_id
      FETCH NEXT FROM fee_cursor INTO @fee_id, @type_id;
    END

    CLOSE fee_cursor;
    DEALLOCATE fee_cursor;

    COMMIT TRANSACTION;
    PRINT 'Metoda została zastosowana do odpowiednich opłat.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    PRINT 'Wystąpił błąd: ' + ERROR_MESSAGE();
    THROW;
  END CATCH
END;
GO

CREATE PROCEDURE UpdateAttendanceRandomly
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Cursor to iterate through relevant records
        DECLARE attendance_cursor CURSOR FOR
        SELECT md.meeting_id, md.student_id
        FROM MEETING_DETAILS md
        JOIN MEETINGS m ON md.meeting_id = m.meeting_id
        WHERE m.term < GETDATE() AND md.attendance IS NULL;

        DECLARE @meeting_id INT;
        DECLARE @student_id INT;
        DECLARE @random_number FLOAT;

        OPEN attendance_cursor;
        FETCH NEXT FROM attendance_cursor INTO @meeting_id, @student_id;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Generate a random number between 0 and 1
            SET @random_number = RAND();

            -- Update attendance with 80% probability
            IF @random_number <= 0.8
            BEGIN
                UPDATE MEETING_DETAILS
                SET attendance = 1
                WHERE meeting_id = @meeting_id AND student_id = @student_id;
            END
            ELSE
            BEGIN
                UPDATE MEETING_DETAILS
                SET attendance = 0
                WHERE meeting_id = @meeting_id AND student_id = @student_id;
            END

            -- Fetch the next record
            FETCH NEXT FROM attendance_cursor INTO @meeting_id, @student_id;
        END

        CLOSE attendance_cursor;
        DEALLOCATE attendance_cursor;

        PRINT 'Attendance updated successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'Error occurred: ' + ERROR_MESSAGE();
    END CATCH
END;

CREATE PROCEDURE AssignInternshipsForAllStudies
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Cursor to iterate through all products with type_id = 1 (studies)
        DECLARE study_cursor CURSOR FOR
        SELECT product_id
        FROM PRODUCTS
        WHERE type_id = 1;

        DECLARE @study_id INT;

        OPEN study_cursor;
        FETCH NEXT FROM study_cursor INTO @study_id;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Log start
            PRINT 'Processing study_id: ' + CAST(@study_id AS NVARCHAR);

            BEGIN TRY
                -- Call AssignRandomInternships for the current study_id
                EXEC AssignRandomInternships @study_id = @study_id;

                -- Log success
                PRINT 'Successfully processed study_id: ' + CAST(@study_id AS NVARCHAR);
            END TRY
            BEGIN CATCH
                -- Log error for current study_id
                PRINT 'Error for study_id: ' + CAST(@study_id AS NVARCHAR) + ' - ' + ERROR_MESSAGE();
            END CATCH;

            -- Fetch the next study_id
            FETCH NEXT FROM study_cursor INTO @study_id;
        END

        CLOSE study_cursor;
        DEALLOCATE study_cursor;

        PRINT 'AssignRandomInternships executed for all studies.';
    END TRY
    BEGIN CATCH
        PRINT 'Error occurred in AssignInternshipsForAllStudies: ' + ERROR_MESSAGE();
    END CATCH
END;


drop PROCEDURE AssignRandomInternships
CREATE PROCEDURE AssignRandomInternships
    @study_id INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Cursor to iterate through students with the given study_id in product_details
        DECLARE student_cursor CURSOR FOR
        SELECT DISTINCT pd.student_id
        FROM PRODUCT_DETAILS pd
        WHERE pd.product_id = @study_id;

        DECLARE @student_id INT;
        DECLARE @random_number FLOAT;
        DECLARE @internship_id INT;
        DECLARE @end_date DATE;


        OPEN student_cursor;
        FETCH NEXT FROM student_cursor INTO @student_id;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Generate a random number between 0 and 1
            SET @random_number = RAND();

            -- Assign internship with 70% probability
            IF @random_number <= 0.7
            BEGIN
                -- Select a random internship related to the study
                SELECT TOP 1 @internship_id = internship_id, @end_date = end_date
                FROM INTERNSHIPS
                WHERE study_id = @study_id
                ORDER BY NEWID();

                -- Insert assignment into INTERNSHIP_DETAILS table
                IF @internship_id IS NOT NULL and @end_date < getdate()
                BEGIN
                    IF @random_number <= 0.5
                        INSERT INTO INTERNSHIP_DETAILS (internship_id,student_id, passed)
                        VALUES ( @internship_id, @student_id,1);
                    ELSE
                        INSERT INTO INTERNSHIP_DETAILS (internship_id,student_id, passed)
                        VALUES ( @internship_id, @student_id,0);
                END
            END

            -- Fetch the next student
            FETCH NEXT FROM student_cursor INTO @student_id;
        END

        CLOSE student_cursor;
        DEALLOCATE student_cursor;

        PRINT 'Internships assigned successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'Error occurred: ' + ERROR_MESSAGE();
    END CATCH
END;
