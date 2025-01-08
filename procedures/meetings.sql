-- Fill the MEETING_DETAILS table
CREATE PROCEDURE [dbo].[FillMeetingDetails]
  @meeting_id INT,
  @student_id INT
AS
BEGIN
  SET NOCOUNT ON;

  BEGIN TRY
    BEGIN TRANSACTION;

    -- Validate meeting exists
    EXEC [dbo].[CheckMeetingExists] @meeting_id

    -- Validate student exists
    EXEC [dbo].[CheckStudentExists] @student_id

    -- Insert into MEETING_DETAILS
    INSERT INTO MEETING_DETAILS (
      meeting_id,
      student_id
    ) VALUES (
      @meeting_id,
      @student_id
    );

    COMMIT TRANSACTION;
    PRINT 'Tabela MEETING_DETAILS została wypełniona pomyślnie.';
  END TRY
  BEGIN CATCH
    IF @@TRANCOUNT > 0
      ROLLBACK TRANSACTION;
    THROW;
  END CATCH
END;
