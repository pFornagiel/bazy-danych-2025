from generators.generate_users import UserDataGenerator
from generators.generate_studies import StudyDataGenerator
from generators.generate_courses import CourseDataGenerator
from generators.generate_webinars import WebinarDataGenerator
from generators.generate_product_details import generate_product_details
import random
from faker import Faker
import json

class DataGenerator:
    def __init__(self):
        self.cumulative_users = 1
        self.cumulative_products = 1

        # Default values
        self.AMOUNT_OF_STUDENTS = 200
        self.AMOUNT_OF_HEADMASTERS = 1
        self.AMOUNT_OF_ADMINISTATION_WORKERS = 30
        self.AMOUNT_OF_TUTORS = 50
        self.AMOUNT_OF_TRANSLATORS = 20
        self.AMOUNT_OF_STUDIES = 20
        self.AMOUNT_OF_SUBJECTS = 8
        self.AMOUNT_OF_SESSIONS = 5
        self.AMOUNT_OF_INTERSHIPS = 30
        self.AMOUNT_OF_SYNC_MEETINGS = 3
        self.AMOUNT_OF_ASYNC_MEETINGS = 4
        self.AMOUNT_OF_STATIONARY_MEETINGS = 3
        self.AMOUNT_OF_COURSES = 10
        self.AMOUNT_OF_MODULES = 7
        self.AMOUNT_OF_WEBINARS = 25

    def set_config(self, **kwargs):
        for key, value in kwargs.items():
            if hasattr(self, key):
                setattr(self, key, value)

    def generate_users(self):
        user_data = UserDataGenerator()
        user_data.generate_students(self.AMOUNT_OF_STUDENTS)
        user_data.generate_employees(self.AMOUNT_OF_HEADMASTERS, 1)  # headmaster
        user_data.generate_employees(self.AMOUNT_OF_ADMINISTATION_WORKERS, 2)  # administrative worker
        user_data.generate_employees(self.AMOUNT_OF_TUTORS, 3)  # tutor
        user_data.generate_employees(self.AMOUNT_OF_TRANSLATORS, 4)  # translator
        self.STUDENTS = [i+self.cumulative_users for i in range(self.AMOUNT_OF_STUDENTS)]
        self.cumulative_users += len(self.STUDENTS)
        self.HEADMASTERS = [i+self.cumulative_users for i in range(self.AMOUNT_OF_HEADMASTERS)]
        self.cumulative_users += len(self.HEADMASTERS)
        self.WORKERS = [i+self.cumulative_users for i in range(self.AMOUNT_OF_ADMINISTATION_WORKERS)]
        self.cumulative_users += len(self.WORKERS)
        self.TUTORS = [i+self.cumulative_users for i in range(self.AMOUNT_OF_TUTORS)]
        self.cumulative_users += len(self.TUTORS)
        self.TRANSLATORS = [i+self.cumulative_users for i in range(self.AMOUNT_OF_TRANSLATORS)]
        user_data.save_queries()

    def generate_studies(self):
        study_data = StudyDataGenerator()
        study_data.generate_studies(self.AMOUNT_OF_STUDIES)
        self.STUDIES = [i+self.cumulative_products for i in range(self.AMOUNT_OF_STUDIES)]
        self.cumulative_products += len(self.STUDIES)

        self.SUBJECTS = []
        self.SESSIONS = []
        self.INTERNSHIPS = []
        self.SYNC_MEETINGS = []
        self.ASYNC_MEETINGS = []
        self.STATIONARY_MEETINGS = []

        for study in self.STUDIES:
            amount_subjects = random.randint(self.AMOUNT_OF_SUBJECTS-2, self.AMOUNT_OF_SUBJECTS+2)
            study_data.generate_subjects(amount_subjects, study, self.TUTORS)
            self.SUBJECTS.extend([i+self.cumulative_products for i in range(amount_subjects)])
            self.cumulative_products += amount_subjects

            amount_internships = random.randint(self.AMOUNT_OF_INTERSHIPS-2, self.AMOUNT_OF_INTERSHIPS+2)
            study_data.generate_internships(amount_internships, study)
            self.INTERNSHIPS.extend([i+1 for i in range(amount_internships)])

        for subject in self.SUBJECTS:
            amount_sessions = random.randint(self.AMOUNT_OF_SESSIONS-1, self.AMOUNT_OF_SESSIONS+1)
            
            study_data.generate_sessions(amount_sessions, subject)
            self.SESSIONS.extend([i+self.cumulative_products for i in range(amount_sessions)])
            self.cumulative_products += amount_sessions
        
        cumulative_meetings = 1
        for session in self.SESSIONS:
            amount_sync_meetings = random.randint(self.AMOUNT_OF_SYNC_MEETINGS-2, self.AMOUNT_OF_SYNC_MEETINGS+2)
            study_data.generate_sync_meetings(amount_sync_meetings, random.choice(self.TUTORS), session, random.choice(self.TRANSLATORS))
            self.SYNC_MEETINGS.extend([i+cumulative_meetings for i in range(amount_sync_meetings)])

            amount_async_meetings = random.randint(self.AMOUNT_OF_ASYNC_MEETINGS-2, self.AMOUNT_OF_ASYNC_MEETINGS+2)
            study_data.generate_async_meetings(amount_async_meetings, random.choice(self.TUTORS), session, random.choice(self.TRANSLATORS))
            self.ASYNC_MEETINGS.extend([i+cumulative_meetings for i in range(amount_async_meetings)])

            amount_stationary_meetings = random.randint(self.AMOUNT_OF_STATIONARY_MEETINGS-2, self.AMOUNT_OF_STATIONARY_MEETINGS+2)
            study_data.generate_stationary_meetings(amount_stationary_meetings, random.choice(self.TUTORS), session, random.choice(self.TRANSLATORS))
            self.STATIONARY_MEETINGS.extend([i+cumulative_meetings for i in range(amount_stationary_meetings)])

        study_data.save_queries()

    def generate_courses(self):
        course_data = CourseDataGenerator()
        course_data.generate_courses(self.AMOUNT_OF_COURSES)
        self.COURSES = [i+self.cumulative_products for i in range(self.AMOUNT_OF_COURSES)]
        self.cumulative_products += len(self.COURSES)

        self.MODULES = []
        self.SYNC_MEETINGS = []
        self.ASYNC_MEETINGS = []
        self.STATIONARY_MEETINGS = []

        cumulative_modules = 1
        for course in self.COURSES:
            amount_modules = random.randint(self.AMOUNT_OF_MODULES-1, self.AMOUNT_OF_MODULES+1)
            course_data.generate_modules(amount_modules, course, self.TUTORS)
            self.MODULES.extend([i+cumulative_modules for i in range(amount_modules)])
            cumulative_modules += amount_modules

        cumulative_meetings = 1
        for module in self.MODULES:
            amount_sync_meetings = random.randint(self.AMOUNT_OF_SYNC_MEETINGS-2, self.AMOUNT_OF_SYNC_MEETINGS+2)
            course_data.generate_sync_meetings(amount_sync_meetings, random.choice(self.TUTORS), module, random.choice(self.TRANSLATORS))
            self.SYNC_MEETINGS.extend([i+cumulative_meetings for i in range(amount_sync_meetings)])
            cumulative_meetings += len(self.SYNC_MEETINGS)

            amount_async_meetings = random.randint(self.AMOUNT_OF_ASYNC_MEETINGS-2, self.AMOUNT_OF_ASYNC_MEETINGS+2)
            course_data.generate_async_meetings(amount_async_meetings, random.choice(self.TUTORS), module, random.choice(self.TRANSLATORS))
            self.ASYNC_MEETINGS.extend([i+cumulative_meetings for i in range(amount_async_meetings)])
            cumulative_meetings += len(self.ASYNC_MEETINGS)

            amount_stationary_meetings = random.randint(self.AMOUNT_OF_STATIONARY_MEETINGS-2, self.AMOUNT_OF_STATIONARY_MEETINGS+2)
            course_data.generate_stationary_meetings(amount_stationary_meetings, random.choice(self.TUTORS), module, random.choice(self.TRANSLATORS))
            self.STATIONARY_MEETINGS.extend([i+cumulative_meetings for i in range(amount_stationary_meetings)])
            cumulative_meetings += len(self.STATIONARY_MEETINGS)

        course_data.save_queries()

    def generate_webinars(self):
        webinar_data = WebinarDataGenerator()
        webinar_data.generate_webinars(self.AMOUNT_OF_WEBINARS, self.TUTORS, self.TRANSLATORS)
        self.WEBINARS = [i+self.cumulative_products for i in range(self.AMOUNT_OF_WEBINARS)]
        self.cumulative_products += len(self.WEBINARS)

        webinar_data.save_queries()

    def save_primary_keys(self):
        primary_keys = {
            "STUDENTS": self.STUDENTS,
            "HEADMASTERS": self.HEADMASTERS,
            "EMPLOYEES": self.WORKERS,
            "TUTORS": self.TUTORS,
            "TRANSLATORS": self.TRANSLATORS,
            "STUDIES": self.STUDIES,
            "SUBJECTS": self.SUBJECTS,
            "SESSIONS": self.SESSIONS,
            "INTERNSHIPS": self.INTERNSHIPS,
            "SYNC_MEETINGS": self.SYNC_MEETINGS,
            "ASYNC_MEETINGS": self.ASYNC_MEETINGS,
            "STATIONARY_MEETINGS": self.STATIONARY_MEETINGS,
            "COURSES": self.COURSES,
            "MODULES": self.MODULES,
            "WEBINARS": self.WEBINARS
        }
        
        with open('primary_keys.json', 'w') as f:
            json.dump(primary_keys, f, indent=4)

    def run(self):
        self.generate_users()
        self.generate_studies()
        self.generate_courses()
        self.generate_webinars()
        self.save_primary_keys()
        generate_product_details('sql')

if __name__ == "__main__":
    generator = DataGenerator()
    generator.run()