import os

class OrderGenerator:
    def __init__(self, output_file='data/sql/insert_orders.sql'):
        self.output_file = output_file
        self.queries = []

    def student_add_product_to_cart(self, student_id, product_id):
        query = f"""
        EXEC [dbo].[addProductToCart] @student_id = {student_id}, @product_id = {product_id};
        """
        self.queries.append(query)

    def student_create_order_from_cart(self, student_id):
        query = f"""
        DECLARE @order_id INT;
        EXEC [dbo].[CreateOrderFromCart] @student_id = {student_id}, @order_id = @order_id OUTPUT;
        """
        self.queries.append(query)
        # Return None since we can't get the actual order_id when generating SQL
        return None

    def student_add_product_to_cart(self, student_id, product_id):
        self.student_add_product_to_cart(student_id, product_id)

    def student_create_order_for_products(self, student_id, product_ids):
        for product_id in product_ids:
            self.student_add_product_to_cart(student_id, product_id)
        return self.student_create_order_from_cart(student_id)

    def save_queries(self):
        with open(self.output_file, 'w') as f:
            f.write("BEGIN TRANSACTION;\n\n")
            for query in self.queries:
                f.write(f"{query}\n")
            f.write("""
IF @@ERROR <> 0
    ROLLBACK TRANSACTION;
ELSE
    COMMIT TRANSACTION;
""")
        print(f"Order queries saved to {self.output_file}")