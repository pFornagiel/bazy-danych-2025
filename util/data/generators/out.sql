
DECLARE @product_ids dbo.productIdList;
DECLARE @order_id INT;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(20);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 166,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 166: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(992),
(98);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 163,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 163: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(72);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 127,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 127: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(549),
(984),
(976);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 109,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 109: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(737);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 51,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 51: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(169),
(992);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 28,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 28: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(980),
(159),
(994);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 27,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 27: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(55);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 102,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 102: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(975);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 141,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 141: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(16),
(976),
(987);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 178,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 178: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(146),
(991);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 134,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 134: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(983),
(122);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 43,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 43: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(734),
(990);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 92,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 92: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(992),
(986);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 89,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 89: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(980),
(270);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 175,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 175: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(978);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 50,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 50: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(992),
(612);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 15,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 15: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(41);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 103,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 103: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(603),
(988);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 71,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 71: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1002),
(1000);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 88,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 88: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(882),
(976);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 59,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 59: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(296),
(976);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 121,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 121: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(809),
(976),
(980);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 152,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 152: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(978),
(14),
(983);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 161,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 161: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(74),
(985),
(985);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 107,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 107: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(4);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 110,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 110: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(488),
(1008);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 200,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 200: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(977);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 113,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 113: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(135),
(991);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 115,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 115: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(977),
(1008),
(1008);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 189,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 189: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(977);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 29,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 29: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(19);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 160,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 160: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1004),
(2),
(995);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 82,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 82: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(982);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 17,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 17: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(71);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 93,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 93: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(989),
(6),
(997);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 187,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 187: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(978),
(991),
(975);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 126,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 126: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(22);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 133,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 133: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(911);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 165,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 165: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(100);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 11,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 11: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(7),
(974),
(977);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 45,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 45: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(995),
(974);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 177,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 177: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(100);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 35,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 35: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(981),
(1002);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 100,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 100: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(10),
(977),
(982);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 111,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 111: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(978),
(955);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 19,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 19: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(982),
(13),
(993);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 26,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 26: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(97),
(996);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 75,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 75: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(40);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 192,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 192: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(136),
(993),
(1002);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 72,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 72: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(996),
(2);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 155,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 155: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(2);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 31,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 31: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(178);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 90,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 90: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(173);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 61,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 61: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(982),
(1);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 128,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 128: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(6),
(991);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 83,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 83: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1004),
(1005);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 18,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 18: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(783);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 34,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 34: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(135);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 147,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 147: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(74),
(979),
(976);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 171,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 171: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(979),
(978);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 78,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 78: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(11),
(983);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 40,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 40: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(19),
(1007),
(1004);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 8,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 8: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(982);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 33,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 33: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(10),
(985);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 44,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 44: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1007),
(981),
(357);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 76,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 76: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(998);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 68,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 68: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(516),
(994);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 94,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 94: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(983),
(998);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 193,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 193: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(2),
(985),
(980);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 142,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 142: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(993);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 157,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 157: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1007);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 77,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 77: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1003),
(119),
(976);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 179,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 179: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(12),
(981);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 137,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 137: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(90),
(980),
(998);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 98,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 98: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(267),
(981),
(979);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 1,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 1: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(141);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 108,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 108: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(128),
(1003),
(1003);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 130,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 130: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(979),
(92);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 46,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 46: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(993);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 65,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 65: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1008);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 143,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 143: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(110);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 42,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 42: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(9),
(996);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 194,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 194: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(578);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 10,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 10: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(983);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 104,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 104: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(115),
(980);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 140,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 140: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(976),
(974),
(124);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 173,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 173: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(982),
(20),
(986);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 97,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 97: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(693),
(996),
(989);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 91,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 91: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(978),
(785);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 54,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 54: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(3),
(992),
(999);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 25,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 25: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1006),
(889);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 67,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 67: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(992),
(983),
(281);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 170,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 170: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(785);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 168,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 168: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(978),
(982);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 38,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 38: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(984);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 114,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 114: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1005),
(166),
(975);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 164,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 164: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1007),
(1006),
(116);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 20,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 20: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(35),
(981);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 39,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 39: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(995),
(19),
(991);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 118,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 118: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(981),
(452);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 86,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 86: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(158),
(990),
(988);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 122,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 122: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(981);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 169,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 169: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(15),
(979);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 156,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 156: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(983),
(164);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 21,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 21: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(850),
(1004),
(980);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 9,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 9: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(838),
(982);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 3,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 3: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(34);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 124,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 124: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(988),
(981),
(995);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 73,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 73: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(464),
(981),
(981);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 112,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 112: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(803);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 7,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 7: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(21);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 101,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 101: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(974);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 186,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 186: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(986);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 172,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 172: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(976);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 185,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 185: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(987);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 41,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 41: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(120);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 81,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 81: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(17),
(983);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 4,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 4: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(988),
(726);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 6,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 6: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(254),
(1000);

    -- Wywo³anie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 5,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'B³¹d dla student_id 5: ' + ERROR_MESSAGE();
END CATCH;
