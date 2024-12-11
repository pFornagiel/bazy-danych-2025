from faker import Faker
import random
from datetime import datetime, timedelta

from data.models import Order


class OrderGenerator:
    def __init__(self, locale='pl_PL', country='Poland'):
        """
        Initialize the order generator with a specific locale.

        Args:
            locale (str, optional): Locale for generating data.
        """
        self.fake = Faker(locale)
        self.last_order_id = 0
        self.last_payment_id = 0
        self.generated_orders = []
        self.generated_payments = []
        self.generated_order_details = []

    def generate_orders(self, num_orders, students, products):
        """
        Generate a specified number of orders.

        Args:
            num_orders (int): Number of orders to generate.
            students (list): List of students
            products (list): List of products.

        Returns:
            tuple: Lists of generated orders, payments, and order details.
        """
        for _ in range(num_orders):
            student_id = random.randint(1,len(students))  # Randomly select a student ID
            order_date = self.fake.date_time_this_year()  # Random datetime this year
            complete_payment_date = order_date + timedelta(days=random.randint(0, 30))

            #losowanie produktów i ustalanie ceny
            products_selected=[]
            n_of_prod = random.randint(1,4)
            i=0
            while i<n_of_prod:
                product=products[random.randint(0,len(products))]
                if product not in products_selected:
                    products_selected.append(product)
                    i+=1
            total_price=0
            for product in products_selected:
                total_price+=product.price
            paid = random.randint(0,total_price)

            # Generate order
            self.generated_orders.append(Order(
                order_id = self.last_order_id + 1,
                student_id = student_id,
                order_date = order_date,
                complete_payment_date = complete_payment_date if paid else None,
                paid = paid)
            )

            #chat wygenerowal i nie ma to teraz sensu
#             if paid:
#                 payment_value = round(random.uniform(50, 500), 2)
#                 payment_date = complete_payment_date.date()
#
#                 self.generated_payments.append({
#                     'payment_id': self.last_payment_id + 1,
#                     'order_id': self.last_order_id + 1,
#                     'payment_date': payment_date,
#                     'payment_value': payment_value
#                 })
#                 self.last_payment_id += 1
#
#             # Generate order details
#             num_products = random.randint(1, 3)  # Each order contains 1-3 products
#             for _ in range(num_products):
#                 product = random.choice(products)
#                 discount = random.choice([0, 5, 10, 15, 20])  # Random discount percentage
#
#                 self.generated_order_details.append({
#                     'order_id': self.last_order_id + 1,
#                     'product_id': product['product_id'],
#                     'discount': discount
#                 })
#
#             self.last_order_id += 1
#
#         return self.generated_orders, self.generated_payments, self.generated_order_details
#
# # Example usage
# if __name__ == "__main__":
#     # Assume students and products data are already generated
#     students = [1, 2, 3, 4, 5]  # List of student IDs
#     products = [
#         {'product_id': 1},
#         {'product_id': 2},
#         {'product_id': 3},
#         {'product_id': 4}
#     ]
#
#     order_gen = OrderGenerator()
#     orders, payments, order_details = order_gen.generate_orders(10, students, products)
#
#     print("Orders:")
#     for order in orders:
#         print(order)
#
#     print("\nPayments:")
#     for payment in payments:
#         print(payment)
#
#     print("\nOrder Details:")
#     for detail in order_details:
#         print(detail)