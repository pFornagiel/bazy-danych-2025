CREATE TRIGGER TR_Orders_AddProductDetails
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
