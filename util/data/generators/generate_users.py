from faker import Faker
from faker.providers.internet import Provider
from models import User, Student, Employee, EmployeeType
import random
from .const import COUNTRIES
import datetime

class UserDataGenerator:
  
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
    self.numbers = set()
    
  def _generate_basic_user_data(self):
    username = self.fake.user_name()
    phone = self.fake.random_number(digits=9)
    while(phone in self.numbers):
      phone = self.fake.random_number(digits=9)
    self.numbers.add(phone)
    return User(
      username = username,
      first_name = self.fake.first_name(),
      last_name = self.fake.last_name(),
      email = f"{username}@{self.fake.domain_name()}",
      phone = self.fake.random_number(digits=9, fix_len=True)
    )
    
  def generate_users(self, num_users):
    for _ in range(num_users):
      self.generated_data['users'].append(
        self._generate_basic_user_data()
      )
      
    return self.generated_data['users']
  
  def generate_students(self, num_students):
    country_id = [d for d in COUNTRIES if d.get('country') == self.country][0]["id"]

    for _ in range(num_students):
      self.generated_data['students'].append(
        Student(
          **self._generate_basic_user_data().__dict__,
          country_id=country_id,
          city=self.fake.city(),
          street=self.fake.street_address(),
          postal_code=self.fake.postalcode()
        )
      )
    
    return self.generated_data['students']
  
  def generate_employees(self, num_employees, type=2):
    
    for _ in range(num_employees):
      self.generated_data['employees'].append(
        Employee(
          **self._generate_basic_user_data().__dict__,
          type_id=type,
          hire_date = self.fake.date_between(datetime.date(2008, 1, 1), datetime.date(2025, 1, 1)),
          birth_date = self.fake.date_between(datetime.date(1990, 1, 1), datetime.date(1990, 1, 1))
        )
      )
    
    return self.generated_data['employees']

  def save_queries(self):
    queries = []
    for student in self.generated_data['students']:
      query = f"""
      EXEC CreateStudent @username='{student.username}', @first_name='{student.first_name}', @last_name='{student.last_name}', @email='{student.email}', @phone='{student.phone}', @street='{student.street}', @city='{student.city}', @postal_code='{student.postal_code}', @country_id={student.country_id}, @user_id=NULL
      """
      queries.append(query)
    for employee in self.generated_data['employees']:
      query = f"""
      EXEC CreateEmployee @username='{employee.username}', @first_name='{employee.first_name}', @last_name='{employee.last_name}', @email='{employee.email}', @phone='{employee.phone}', @employee_type_id={employee.type_id}, @birth_date='{employee.birth_date}', @hire_date='{employee.hire_date}', @employee_id=NULL
      """
      queries.append(query)

    with open('sql/insert_users.sql', 'w') as file:
      file.write("BEGIN TRANSACTION;\n")
      for query in queries:
        file.write(query + '\n')
      file.write("""
      IF @@ERROR <> 0
        ROLLBACK TRANSACTION;
      ELSE
        COMMIT TRANSACTION;
      """)



