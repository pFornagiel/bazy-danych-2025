from generators.generate_users import UserDataGenerator
from generators.generate_studies import StudyDataGenerator
from generators.generate_courses import CourseDataGenerator
from generators.generate_webinars import WebinarDataGenerator
import random

# Generate 100 users (students and employees of different types)
AMOUNT_OF_STUDENTS = 50
AMOUNT_OF_HEADMASTERS = 1
AMOUNT_OF_ADMINISTATION_WORKERS = 20
AMOUNT_OF_TUTORS = 20
AMOUNT_OF_TRANSLATORS = 10
user_data = UserDataGenerator()
user_data.generate_students(AMOUNT_OF_STUDENTS)
user_data.generate_employees(AMOUNT_OF_HEADMASTERS, 1)  # headmaster
user_data.generate_employees(AMOUNT_OF_ADMINISTATION_WORKERS, 2)  # administrative worker
user_data.generate_employees(AMOUNT_OF_TUTORS, 3)  # tutor
user_data.generate_employees(AMOUNT_OF_TRANSLATORS, 4)   # translator
cumulative_users = 1
STUDENTS = [i+cumulative_users for i in range(AMOUNT_OF_STUDENTS)]
cumulative_users+=len(STUDENTS)
HEADMASTERS = [i+cumulative_users for i in range(AMOUNT_OF_HEADMASTERS)]
cumulative_users+=len(HEADMASTERS)
WORKERS = [i+cumulative_users for i in range(AMOUNT_OF_ADMINISTATION_WORKERS)]
cumulative_users+=len(WORKERS)
TUTORS = [i+cumulative_users for i in range(AMOUNT_OF_TUTORS)]
cumulative_users+=len(TUTORS)
TRANSLATORS = [i+cumulative_users for i in range(AMOUNT_OF_TRANSLATORS)]


# Save user queries to file
user_data.save_queries()

# Generate studies and related data
AMOUNT_OF_STUDIES = 10
AMOUNT_OF_SUBJECTS = 3
AMOUNT_OF_SESSIONS = 2
AMOUNT_OF_INTERSHIPS = 10
AMOUNT_OF_INTERSHIPS_DETAILS = 20
AMOUNT_OF_SYNC_MEETINGS = 2
AMOUNT_OF_ASYNC_MEETINGS = 2
AMOUNT_OF_STATIONARY_MEETINGS = 3

cumulative_studies = 1
study_data = StudyDataGenerator()
study_data.generate_studies(AMOUNT_OF_STUDIES)
STUDIES = [i+cumulative_studies for i in range(AMOUNT_OF_STUDIES)]
cumulative_studies += len(STUDIES)

SUBJECTS = []
SESSIONS = []
INTERNSHIPS = []
MEETINGS = []
SYNC_MEETINGS = []
ASYNC_MEETINGS = []
STATIONARY_MEETINGS = []

for study in STUDIES:
  # Generate subjects
  amount_subjects = random.randint(AMOUNT_OF_SUBJECTS-2, AMOUNT_OF_SUBJECTS+2)
  study_data.generate_subjects(amount_subjects, study, TUTORS)
  SUBJECTS.extend([i+cumulative_studies for i in range(amount_subjects)])
  cumulative_studies += amount_subjects

# Generate internships
amount_internships = random.randint(AMOUNT_OF_INTERSHIPS-2, AMOUNT_OF_INTERSHIPS+2)
study_data.generate_internships(amount_internships, study)
INTERNSHIPS.extend([i+1 for i in range(amount_internships)])
  
for subject in SUBJECTS:
  # Generate sessions
  amount_sessions = random.randint(AMOUNT_OF_SESSIONS-1, AMOUNT_OF_SESSIONS+1)
  study_data.generate_sessions(amount_sessions, subject)
  SESSIONS.extend([i+cumulative_studies for i in range(amount_sessions)])
  cumulative_studies += amount_sessions

for session in SESSIONS:
  # Generate sync meetings
  amount_sync_meetings = random.randint(AMOUNT_OF_SYNC_MEETINGS-2, AMOUNT_OF_SYNC_MEETINGS+2)
  study_data.generate_sync_meetings(amount_sync_meetings, random.choice(TUTORS), session, random.choice(TRANSLATORS))
  SYNC_MEETINGS.extend([i+cumulative_studies for i in range(amount_sync_meetings)])

  # Generate async meetings
  amount_async_meetings = random.randint(AMOUNT_OF_ASYNC_MEETINGS-2, AMOUNT_OF_ASYNC_MEETINGS+2)
  study_data.generate_async_meetings(amount_async_meetings, random.choice(TUTORS), session, random.choice(TRANSLATORS))
  ASYNC_MEETINGS.extend([i+cumulative_studies for i in range(amount_async_meetings)])

  # Generate stationary meetings
  amount_stationary_meetings = random.randint(AMOUNT_OF_STATIONARY_MEETINGS-2, AMOUNT_OF_STATIONARY_MEETINGS+2)
  study_data.generate_stationary_meetings(amount_stationary_meetings, random.choice(TUTORS), session, random.choice(TRANSLATORS))
  STATIONARY_MEETINGS.extend([i+cumulative_studies for i in range(amount_stationary_meetings)])

# Generate courses and related data
AMOUNT_OF_COURSES = 5
AMOUNT_OF_MODULES = 3
AMOUNT_OF_SYNC_MEETINGS = 2
AMOUNT_OF_ASYNC_MEETINGS = 2
AMOUNT_OF_STATIONARY_MEETINGS = 3

course_data = CourseDataGenerator()
course_data.generate_courses(AMOUNT_OF_COURSES)
COURSES = [i+cumulative_studies for i in range(AMOUNT_OF_COURSES)]
cumulative_studies += len(COURSES)

MODULES = []
SYNC_MEETINGS = []
ASYNC_MEETINGS = []
STATIONARY_MEETINGS = []

cumulative_modules = 1
for course in COURSES:
    # Generate modules
    amount_modules = random.randint(AMOUNT_OF_MODULES-1, AMOUNT_OF_MODULES+1)
    course_data.generate_modules(amount_modules, course, TUTORS)
    MODULES.extend([i+cumulative_modules for i in range(amount_modules)])
    cumulative_modules += amount_modules

for module in MODULES:
    # Generate sync meetings
    amount_sync_meetings = random.randint(AMOUNT_OF_SYNC_MEETINGS-2, AMOUNT_OF_SYNC_MEETINGS+2)
    course_data.generate_sync_meetings(amount_sync_meetings, random.choice(TUTORS), module, random.choice(TRANSLATORS))
    SYNC_MEETINGS.extend([i+cumulative_studies for i in range(amount_sync_meetings)])
    # dumulative_studies += amount_sync_meetings

    # Generate async meetings
    amount_async_meetings = random.randint(AMOUNT_OF_ASYNC_MEETINGS-2, AMOUNT_OF_ASYNC_MEETINGS+2)
    course_data.generate_async_meetings(amount_async_meetings, random.choice(TUTORS), module, random.choice(TRANSLATORS))
    ASYNC_MEETINGS.extend([i+cumulative_studies for i in range(amount_async_meetings)])
    # dumulative_studies += amount_async_meetings

    # Generate stationary meetings
    amount_stationary_meetings = random.randint(AMOUNT_OF_STATIONARY_MEETINGS-2, AMOUNT_OF_STATIONARY_MEETINGS+2)
    course_data.generate_stationary_meetings(amount_stationary_meetings, random.choice(TUTORS), module, random.choice(TRANSLATORS))
    STATIONARY_MEETINGS.extend([i+cumulative_studies for i in range(amount_stationary_meetings)])
    # dumulative_studies += amount_stationary_meetings

# Save course queries to file
course_data.save_queries()

# Generate webinars and related data
AMOUNT_OF_WEBINARS = 5

cumulative_webinars = cumulative_studies
webinar_data = WebinarDataGenerator()
webinar_data.generate_webinars(AMOUNT_OF_WEBINARS, TUTORS, TRANSLATORS)
WEBINARS = [i+cumulative_webinars for i in range(AMOUNT_OF_WEBINARS)]
cumulative_webinars += len(WEBINARS)

# Save webinar queries to file
webinar_data.save_queries()

# Save study queries to file
study_data.save_queries()
print(MODULES)