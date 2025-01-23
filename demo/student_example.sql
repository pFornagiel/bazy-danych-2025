declare @user_id INT

EXEC CreateStudent
    @username = 'naSme',
  @first_name = 'JohSn',
  @last_name = 'Doe',
  @email = 'john.dSoe@example.com',
    @phone = '123456289',
    @street='kawiory 21',
    @city='Krakow',
    @postal_code = '12-345',
    @user_id = @user_id OUTPUT


EXEC addProductToCart
@student_id = 303, @product_id = 1

EXEC addProductToCart
@student_id = 303, @product_id = 2

select * from SHOPPING_CART

EXEC addProductToCart
@student_id = 303, @product_id = 2

EXEC addProductToCart
@student_id = 2, @product_id = 2

EXEC CreateOrderFromCart
    @student_id = 303,
     @order_id = INT OUTPUT;

EXEC FillMeetingDetails
  @meeting_id = 1,
  @student_id = 303;

EXEC FillMeetingDetails
  @meeting_id = 2,
  @student_id = 303;


EXEC FillMeetingDetails
  @meeting_id = 3,
  @student_id = 303;