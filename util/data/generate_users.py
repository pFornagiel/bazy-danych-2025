from faker import Faker
from faker.providers.internet import Provider
from models import User, Student, Employee, EmployeeType
import random

class UserDataGenerator:
  
  last_user_id = 0
  EMPLOYEE_TYPES = {
    1: 'headmaster',
    2: 'administrative worker',
    3: 'tutor',
    4: 'translator'
  }
  
  def __init__(self, locale='pl_PL', country='Poland'):
    """Static Employee Types"""
    
    
    """Static user_id"""
    
    
    """
    Initialize the data generator with a specific locale.
    
    Args:
      locale (str, optional): Locale for generating data. Defaults to 'pl_PL'.
    """
    self.fake = Faker(locale)
    self.fake_titles = Faker()
    self.country = country
    self.generated_data = {
      'users': [],
      'students': [],
      'employees': [],
    }
    for _ in range(5):
      print(self.fake_titles.prefix())
    
    
  def generate_users(self, num_users):
    for _ in range(num_users):
      username = self.fake.user_name()
      self.generated_data['users'].append(
        User(
          user_id=1+UserDataGenerator.last_user_id,
          username = username,
          first_name = self.fake.first_name(),
          last_name = self.fake.last_name(),
          mail = f"{username}@{self.fake.domain_name()}",
          phone = self.fake.phone_number()
        )
      )
      UserDataGenerator.last_user_id += 1
    
      
    return self.generated_data['users']
  
  def generate_students(self, num_students):
    
    student_id_start = self.last_user_id
    # generate users for students and connect them
    self.generate_users(num_students)
    
    for _ in range(num_students):
      self.generated_data['students'].append(
        Student(
          student_id=1+student_id_start,
          country=self.country,
          city=self.fake.city(),
          street=self.fake.street_address(),
          postal_code=self.fake.postalcode()
        )
      )
      student_id_start+=1
    
    return self.generated_data['students']
  
  def generate_employees(self, num_employees, type=2):
    
    employee_id_start = self.last_user_id
    # generate users for employees and connect them
    self.generate_users(num_employees)
    
    for _ in range(num_employees):
      self.generated_data['employees'].append(
        Employee(
          employee_id=1+employee_id_start,
          type_id=type,
          title=self.fake.suffix()
        )
      )
      employee_id_start+=1
    
    return self.generated_data['employees']
  
user_data = UserDataGenerator()
user_data.generate_users(5)
user_data.generate_students(5)
user_data.generate_employees(4,2)
user_data.generate_employees(4,4)
user_data.generate_employees(1,1)

for field in user_data.generated_data:
  print(field)
  for item in user_data.generated_data[field]:
    print(item)
    


