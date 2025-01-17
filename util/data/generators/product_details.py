import random
import json
from collections import defaultdict

# Load data from JSON
with open('primary_keys.json', 'r') as file:
    data = json.load(file)

# Constants
categories = ["STUDIES", "SUBJECTS", "SESSIONS", "COURSES", "WEBINARS"]
exclusive_groups = ["STUDIES", "SUBJECTS", "SESSIONS"]

# Track product usage to ensure no product is chosen more than 10 times
product_usage = defaultdict(int)

# Randomly select 175 unique students
students = random.sample(data["STUDENTS"], 120)

# Initialize the final SQL script
final_sql_script = f"""
DECLARE @product_ids dbo.productIdList;
DECLARE @order_id INT;
"""

for student_id in students:
    # Randomly determine number of products (1 to 3)
    num_products = random.randint(1, 3)

    selected_products = []
    selected_categories = set()

    while len(selected_products) < num_products:
        category = random.choice(categories)

        # Ensure exclusivity for STUDIES, SUBJECTS, SESSIONS
        if category in exclusive_groups and any(c in exclusive_groups for c in selected_categories):
            continue

        product_id = random.choice(data[category])

        # Ensure the product is not chosen more than 10 times
        if product_usage[product_id] >= 10:
            continue

        selected_products.append(product_id)
        selected_categories.add(category)
        product_usage[product_id] += 1

    # Generate SQL code for the current student
    sql_script = f"""
BEGIN TRY
    DELETE FROM @product_ids;
    SET @order_id = NULL;

    -- Wstaw produkty do tabeli
    INSERT INTO @product_ids (product_id)
    VALUES
"""

    sql_script += ",\n".join([f"({product_id})" for product_id in selected_products])

    sql_script += f""";

    -- Wywołanie procedury
    EXEC [dbo].[CreateOrder]
        @student_id = {student_id},
        @product_ids = @product_ids,
        @order_id = @order_id OUTPUT;

    EXEC [dbo].[RandomlyUpdateFeePaymentDate] @order_id;
END TRY
BEGIN CATCH
    PRINT 'Błąd dla student_id {student_id}: ' + ERROR_MESSAGE();
END CATCH;
"""

    # Append to the final script
    final_sql_script += sql_script

# Save the final SQL script to a file
with open('out.sql', 'w') as output_file:
    output_file.write(final_sql_script)

# Print confirmation
print("SQL script has been saved to out.sql")
