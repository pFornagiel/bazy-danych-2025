DECLARE @product INT;
SET @product = (SELECT TOP 1 products.product_id FROM products where products.type_id = 1);

EXEC addProductToCart @student_id=3, @product_id = @product;
EXEC CreateOrderFromCart @student_id = 3, @order_id = NULL;

DECLARE @product INT;
SET @product = (SELECT TOP 1 products.product_id FROM products where products.type_id = 2);

EXEC addProductToCart @student_id=4, @product_id = @product;
EXEC CreateOrderFromCart @student_id = 4, @order_id = NULL;


DECLARE @product INT;
SET @product = (SELECT TOP 1 products.product_id FROM products where products.type_id = 3);

EXEC addProductToCart @student_id=10, @product_id = @product;
EXEC CreateOrderFromCart @student_id = 10, @order_id = NULL;


DECLARE @product INT;
SET @product = (SELECT TOP 1 products.product_id FROM products where products.type_id = 4);

EXEC addProductToCart @student_id=5, @product_id = @product;
EXEC CreateOrderFromCart @student_id = 5, @order_id = NULL;


DECLARE @product INT;
SET @product = (SELECT TOP 1 products.product_id FROM products where products.type_id = 5);

EXEC addProductToCart @student_id=4, @product_id = @product;
EXEC CreateOrderFromCart @student_id = 4, @order_id = NULL;

DELETE PRODUCTS_DETAILS;
DELETE FEES;
DELETE ORDERS;
DELETE SHOPPING_CART;
DELETE MEETING_DETAILS;