
DECLARE @product_ids dbo.productIdList;
DECLARE @order_id INT;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(222),
(1062),
(1070);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 76,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 76: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1078),
(1073);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 51,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 51: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1079),
(1094),
(13);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 66,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 66: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1068),
(658),
(1065);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 29,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 29: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(10),
(1080),
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 182,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 182: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(453);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 25,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 25: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1067),
(417),
(1093);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 3,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 3: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(7);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 12,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 12: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(128),
(1089);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 84,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 84: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1079),
(48),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 31,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 31: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(2);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 93,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 93: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(29),
(1066),
(1086);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 135,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 135: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1066),
(150);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 126,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 126: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1094);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 18,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 18: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1066);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 190,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 190: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1089),
(1078);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 48,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 48: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1069),
(1063),
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 42,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 42: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1094);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 72,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 72: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(972),
(1094),
(1078);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 91,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 91: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1061),
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 73,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 73: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(57),
(1083),
(1073);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 147,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 147: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1090);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 167,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 167: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(18),
(1062);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 114,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 114: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(83),
(1081);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 65,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 65: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1073),
(17),
(1073);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 160,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 160: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(116),
(1071);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 124,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 124: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1),
(1086);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 140,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 140: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(589);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 117,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 117: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(152),
(1085),
(1088);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 162,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 162: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1062);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 129,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 129: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1091),
(2),
(1070);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 142,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 142: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1064),
(1078);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 152,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 152: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(17);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 86,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 86: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(20);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 19,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 19: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(12),
(1084),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 85,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 85: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1092),
(4);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 43,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 43: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1095),
(8),
(1095);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 10,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 10: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1063),
(1065),
(982);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 94,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 94: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1068),
(12);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 104,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 104: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1068),
(1069),
(1062);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 13,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 13: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(171),
(1081);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 79,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 79: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(815),
(1062);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 62,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 62: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1089);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 78,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 78: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1067),
(165);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 33,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 33: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1066),
(33),
(1090);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 169,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 169: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1063),
(292),
(1069);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 156,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 156: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(183),
(1078);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 139,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 139: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1087),
(279);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 145,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 145: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(683),
(1080);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 5,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 5: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(41),
(1089);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 165,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 165: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1095),
(1077),
(15);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 30,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 30: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1087);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 127,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 127: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(63),
(1084),
(1087);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 24,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 24: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(184);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 157,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 157: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(17);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 56,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 56: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(355);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 101,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 101: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(752);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 198,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 198: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1086);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 118,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 118: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1062),
(7);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 77,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 77: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1062),
(954);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 37,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 37: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(979);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 172,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 172: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 2,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 2: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(10),
(1070);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 8,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 8: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(76),
(1079);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 81,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 81: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(120),
(1070);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 49,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 49: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(139),
(1061);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 100,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 100: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1067),
(1091);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 47,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 47: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(9),
(1077);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 75,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 75: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(113),
(1067);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 108,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 108: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1061);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 111,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 111: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1066),
(60);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 186,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 186: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1084);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 191,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 191: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(886),
(1089),
(1065);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 159,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 159: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(32);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 178,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 178: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1053),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 184,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 184: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(92),
(1089),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 34,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 34: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(110),
(1079);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 89,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 89: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1089);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 96,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 96: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1086),
(5),
(1062);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 90,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 90: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(9),
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 4,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 4: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1090),
(1062),
(76);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 149,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 149: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 97,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 97: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1095),
(1073);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 105,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 105: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1083);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 74,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 74: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1071),
(9),
(1066);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 46,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 46: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1078);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 183,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 183: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 193,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 193: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(19),
(1063),
(1067);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 59,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 59: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(76);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 148,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 148: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1084),
(624),
(1094);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 161,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 161: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(529),
(1081);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 28,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 28: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1075),
(20);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 32,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 32: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(680);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 20,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 20: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1093),
(1073);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 27,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 27: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(12),
(1065);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 52,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 52: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1087),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 196,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 196: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1069),
(1),
(1071);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 146,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 146: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(4),
(1084);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 17,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 17: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1084);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 164,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 164: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1065),
(649);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 125,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 125: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1067);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 134,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 134: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1080),
(1069);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 168,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 168: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(10);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 176,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 176: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1063),
(15),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 200,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 200: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(27),
(1062);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 115,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 115: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(88),
(1069);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 109,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 109: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(37),
(1064),
(1061);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 151,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 151: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1079),
(900),
(1067);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 185,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 185: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(889);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 166,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 166: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(16);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 44,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 44: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(627);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 58,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 58: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(4),
(1086);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 137,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 137: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1082);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 132,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 132: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1),
(1087),
(1066);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 180,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 180: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(12);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 71,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 71: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1090),
(1067),
(1068);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 116,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 116: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(11);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 122,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 122: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1073),
(931);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 70,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 70: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1063);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 16,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 16: ' + ERROR_MESSAGE();
END CATCH;

BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
(1085),
(568),
(1064);

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = 40,
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id 40: ' + ERROR_MESSAGE();
END CATCH;
