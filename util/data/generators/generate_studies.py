from faker import Faker
from models import Study, Subject, Session, Internship, InternshipDetails, Meeting, SyncMeeting, AsyncMeeting, StationaryMeeting
from datetime import timedelta
import random
from .const import LANGAUGES

class StudyDataGenerator:
    def __init__(self, locale='pl_PL'):
        self.fake = Faker(locale)
        self.generated_data = {
            'studies': [],
            'subjects': [],
            'sessions': [],
            'internships': [],
            'internship_details': [],
            'meetings': [],
            'sync_meetings': [],
            'async_meetings': [],
            'stationary_meetings': []
        }

    def _generate_study_data(self):
        return Study(
            study_name=self.fake.word(),
            study_description=self.fake.text(),
            price=random.uniform(1000, 5000),
            vacancies=random.randint(10, 50),
            release=self.fake.date_between(start_date='-2y', end_date='+1y')
        )

    def generate_studies(self, num_studies):
        for _ in range(num_studies):
            self.generated_data['studies'].append(self._generate_study_data())
        return self.generated_data['studies']

    def _generate_subject_data(self, study_id, tutors):
        study: Study = [study for i,study in enumerate(self.generated_data['studies']) if i+1 == study_id][0]
        date = study.release
        return Subject(
            study_id=study_id,
            tutor_id=random.choice(tutors),
            subject_name=self.fake.word(),
            subject_description=self.fake.text(),
            price=random.uniform(500, 2000),
            vacancies=random.randint(10, 30),
            release=date
        )

    def generate_subjects(self, num_subjects, study_id, tutors):
        for _ in range(num_subjects):
            self.generated_data['subjects'].append(self._generate_subject_data(study_id, tutors))
        return self.generated_data['subjects']

    def _generate_session_data(self, subject_id):
        subject: Subject = [subject for i,subject in enumerate(self.generated_data['subjects']) if len(self.generated_data['studies']) + i+ 1 == subject_id][0]
        date = subject.release
        return Session(
            subject_id=subject_id,
            price=random.uniform(100, 500),
            vacancies=random.randint(5, 20),
            release=date
        )

    def generate_sessions(self, num_sessions, subject_id):
        for _ in range(num_sessions):
            self.generated_data['sessions'].append(self._generate_session_data(subject_id))
        return self.generated_data['sessions']

    def _generate_internship_data(self, study_id):
        study: Study = [study for i,study in enumerate(self.generated_data['studies']) if i+1 == study_id][0]
        date = study.release
        start_date = self.fake.date_between(start_date=date, end_date='+1y')
        end_date = (start_date + timedelta(weeks=2))

        return Internship(
            study_id=study_id,
            start_date=start_date,
            end_date=end_date
        )
        

    def generate_internships(self, num_internships, study_id):
        for _ in range(num_internships):
            self.generated_data['internships'].append(self._generate_internship_data(study_id))
        return self.generated_data['internships']

    def _generate_internship_details_data(self, internship_id, student_id):
        return InternshipDetails(
            internship_id=internship_id,
            student_id=student_id,
            passed=random.choice([True, False])
        )

    def generate_internship_details(self, num_details, internship_id, student_id):
        for _ in range(num_details):
            self.generated_data['internship_details'].append(self._generate_internship_details_data(internship_id, student_id))
        return self.generated_data['internship_details']

    def _generate_meeting_data(self, tutor_id, session_id, translator_id=None):
        session: Session = [session for i,session in enumerate(self.generated_data['sessions']) if len(self.generated_data['subjects']) + len(self.generated_data['studies']) + i+1 == session_id][0]
        date = session.release
        return Meeting(
            session_id=session_id,
            tutor_id=tutor_id,
            term=self.fake.date_time_between(start_date=date, end_date='+1d'),
            meeting_name=self.fake.sentence(nb_words=3),  # Added meeting_name generation
            duration=self.fake.time_object(end_datetime=None),
            translator_id=translator_id,
            language_id=random.randint(1,len(LANGAUGES))# Changed to language_id to match Meeting class
        )

    def generate_meetings(self, num_meetings, tutor_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['meetings'].append(self._generate_meeting_data(tutor_id, translator_id))
        return self.generated_data['meetings']

    def _generate_sync_meeting_data(self, tutor_id, session_id, translator_id=None):
        return SyncMeeting(
            **self._generate_meeting_data(tutor_id, session_id, translator_id).__dict__,
            meeting_url=self.fake.url(),
            video_url=self.fake.url()
        )

    def generate_sync_meetings(self, num_meetings, tutor_id,session_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['sync_meetings'].append(self._generate_sync_meeting_data(tutor_id, session_id,translator_id))
        return self.generated_data['sync_meetings']

    def _generate_async_meeting_data(self, tutor_id,session_id, translator_id=None):
        return AsyncMeeting(
            **self._generate_meeting_data(tutor_id,session_id,translator_id).__dict__,
            video_url=self.fake.url()
        )

    def generate_async_meetings(self, num_meetings, tutor_id, session_id,translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['async_meetings'].append(self._generate_async_meeting_data(tutor_id,session_id, translator_id))
        return self.generated_data['async_meetings']

    def _generate_stationary_meeting_data(self, tutor_id,session_id, translator_id=None):
        return StationaryMeeting(
            **self._generate_meeting_data(tutor_id,session_id,translator_id).__dict__,
            classroom=self.fake.building_number()
        )

    def generate_stationary_meetings(self, num_meetings, tutor_id,session_id, translator_id=None):
        for _ in range(num_meetings):
            self.generated_data['stationary_meetings'].append(self._generate_stationary_meeting_data(tutor_id, session_id,translator_id))
        return self.generated_data['stationary_meetings']

    def save_queries(self):
        queries = {
            'studies': [],
            'subjects': [],
            'sessions': [],
            'internships': [],
            'internship_details': [],
            'meetings': [],
            'sync_meetings': [],
            'async_meetings': [],
            'stationary_meetings': []
        }

        for study in self.generated_data['studies']:
            query = f"""
            EXEC CreateStudy @study_name='{study.study_name}', @study_description='{study.study_description}', @product_price={study.price}, @vacancies={study.vacancies}, @release='{study.release}', @study_id=NULL
            """
            queries['studies'].append(query)
        for subject in self.generated_data['subjects']:
            query = f"""
            EXEC CreateSubject @study_id={subject.study_id}, @tutor_id={subject.tutor_id}, @subject_name='{subject.subject_name}', @subject_description='{subject.subject_description}', @product_price={subject.price}, @vacancies={subject.vacancies}, @release='{subject.release}', @subject_id=NULL
            """
            queries['subjects'].append(query)
        for session in self.generated_data['sessions']:
            query = f"""
            EXEC CreateSession @subject_id={session.subject_id}, @product_price={session.price}, @vacancies={session.vacancies}, @release='{session.release}', @session_id=NULL
            """
            queries['sessions'].append(query)
        for internship in self.generated_data['internships']:
            query = f"""
            EXEC CreateInternship @study_id={internship.study_id}, @start_date='{internship.start_date}', @end_date='{internship.end_date}', @internship_id=NULL
            """
            queries['internships'].append(query)
        for detail in self.generated_data['internship_details']:
            query = f"""
            EXEC CreateInternshipDetails @internship_id={detail.internship_id}, @student_id={detail.student_id}, @passed={detail.passed}, @internship_detail_id=NULL
            """
            queries['internship_details'].append(query)
        for meeting in self.generated_data['meetings']:
            query = f"""
            EXEC CreateSessionStationaryMeeting @session_id={meeting.session_id}, @tutor_id={meeting.tutor_id}, @translator_id={meeting.translator_id}, @meeting_name='{meeting.meeting_name}', @term='{meeting.term}', @duration='{meeting.duration}', @language_id={meeting.language_id}, @classroom='{meeting.classroom}', @meeting_id=NULL
            """
            queries['meetings'].append(query)
        for sync_meeting in self.generated_data['sync_meetings']:
            query = f"""
            EXEC CreateSessionSyncMeeting @session_id={sync_meeting.session_id}, @tutor_id={sync_meeting.tutor_id}, @translator_id={sync_meeting.translator_id}, @meeting_name='{sync_meeting.meeting_name}', @term='{sync_meeting.term}', @duration='{sync_meeting.duration}', @language_id={sync_meeting.language_id}, @meeting_url='{sync_meeting.meeting_url}', @video_url='{sync_meeting.video_url}', @meeting_id=NULL
            """
            queries['sync_meetings'].append(query)
        for async_meeting in self.generated_data['async_meetings']:
            query = f"""
            EXEC CreateSessionAsyncMeeting @session_id={async_meeting.session_id}, @tutor_id={async_meeting.tutor_id}, @translator_id={async_meeting.translator_id}, @meeting_name='{async_meeting.meeting_name}', @term='{async_meeting.term}', @duration='{async_meeting.duration}', @language_id={async_meeting.language_id}, @video_url='{async_meeting.video_url}', @meeting_id=NULL
            """
            queries['async_meetings'].append(query)
        for stationary_meeting in self.generated_data['stationary_meetings']:
            query = f"""
            EXEC CreateSessionStationaryMeeting @session_id={stationary_meeting.session_id}, @tutor_id={stationary_meeting.tutor_id}, @translator_id={stationary_meeting.translator_id}, @meeting_name='{stationary_meeting.meeting_name}', @term='{stationary_meeting.term}', @duration='{stationary_meeting.duration}', @language_id={stationary_meeting.language_id}, @classroom='{stationary_meeting.classroom}', @meeting_id=NULL
            """
            queries['stationary_meetings'].append(query)

        with open('sql/insert_studies.sql', 'w') as file:
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
