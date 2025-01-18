
    DECLARE @product_ids dbo.productIdList;
    DECLARE @order_id INT;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1046),
(1023),
(1025);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 175,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 175: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (817),
(1020);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 22,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 22: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (7),
(1016),
(1016);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 177,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 177: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1017);

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
    (1039);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 174,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 174: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (13);

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
    (88),
(1019),
(1019);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 60,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 60: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (14),
(1020);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 123,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 123: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1036),
(6),
(1028);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 138,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 138: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (243),
(1015);

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
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (14);

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
    (135),
(1028);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 133,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 133: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1014);

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
    (13);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 21,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 21: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (66),
(1042);

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
    (10);

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
    (1021),
(1025),
(75);

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
    (5),
(1018),
(1040);

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
    (570),
(1024);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 103,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 103: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (148);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 82,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 82: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (73);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 68,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 68: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (36);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 99,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 99: ' + ERROR_MESSAGE();
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
            @student_id = 170,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 170: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1041);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 120,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 120: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (397),
(1048);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 171,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 171: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (126);

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
    (1026);

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
    (165);

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
    (1023);

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
    (1022),
(872);

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
    (60),
(1045),
(1036);

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
    (34),
(1022);

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
    (53);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 130,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 130: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1034),
(4);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 61,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 61: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1017);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 128,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 128: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (8),
(1030);

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
    (19),
(1042);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 110,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 110: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1022),
(1016),
(753);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 26,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 26: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (45),
(1035);

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
    (1038),
(408),
(1047);

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
    (1023),
(1030),
(690);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 50,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 50: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (71);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 155,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 155: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1026),
(1047);

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
    (6),
(1036),
(1015);

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
    (144),
(1040),
(1023);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 195,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 195: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (15),
(1023),
(1033);

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
    (134),
(1033),
(1039);

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
    (1014),
(1018),
(1019);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 112,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 112: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1047);

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
    (136),
(1040);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 53,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 53: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1047);

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
    (267),
(1027);

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
    (77),
(1016),
(1045);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 14,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 14: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1032),
(167);

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
    (486),
(1047),
(1034);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 189,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 189: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1032);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 45,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 45: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (434),
(1039),
(1041);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 57,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 57: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1016),
(84),
(1014);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 121,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 121: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (15);

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
    (15);

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
    (1023),
(1015);

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
    (4);

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
    (284),
(1042);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 150,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 150: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (176),
(1018),
(1021);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 179,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 179: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1019),
(24);

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
    (1046);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 119,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 119: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1014),
(434),
(1017);

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
    (1019);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 80,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 80: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1032);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 107,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 107: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1020),
(80);

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
    (6),
(1042),
(1019);

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
    (1045),
(1);

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
    (360),
(1021);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 199,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 199: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1015);

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
    (1018),
(1018);

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
    (17),
(1018),
(1022);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 98,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 98: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1030),
(68);

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
    (4);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 173,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 173: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1024);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 7,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 7: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (4);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 154,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 154: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (10),
(1040);

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
    (1013),
(1047);

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
    (1026),
(1023),
(1017);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 64,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 64: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1027),
(60);

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
    (129),
(1022),
(1021);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 9,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 9: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (110),
(1047);

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
    (8),
(1019);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 41,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 41: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1018),
(632),
(1043);

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
    (1020),
(1027),
(11);

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
    (897),
(1022),
(1021);

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
    (712),
(1030),
(1047);

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
    (814);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 11,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 11: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (28),
(1031),
(1031);

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
    (1021),
(116),
(1035);

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
    (405),
(1039);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 83,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 83: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (96),
(1017),
(1023);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 36,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 36: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1023),
(65),
(1033);

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
    (919);

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
    (1032),
(151);

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
    (2);

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
    (16),
(1017);

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
    (1041),
(319);

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
    (548);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 187,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 187: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1044);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 92,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 92: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1021),
(1032);

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
    (1041),
(538),
(1025);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 102,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 102: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (948),
(1021);

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
(1026),
(1035);

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
    (87),
(1022),
(1036);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 67,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 67: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (84),
(1016);

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
    (19),
(1045),
(1023);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 197,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 197: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1020),
(1030),
(69);

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
    (9),
(1044);

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
    (5),
(1034),
(1046);

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
    (1015),
(29),
(1017);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 163,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 163: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1027),
(1047);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 106,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 106: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (49);

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
    (164);

        -- Wywołanie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 141,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'Błąd dla student_id 141: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (58),
(1027),
(1021);

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
    (1011),
(1021);

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
    