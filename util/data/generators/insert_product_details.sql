
    DECLARE @product_ids dbo.productIdList;
    DECLARE @order_id INT;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (893),
(1040);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 199,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 199: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (11);

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
    (599),
(1015),
(1014);

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
    (170),
(1022);

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
    (3),
(1028);

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
    (1014),
(1038);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 62,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 62: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1036);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 14,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 14: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1033),
(20),
(1015);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 56,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 56: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (697),
(1015),
(1018);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 145,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 145: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (353),
(1027);

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
    (20);

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
    (1033),
(1046);

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
    (800);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 85,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 85: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (7),
(1023),
(1017);

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
    (14),
(1022),
(1019);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 74,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 74: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (378);

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
    (1018),
(1032),
(791);

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
    (229),
(1038),
(1019);

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
    (589);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 47,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 47: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1023);

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
    (302);

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
    (170),
(1019);

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
    (9),
(1018),
(1040);

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
    (1023),
(387),
(1035);

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
    (1045),
(1014),
(1047);

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
    (52);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 116,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 116: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1015),
(691);

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
    (16),
(1022);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 151,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 151: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1017),
(1016),
(1029);

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
    (115),
(1019);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 37,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 37: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1026),
(1041);

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
    (20),
(1043),
(1042);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 49,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 49: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1027),
(904);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 70,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 70: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (16),
(1035),
(1028);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 159,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 159: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (97),
(1024),
(1019);

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
    (124);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 150,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 150: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1);

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
    (1028),
(1018),
(1017);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 2,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 2: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (556),
(1047),
(1021);

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
    (1014);

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
    (1020);

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
    (22),
(1014),
(1016);

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
    (769),
(1020),
(1030);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 123,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 123: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (2),
(1038);

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
    (1017);

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
    (258),
(1017);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 55,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 55: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (55),
(1037);

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
    (252),
(1048),
(1016);

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
    (140);

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
    (7),
(1017),
(1028);

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
    (1044);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 80,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 80: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (25),
(1033),
(1042);

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
    (180),
(1038);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 191,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 191: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1021),
(1018);

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
    (674);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 182,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 182: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (980);

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
    (641),
(1016),
(1043);

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
    (438),
(1014),
(1028);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 119,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 119: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (734),
(1020);

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
    (10),
(1017);

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
    (126),
(1020);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 125,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 125: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1028);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 23,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 23: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (93),
(1017);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 96,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 96: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (97),
(1020);

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
    (1023),
(1014),
(1025);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 36,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 36: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (8);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 196,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 196: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (26);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 60,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 60: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1017),
(32);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 181,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 181: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (105),
(1017),
(1031);

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
    (12),
(1019);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 195,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 195: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (131),
(1025),
(1022);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 184,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 184: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (104),
(1042);

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
    (92),
(1038),
(1042);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 16,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 16: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (844);

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
    (959),
(1035),
(1041);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 197,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 197: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1015),
(1019),
(1037);

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
    (161),
(1025),
(1035);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 176,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 176: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1018);

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
    (1044),
(11);

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
    (424),
(1028);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 120,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 120: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (30),
(1020);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 167,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 167: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1020);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 153,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 153: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (139),
(1023),
(1029);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 69,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 69: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (879),
(1015),
(1024);

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
    (1024),
(847);

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
(1033),
(1014);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 144,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 144: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (144);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 105,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 105: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1019),
(9),
(1021);

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
    (1014);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 52,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 52: ' + ERROR_MESSAGE();
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
            @student_id = 117,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 117: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1022);

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
    (653);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 188,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 188: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (154),
(1027),
(1041);

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
    (1019),
(1023),
(1019);

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
    (18);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 136,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 136: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (119),
(1021);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 158,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 158: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1020),
(1033),
(575);

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
    (1016),
(611),
(1036);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 30,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 30: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (73),
(1020);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 138,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 138: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1025);

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
    (1021),
(13),
(1026);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 183,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 183: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1018),
(521),
(1031);

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
    (73),
(1018);

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
    (456);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 154,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 154: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (40),
(1016);

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
    (1044),
(887);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 180,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 180: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1045),
(854);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 190,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 190: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (527),
(1047),
(1021);

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
    (1029),
(1039),
(181);

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
    (1043),
(288);

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
    (1020),
(14);

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
    (1041);

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
    (1016);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 106,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 106: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (152),
(1035);

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
    (1047),
(610);

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
    (459),
(1021),
(1021);

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
    (15),
(1043);

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
    (1021),
(1039),
(257);

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
    (1018),
(1034);

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
    (1043),
(14);

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
    (1040),
(1027);

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
    (69),
(1027),
(1018);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 24,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 24: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1046),
(1026);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 87,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 87: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (110),
(1021),
(1041);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 131,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 131: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (114),
(1031),
(1048);

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
    (800),
(1032);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 129,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 129: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1040),
(1023);

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
    (1026);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 146,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 146: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (153);

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
    (65),
(1032),
(1042);

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
    (41),
(1023),
(1025);

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
    (1);

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
    (1030),
(858),
(1014);

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
    (1034);

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
    (5),
(1022);

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
    (164);

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
    (1015);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 58,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 58: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1035);

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
    (267),
(1030),
(1035);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 13,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 13: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1035),
(1029),
(171);

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
    (859),
(1033);

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
    (3),
(1033);

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
    (10),
(1028);

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
    (692),
(1023),
(1015);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 22,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 22: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1022);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 198,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 198: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1016);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 174,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 174: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (171),
(1031),
(1016);

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
    (174);

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
    (94),
(1041),
(1031);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 148,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 148: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1029),
(172),
(1015);

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
    (12),
(1033),
(1048);

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
    (1040);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 135,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 135: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (151),
(1016);

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
    (19);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 48,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 48: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (169),
(1022),
(1015);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 139,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 139: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1023),
(16);

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
    (1),
(1041);

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
    (19);

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
    (1043);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 32,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 32: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (358);

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
    (42),
(1043),
(1030);

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
    (1033),
(169),
(1048);

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
    (269);

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
    (382),
(1039),
(1029);

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
    (7),
(1036);

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
    (887);

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
    (71),
(1042);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 64,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 64: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1044);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 132,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 132: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (12),
(1048);

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
    (1026);

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
    (1022),
(973);

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
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (183),
(1030);

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
    (15),
(1036);

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
    (792),
(1025);

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
    (1042),
(956);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 12,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 12: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (9);

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
    (646),
(1043);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 99,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 99: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1029),
(1022);

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
    (1048),
(79);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 162,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 162: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (5);

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
    (63);

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
    (515),
(1041),
(1032);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 57,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 57: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (300);

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
    (541);

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
    (1037),
(130);

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
    (17),
(1044);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 66,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 66: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (10);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 84,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 84: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (71),
(1025),
(1038);

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
    (1035),
(11),
(1029);

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
    (526),
(1037),
(1025);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 79,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 79: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (619),
(1034),
(1026);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 63,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 63: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1036),
(13);

        -- Wywo³anie procedury
        EXEC [dbo].[CreateOrder]
            @student_id = 95,
            @product_ids = @product_ids,
            @order_id = @order_id OUTPUT;

        EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
    END TRY
    BEGIN CATCH
        PRINT 'B³¹d dla student_id 95: ' + ERROR_MESSAGE();
    END CATCH;
    
    BEGIN TRY
        DELETE FROM @product_ids;
        SET @order_id = NULL;

        -- Wstaw produkty do tabeli
        INSERT INTO @product_ids (product_id)
        VALUES
    (1024),
(244),
(1035);

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
    (1038);

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
    (1047),
(828);

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
    