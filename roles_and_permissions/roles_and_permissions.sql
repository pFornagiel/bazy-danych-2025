-- Create roles
CREATE ROLE student;
grant select on webinar_information to student;
grant select on webinar_available to student;
grant select on course_information to student;
grant select on course_module_meeting_types to student;
grant select on course_module to student;
grant select on course_meeting_information to student;
grant select on course_passes to student;
grant select on product_payment_information to student
grant select on unpaid_special_permissions to student
grant select on product_information to student
grant select on meeting_type to student
grant select on only_course_meeting to student
grant select on only_studies_meeting to student
grant select on room_schedule to student
grant select on study_information to student
grant select on study_internship_information to student
grant select on study_meeting_information to student
grant select on study_offers to student
grant select on study_passes to student
grant select on study_session_schedule to student
grant select on study_syllabus to student
grant execute on CreateOrder to student
grant execute on CreateOrderFromCart to student
grant execute on addProductToCart to student
grant execute on removeProductFromCart to student
grant execute on UpdateFeePaymentDate to student


CREATE ROLE guest;
grant select on webinar_free_entry to guest;
grant execute on CreateStudent to guest

CREATE ROLE tutor;
grant select on attendance_meeting to tutor
grant select on future_meeting_atendee_count to tutor;
grant select on webinar_information to tutor;
grant select on course_information to tutor;
grant select on study_information to tutor
grant select on study_meeting_information to tutor
grant select on course_meeting_information to student;
grant select on study_syllabus to tutor
grant select on room_schedule to tutor
grant execute on MarkProductAsPassed to tutor;
grant execute on FillMeetingDetails to tutor

CREATE ROLE director;
grant select on regular_customers to dean_office

CREATE ROLE resource_admin;


CREATE ROLE dean_office;
grant select on student_adress to dean_office;
grant select on employee_type_list to dean_office
grant select on user_information to dean_office
grant select on regular_customers to dean_office
grant select on users_in_debt to dean_office
grant select on product_vacancies to dean_office
grant select on financial_report to dean_office
grant select on bilocation_report to dean_office
grant select on product_owners to dean_office
grant execute on CreateEmployee to dean_office
grant execute on CreateCourse to dean_office
grant execute on CreateModule to dean_office
grant execute on CreateModuleStationaryMeeting to dean_office
grant execute on CreateModuleSyncMeeting to dean_office
grant execute on CreateModuleAsyncMeeting to dean_office
grant execute on CreateWebinar to dean_office
grant execute on CreateStudy to dean_office
grant execute on CreateSubject to dean_office
grant execute on CreateSession to dean_office
grant execute on CreateSessionStationaryMeeting to dean_office
grant execute on CreateSessionSyncMeeting to dean_office
grant execute on CreateSessionAsyncMeeting to dean_office
grant execute on CreateInternship to dean_office
grant execute on CreateInternshipDetails to dean_office
grant execute on CreateFee to dean_office
grant execute on FillProductDetails to dean_office
grant execute on LinkTranslatorToWebinar to translator
grant execute on LinkTranslatorToMeeting to translator



CREATE ROLE translator;
grant select on webinar_information to translator;
grant select on course_information to translator;
grant select on study_information to translator

