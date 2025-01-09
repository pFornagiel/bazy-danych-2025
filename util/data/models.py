from dataclasses import dataclass, field
from datetime import datetime, time
from typing import Optional, List

# Function to save SQL queries to a file
def save_query_to_file(query: str):
    with open('/c:/Users/Paweł/Desktop/bazy-danych-2025/util/data/queries.sql', 'a') as file:
        file.write(query + '\n')

@dataclass
class User:
    user_id: int = field(default=0)
    username: str = field(default='')
    first_name: str = field(default='')
    last_name: str = field(default='')
    email: str = field(default='')
    phone: Optional[str] = field(default=None)

    def save(self):
        query = f"""
        EXEC CreateBasicUser @username='{self.username}', @first_name='{self.first_name}', @last_name='{self.last_name}', @email='{self.email}', @phone='{self.phone}', @user_id=?
        """
        save_query_to_file(query)

@dataclass
class Student(User):
    street: str = field(default='')
    city: str = field(default='')
    postal_code: str = field(default='')
    country_id: int = field(default=0)

    def save(self):
        query = f"""
        EXEC CreateStudent @username='{self.username}', @first_name='{self.first_name}', @last_name='{self.last_name}', @email='{self.email}', @phone='{self.phone}', @street='{self.street}', @city='{self.city}', @postal_code='{self.postal_code}', @country_id={self.country_id}, @user_id=?
        """
        save_query_to_file(query)

@dataclass
class EmployeeType:
    type_id: int = field(default=0)
    type_name: int = field(default=0)

@dataclass
class Employee(User):
    type_id: int = field(default=0)
    birth_date: Optional[datetime] = field(default=None)
    hire_date: Optional[datetime] = field(default=None)

    def save(self):
        query = f"""
        EXEC CreateEmployee @username='{self.username}', @first_name='{self.first_name}', @last_name='{self.last_name}', @email='{self.email}', @phone='{self.phone}', @employee_type_id={self.employee_type_id}, @birth_date='{self.birth_date}', @hire_date='{self.hire_date}', @employee_id=?
        """
        save_query_to_file(query)

@dataclass
class ProductType:
    type_id: int = field(default=0)
    type_name: int = field(default=0)

@dataclass
class Product:
    product_id: int = field(default=0)
    type_id: int = field(default=0)
    price: float = field(default=0.0)
    vacancies: int = field(default=0)
    release: datetime = field(default_factory=datetime.now)

@dataclass
class Course(Product):
    course_name: str = field(default='')
    course_description: Optional[str] = field(default=None)
    advance_share: float = field(default=0.3)

    def save(self):
        query = f"""
        EXEC CreateCourse @course_name='{self.course_name}', @course_description='{self.course_description}', @advance_share={self.advance_share}, @product_price={self.price}, @vacancies={self.vacancies}, @release='{self.release}', @course_id=?
        """
        save_query_to_file(query)

@dataclass
class Study(Product):
    study_name: str = field(default='')
    study_description: Optional[str] = field(default=None)

    def save(self):
        query = f"""
        EXEC CreateStudy @study_name='{self.study_name}', @study_description='{self.study_description}', @product_price={self.price}, @vacancies={self.vacancies}, @release='{self.release}', @study_id=?
        """
        save_query_to_file(query)

@dataclass
class Order:
    order_id: int = field(default=0)
    student_id: int = field(default=0)
    order_date: datetime = field(default_factory=datetime.now)
    complete_payment_date: Optional[datetime] = None
    paid: int = field(default=0)

@dataclass
class OrderDetails:
    order_id: int = field(default=0)
    product_id: int = field(default=0)
    discount: int = field(default=0)

@dataclass
class Payment:
    payment_id: int = field(default=0)
    order_id: int = field(default=0)
    payment_date: int = field(default=0)
    payment_value: int = field(default=0)

@dataclass
class Webinar(Product):
    tutor_id: int = field(default=0)
    webinar_name: str = field(default='')
    webinar_description: Optional[str] = field(default=None)
    video_url: Optional[str] = field(default=None)
    meeting_url: Optional[str] = field(default=None)
    webinar_duration: time = field(default_factory=lambda: time(1, 30))
    publish_date: datetime = field(default_factory=datetime.now)
    language_id: int = field(default=0)
    translator_id: Optional[int] = field(default=None)

    def save(self):
        query = f"""
        EXEC CreateWebinar @tutor_id={self.tutor_id}, @translator_id={self.translator_id}, @webinar_name='{self.webinar_name}', @webinar_description='{self.webinar_description}', @video_url='{self.video_url}', @webinar_duration='{self.webinar_duration}', @publish_date='{self.publish_date}', @language='{self.language}', @product_price={self.price}, @vacancies={self.vacancies}, @release='{self.release}', @webinar_id=?
        """
        save_query_to_file(query)

@dataclass
class Meeting:
    meeting_id: int = field(default=0)
    session_id: int = field(default=0)
    module_id: int = field(default=0)
    module_id: int = field(default=0)
    tutor_id: int = field(default=0)
    term: datetime = field(default_factory=datetime.now)
    meeting_name: str = field(default='')
    duration: time = field(default_factory=lambda: time(1, 30))
    translator_id: Optional[int] = None
    language_id: str = field(default='POLISH')

@dataclass
class MeetingDetails:
    meeting_id: int = field(default=0)
    student_id: int = field(default=0)
    attendance: bool = field(default=False)

@dataclass
class SyncMeeting(Meeting):
    video_url: Optional[str] = field(default=None)
    meeting_url: str = field(default='')

    def save(self):
        query = f"""
        EXEC CreateModuleSyncMeeting @module_id={self.module_id}, @tutor_id={self.tutor_id}, @translator_id={self.translator_id}, @meeting_name='{self.meeting_name}', @term='{self.term}', @duration='{self.duration}', @language_id={self.language}, @meeting_url='{self.meeting_url}', @video_url='{self.video_url}', @meeting_id=?
        """
        save_query_to_file(query)

@dataclass
class AsyncMeeting(Meeting):
    video_url: str = field(default='')

    def save(self):
        query = f"""
        EXEC CreateModuleAsyncMeeting @module_id={self.module_id}, @tutor_id={self.tutor_id}, @translator_id={self.translator_id}, @meeting_name='{self.meeting_name}', @term='{self.term}', @duration='{self.duration}', @language_id={self.language}, @meeting_url='{self.meeting_url}', @meeting_id=?
        """
        save_query_to_file(query)

@dataclass
class StationaryMeeting(Meeting):
    classroom: str = field(default='')

    def save(self):
        query = f"""
        EXEC CreateModuleStationaryMeeting @module_id={self.module_id}, @tutor_id={self.tutor_id}, @translator_id={self.translator_id}, @meeting_name='{self.meeting_name}', @term='{self.term}', @duration='{self.duration}', @language_id={self.language}, @classroom='{self.classroom}', @meeting_id=?
        """
        save_query_to_file(query)

@dataclass
class Subject:
    study_id: int = field(default=0)
    tutor_id: int = field(default=0)
    subject_name: str = field(default='')
    subject_description: Optional[str] = field(default=None)
    price: float = field(default=0.0)
    vacancies: int = field(default=0)
    release: datetime = field(default_factory=datetime.now)

    def save(self):
        query = f"""
        EXEC CreateSubject @study_id={self.study_id}, @tutor_id={self.tutor_id}, @subject_name='{self.subject_name}', @subject_description='{self.subject_description}', @product_price={self.price}, @vacancies={self.vacancies}, @release='{self.release}', @subject_id=?
        """
        save_query_to_file(query)

@dataclass
class Internship:
    Internship_id: int = field(default=0)
    study_id: int = field(default=0)
    start_date: datetime = field(default_factory=datetime.now)
    end_date: datetime = field(default_factory=datetime.now)

    def save(self):
        query = f"""
        EXEC CreateInternship @study_id={self.study_id}, @start_date='{self.start_date}', @end_date='{self.end_date}', @internship_id=?
        """
        save_query_to_file(query)

@dataclass
class InternshipDetails:
    internship_id: int = field(default=0)
    student_id: int = field(default=0)
    passed: bool = field(default=False)

    def save(self):
        query = f"""
        EXEC CreateInternshipDetails @internship_id={self.internship_id}, @student_id={self.student_id}, @passed={self.passed}, @internship_detail_id=?
        """
        save_query_to_file(query)

@dataclass
class Module:
    module_id: int = field(default=0)
    course_id: int = field(default=0)
    tutor_id: int = field(default=0)
    module_name: str = field(default='')
    module_description: str = field(default='')

    def save(self):
        query = f"""
        EXEC CreateModule @course_id={self.course_id}, @tutor_id={self.tutor_id}, @module_name='{self.module_name}', @module_description='{self.module_description}', @module_id=?
        """
        save_query_to_file(query)

@dataclass
class Session:
    subject_id: int = field(default=0)
    price: float = field(default=0.0)
    vacancies: int = field(default=0)
    release: datetime = field(default_factory=datetime.now)

    def save(self):
        query = f"""
        EXEC CreateSession @subject_id={self.subject_id}, @product_price={self.price}, @vacancies={self.vacancies}, @release='{self.release}', @session_id=?
        """
        save_query_to_file(query)