EXEC CreateStudent
    @username = 'name',
  @first_name = 'John',
  @last_name = 'Doe',
  @email = 'john.doe@example.com',
    @phone = '123456789',
    @street='kawiory 21',
    @city='Krakow',
    @postal_code = '12-345',
    @user_id = INT OUTPUT

EXEC addProductToCart
@student_id = 1, @product_id = 1

EXEC addProductToCart
@student_id = 1, @product_id = 2

EXEC addProductToCart
@student_id = 1, @product_id = 2

EXEC CreateOrderFromCart
    @student_id = 1,
     @order_id = INT OUTPUT;

EXEC FillMeetingDetails
  @meeting_id = 1,
  @student_id = 1;

EXEC FillMeetingDetails
  @meeting_id = 2,
  @student_id = 1;
  
EXEC FillMeetingDetails
  @meeting_id = 3,
  @student_id = 1;