EXEC CreateCourse
  @course_name = 'Data Structures',
  @product_price = 2000,
  @vacancies = 25,
  @release = '2025-03-01',
  @course_id = INT OUTPUT;

EXEC CreateModule
  @course_id = 2,
  @tutor_id = 3,
  @module_name = 'Trees and Graphs',
  @module_description = 'Introduction to trees and graph algorithms',
  @module_id = INT OUTPUT;

EXEC CreateModuleSyncMeeting
  @module_id = 2,
  @tutor_id = 3,
  @meeting_name = 'Graph Traversal',
  @term = '2025-03-10 14:00',
  @duration = '02:00:00',
  @meeting_url = 'https://example.com/meeting-link',
  @meeting_id = INT OUTPUT;
  
EXEC FillMeetingDetails
  @meeting_id = 2,
  @student_id = 1