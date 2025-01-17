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