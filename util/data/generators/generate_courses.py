from faker import Faker
from models import Course, Module, SyncMeeting, AsyncMeeting, StationaryMeeting, Meeting
from datetime import datetime, timedelta
import random

class CourseDataGenerator:
    def __init__(self, locale='pl_PL'):
        self.fake = Faker(locale)
        self.generated_data = {
            'courses': [],
            'modules': [],
            'sync_meetings': [],
            'async_meetings': [],
            'stationary_meetings': []
        }

    def _generate_course_data(self):
        return Course(
            course_name=self.fake.word(),
            course_description=self.fake.text(),
            price=random.uniform(1000, 5000),
            vacancies=random.randint(10, 50),
            release=self.fake.date_between(start_date='today', end_date='+1y')
        )

    def generate_courses(self, num_courses):
        for _ in range(num_courses):
            self.generated_data['courses'].append(self._generate_course_data())
        return self.generated_data['courses']

    def _generate_module_data(self, course_id, tutors):
        return Module(
            course_id=course_id,
            tutor_id=random.choice(tutors),
            module_name=self.fake.word(),
            module_description=self.fake.text()
        )

    def generate_modules(self, num_modules, course_id, tutors):
        for _ in range(num_modules):
            self.generated_data['modules'].append(self._generate_module_data(course_id, tutors))
        return self.generated_data['modules']
      
    def _generate_meeting_data(self, tutor_id, module_id, translator_id=None):
      return Meeting(
          module_id=module_id,
          tutor_id=tutor_id,
          term=self.fake.date_time_between(start_date='-1y', end_date='now'),
          meeting_name=self.fake.sentence(nb_words=3),  # Added meeting_name generation
          duration=self.fake.time_object(end_datetime=None),
          translator_id=translator_id,
          language_id=1# Changed to language_id to match Meeting class
      )

    def generate_meetings(self, num_meetings, tutor_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['meetings'].append(self._generate_meeting_data(tutor_id, translator_id))
        return self.generated_data['meetings']

    def _generate_sync_meeting_data(self, tutor_id, module_id, translator_id=None):
        return SyncMeeting(
            **self._generate_meeting_data(tutor_id, module_id, translator_id).__dict__,
            meeting_url=self.fake.url(),
            video_url=self.fake.url()
        )

    def generate_sync_meetings(self, num_meetings, tutor_id, module_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['sync_meetings'].append(self._generate_sync_meeting_data(tutor_id, module_id, translator_id))
        return self.generated_data['sync_meetings']

    def _generate_async_meeting_data(self, tutor_id, module_id, translator_id=None):
        return AsyncMeeting(
            **self._generate_meeting_data(tutor_id, module_id, translator_id).__dict__,
            video_url=self.fake.url()
        )

    def generate_async_meetings(self, num_meetings, tutor_id, module_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['async_meetings'].append(self._generate_async_meeting_data(tutor_id, module_id, translator_id))
        return self.generated_data['async_meetings']

    def _generate_stationary_meeting_data(self, tutor_id, module_id, translator_id=None):
        return StationaryMeeting(
            **self._generate_meeting_data(tutor_id, module_id, translator_id).__dict__,
            classroom=self.fake.building_number()
        )

    def generate_stationary_meetings(self, num_meetings, tutor_id, module_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['stationary_meetings'].append(self._generate_stationary_meeting_data(tutor_id, module_id, translator_id))
        return self.generated_data['stationary_meetings']

    def save_queries(self):
        queries = {
            'courses': [],
            'modules': [],
            'sync_meetings': [],
            'async_meetings': [],
            'stationary_meetings': []
        }

        for course in self.generated_data['courses']:
            query = f"""
            EXEC CreateCourse @course_name='{course.course_name}', @course_description='{course.course_description}', @product_price={course.price}, @vacancies={course.vacancies}, @release='{course.release}', @course_id=NULL
            """
            queries['courses'].append(query)
        for module in self.generated_data['modules']:
            query = f"""
            EXEC CreateModule @course_id={module.course_id}, @tutor_id={module.tutor_id}, @module_name='{module.module_name}', @module_description='{module.module_description}', @module_id=NULL
            """
            queries['modules'].append(query)
        for sync_meeting in self.generated_data['sync_meetings']:
            query = f"""
            EXEC CreateModuleSyncMeeting @module_id={sync_meeting.module_id}, @tutor_id={sync_meeting.tutor_id}, @translator_id={sync_meeting.translator_id}, @meeting_name='{sync_meeting.meeting_name}', @term='{sync_meeting.term}', @duration='{sync_meeting.duration}', @language_id={sync_meeting.language_id}, @meeting_url='{sync_meeting.meeting_url}', @video_url='{sync_meeting.video_url}', @meeting_id=NULL
            """
            queries['sync_meetings'].append(query)
        for async_meeting in self.generated_data['async_meetings']:
            query = f"""
            EXEC CreateModuleAsyncMeeting @module_id={async_meeting.module_id}, @tutor_id={async_meeting.tutor_id}, @translator_id={async_meeting.translator_id}, @meeting_name='{async_meeting.meeting_name}', @term='{async_meeting.term}', @duration='{async_meeting.duration}', @language_id={async_meeting.language_id}, @video_url='{async_meeting.video_url}', @meeting_id=NULL
            """
            queries['async_meetings'].append(query)
        for stationary_meeting in self.generated_data['stationary_meetings']:
            query = f"""
            EXEC CreateModuleStationaryMeeting @module_id={stationary_meeting.module_id}, @tutor_id={stationary_meeting.tutor_id}, @translator_id={stationary_meeting.translator_id}, @meeting_name='{stationary_meeting.meeting_name}', @term='{stationary_meeting.term}', @duration='{stationary_meeting.duration}', @language_id={stationary_meeting.language_id}, @classroom='{stationary_meeting.classroom}', @meeting_id=NULL
            """
            queries['stationary_meetings'].append(query)

        with open('sql/insert_courses.sql', 'w') as file:
            for key, query_list in queries.items():
                file.write("BEGIN TRANSACTION;\n")
                for query in query_list:
                    file.write(query + '\n')
                file.write("""
                IF @@ERROR <> 0
                    ROLLBACK TRANSACTION;
                ELSE
                    COMMIT TRANSACTION;
                """)
