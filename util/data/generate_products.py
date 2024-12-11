from faker import Faker
import random
from models import Product

class ProductGenerator:
    def __init__(self, locale='pl_PL', country='Poland'):
        """
        Initialize the product generator with a specific locale.

        Args:
            locale (str, optional): Locale for generating data. Defaults to 'en_US'.
        """
        self.fake = Faker(locale)
        self.last_product_id = 0
        self.product_types = ['study', 'subject', 'course', 'webinar']
        self.generated_products = []

    def generate_products(self, num_products):
        """
        Generate a specified number of products.

        Args:
            num_products (int): Number of products to generate.

        Returns:
            list: List of generated products.
        """
        for _ in range(num_products):
            type_id = random.randint(1, len(self.product_types))  # Random type_id from 1 to 4
            price = random.randint(50, 500) # Random price between 50 and 500
            total_amount = random.randint(10, 100)  # Total amount of places (10 to 100)
            vacancies = random.randint(0, total_amount)  # Vacancies can't exceed total_amount

            self.generated_products.append(Product(
                product_id= self.last_product_id + 1,
                type_id= type_id,
                price= price,
                vacancies= vacancies,
                total_amount= total_amount)
            )

            self.last_product_id += 1

        return self.generated_products

# Example usage

product_gen = ProductGenerator()
generated_products = product_gen.generate_products(10)

for product in generated_products:
    print(product)
