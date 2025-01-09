from faker import Faker
from models import Webinar
from datetime import datetime, timedelta
import random
from const import LANGAUGES

class WebinarDataGenerator:
    def __init__(self, locale='pl_PL'):
        self.fake = Faker(locale)
        self.generated_data = {
            'webinars': []
        }

    def _generate_webinar_data(self, tutors, translators):
        return Webinar(
            tutor_id=random.choice(tutors),
            translator_id=random.choice(translators) if random.choice([True, False]) else None,
            webinar_name=self.fake.word(),
            webinar_description=self.fake.text(),
            video_url=self.fake.url(),
            meeting_url=self.fake.url(),
            webinar_duration=self.fake.time_object(end_datetime=None),
            publish_date=self.fake.date_time_between(start_date='-1y', end_date='now'),
            price=random.uniform(0, 1000),
            vacancies=random.randint(10, 50),
            release=self.fake.date_between(start_date='-1y', end_date='today'),
            language_id=random.randint(1,len*LANGAUGES)
        )

    def generate_webinars(self, num_webinars, tutors, translators):
        for _ in range(num_webinars):
            self.generated_data['webinars'].append(self._generate_webinar_data(tutors, translators))
        return self.generated_data['webinars']

    def save_queries(self):
        queries = {
            'webinars': []
        }

        for webinar in self.generated_data['webinars']:
            query = f"""
            EXEC CreateWebinar @tutor_id={webinar.tutor_id}, @translator_id=NULL, @webinar_name='{webinar.webinar_name}', @webinar_description='{webinar.webinar_description}', @video_url='{webinar.video_url}',  @meeting_url='{webinar.meeting_url}', @webinar_duration='{webinar.webinar_duration}', @publish_date='{webinar.publish_date}', @language_id={webinar.language_id}, @product_price={webinar.price}, @vacancies={webinar.vacancies}, @release='{webinar.release}', @webinar_id=NULL
            """
            queries['webinars'].append(query)

        with open('sql/insert_webinars.sql', 'w') as file:
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
