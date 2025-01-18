EXEC CreateStudy
  @study_name = 'Computer Science Basics',
    @study_description = 'description',
  @product_price = 1000.0,
  @vacancies = 30,
  @release = '2025-02-01',
    @study_id = INT OUTPUT;

EXEC CreateSubject
    @study_id = 1,
    @tutor_id=5,
    @subject_name = 'Introduction to databases',
    @subject_description = 'something',
    @product_price = 200,
    @release = '2025-02-01',
    @subject_id = INT OUTPUT

EXEC CreateSession
    @subject_id = 1,
    @product_price = 30,
    @release = '2025-02-01',
    @session_id = INT OUTPUT;

EXEC CreateInternship
    @study_id = 1,
    @start_date = '2025-02-11',
     @end_date = '2025-02-25',
    @internship_id = INT OUTPUT;

EXEC CreateInternshipDetails
    @internship_id = 1,
     @student_id = 1,
     @passed = 0,
     @internship_detail_id = INT OUTPUT
     
EXEC CreateSessionStationaryMeeting
  @session_id = 1,
  @tutor_id = 2,
  @meeting_name = 'SQL Queries',
  @term = '2025-02-05 10:00',
  @language_id = 1,
  @classroom = '4.27',
  @meeting_id = INT OUTPUT;