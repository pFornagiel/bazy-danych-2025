CREATE TRIGGER trg_CanProductBeInShoppingCart
    ON shopping_cart
    AFTER INSERT, UPDATE
    AS BEGIN
    SET NOCOUNT ON;
    DECLARE @student_id INT, @product_id INT;
    SELECT @student_id = student_id, @product_id = product_id
    FROM inserted
    IF 0 = dbo.CanAddToCart(@student_id, @product_id)
    BEGIN
        RAISERROR ('Cannot add this product to shopping cart', 16, 1);
        ROLLBACK TRANSACTION;
    END
END


CREATE TRIGGER trg_LimitVacanciesOnInsert
ON PRODUCT_DETAILS
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @product_id INT;
  DECLARE @current_count INT;
  DECLARE @vacancies INT;

  -- Pobierz ID produktu z tabeli inserted
  SELECT @product_id = product_id FROM inserted;

  -- Policz obecnych użytkowników zapisanych na produkt
  SELECT @current_count = COUNT(*)
  FROM PRODUCT_DETAILS
  WHERE product_id = @product_id;

  -- Pobierz maksymalną liczbę miejsc
  SELECT @vacancies = total_vacancies
  FROM PRODUCTS
  WHERE product_id = @product_id;

  -- Jeśli limit miejsc został przekroczony, przerwij transakcję
  IF @current_count > @vacancies
  BEGIN
    THROW 50000, 'Limit miejsc został przekroczony.', 1;
    ROLLBACK TRANSACTION;
  END
END;

CREATE TRIGGER trg_PreventPastMeetingAttendance
ON MEETING_DETAILS
INSTEAD OF INSERT
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @meeting_id INT;
  DECLARE @current_date DATETIME = GETDATE();
  DECLARE @meeting_date DATETIME;

  -- Pobierz ID spotkania z tabeli inserted
  SELECT @meeting_id = meeting_id FROM inserted;

  -- Pobierz datę spotkania
  SELECT @meeting_date = term
  FROM MEETINGS
  WHERE meeting_id = @meeting_id;

  -- Sprawdź, czy spotkanie jest w przeszłości
  IF @meeting_date < @current_date
  BEGIN
    THROW 50003, 'Nie można zarejestrować obecności na spotkaniu, które już się odbyło.', 1;
    RETURN;
  END

  -- Wstaw dane do MEETING_DETAILS, jeśli walidacja przeszła
  INSERT INTO MEETING_DETAILS (meeting_id, student_id)
  SELECT meeting_id, student_id
  FROM inserted;

  PRINT 'Obecność została zarejestrowana pomyślnie.';
END;

CREATE TRIGGER trg_CheckRoomAvailability
ON STATIONARY_MEETINGS
AFTER INSERT, UPDATE
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @meeting_id INT;
  DECLARE @classroom VARCHAR(10);
  DECLARE @term DATETIME;
  DECLARE @duration TIME(0);

  -- Pobierz dane z tabeli inserted
  SELECT
    @meeting_id = sm.meeting_id,
    @classroom = sm.classroom,
    @term = m.term,
    @duration = m.duration
  FROM inserted i
  JOIN MEETINGS m ON i.meeting_id = m.meeting_id
  JOIN STATIONARY_MEETINGS sm ON i.meeting_id = sm.meeting_id;

  -- Sprawdź, czy sala jest już zajęta w podanym terminie
  IF EXISTS (
    SELECT 1
    FROM MEETINGS m
    JOIN STATIONARY_MEETINGS sm ON m.meeting_id = sm.meeting_id
    WHERE sm.classroom = @classroom
      AND (
        @term < DATEADD(MINUTE, DATEDIFF(MINUTE, 0, m.duration), m.term) -- Koniec istniejącego spotkania
        AND DATEADD(MINUTE, DATEDIFF(MINUTE, 0, @duration), @term) > m.term -- Początek nowego spotkania
      )
      AND m.meeting_id <> @meeting_id
  )
  BEGIN
    THROW 50004, 'Sala jest już zajęta w podanym terminie.', 1;
    ROLLBACK TRANSACTION;
  END
END;
GO

CREATE TRIGGER trg_ModuleMeetingsNoIntersection
ON MEETINGS
AFTER INSERT, UPDATE
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @module_id INT;
  DECLARE @new_term DATETIME;
  DECLARE @new_duration TIME(0);
  DECLARE @new_end_time DATETIME;

  -- Pobierz dane z tabeli inserted
  SELECT
    @module_id = m.module_id,
    @new_term = m.term,
    @new_duration = m.duration
  FROM inserted i
  JOIN MEETINGS m ON i.meeting_id = m.meeting_id;

  -- Oblicz koniec nowego spotkania
  SET @new_end_time = DATEADD(MINUTE, DATEDIFF(MINUTE, 0, @new_duration), @new_term);

  -- Sprawdź, czy istnieją kolizje w harmonogramie modułu
  IF EXISTS (
    SELECT 1
    FROM MEETINGS m
    WHERE m.module_id = @module_id
      AND m.meeting_id <> (SELECT meeting_id FROM inserted)
      AND (
        @new_term < DATEADD(MINUTE, DATEDIFF(MINUTE, 0, m.duration), m.term) -- Nowe spotkanie zaczyna się przed końcem istniejącego
        AND @new_end_time > m.term -- Nowe spotkanie kończy się po rozpoczęciu istniejącego
      )
  )
  BEGIN
    THROW 50001, 'Spotkania w module nachodzą na siebie.', 1;
    ROLLBACK TRANSACTION;
  END
END;


-- Trigger to add MEETING_DETAILS rows when a student is added to PRODUCTS_DETAILS
CREATE TRIGGER trg_AddMeetingDetails
ON PRODUCT_DETAILS
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @student_id INT;
  DECLARE @product_id INT;
  DECLARE @type_id INT;

  -- Get the inserted student_id and product_id
  SELECT @student_id = inserted.student_id, @product_id = inserted.product_id
  FROM inserted;

  -- Get the type_id of the product
  SELECT @type_id = type_id FROM PRODUCTS WHERE product_id = @product_id;

  -- Return early if type_id does not match study, subject, course, or session
  IF @type_id NOT IN (1, 2, 3, 5)
  BEGIN
    RETURN;
  END

  -- Add meeting details based on product type
  IF @type_id = 1 -- study
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    JOIN SESSIONS ON MEETINGS.session_id = SESSIONS.session_id
    JOIN SUBJECTS ON SESSIONS.subject_id = SUBJECTS.subject_id
    WHERE SUBJECTS.study_id = @product_id;
  END
  ELSE IF @type_id = 2 -- subject
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    JOIN SESSIONS ON MEETINGS.session_id = SESSIONS.session_id
    WHERE SESSIONS.subject_id = @product_id;
  END
  ELSE IF @type_id = 3 -- course
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    JOIN MODULES ON MEETINGS.module_id = MODULES.module_id
    WHERE MODULES.course_id = @product_id;
  END
  ELSE IF @type_id = 5 -- session
  BEGIN
    INSERT INTO MEETING_DETAILS (meeting_id, student_id)
    SELECT meeting_id, @student_id
    FROM MEETINGS
    WHERE session_id = @product_id;
  END
END;

drop TRIGGER trg_OrdersAddProductDetails
CREATE TRIGGER trg_OrdersAddProductDetails
ON ORDERS
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Get all products from cart for the student who just created an order
    INSERT INTO PRODUCT_DETAILS (student_id, product_id, order_id, passed)
    SELECT 
        inserted.student_id,
        SHOPPING_CART.product_id,
        inserted.order_id,
        0
    FROM inserted
    JOIN SHOPPING_CART ON SHOPPING_CART.student_id = inserted.student_id;
END;
GO

