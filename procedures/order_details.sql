CREATE PROCEDURE dbo.UpdateProductDetailsPassed
AS
BEGIN
    -- Update for Studies (type_id = 1)
    UPDATE pd
    SET pd.passed = dbo.DoesStudentPassStudy(pd.student_id, s.study_id)
    FROM PRODUCT_DETAILS pd
    JOIN PRODUCTS p ON p.product_id = pd.product_id
    JOIN STUDIES s ON s.study_id = p.product_id
    WHERE p.type_id = 1

    -- Update for Subjects (type_id = 2)
    UPDATE pd
    SET pd.passed = dbo.DoesStudentPassSubject(pd.student_id, s.subject_id)
    FROM PRODUCT_DETAILS pd
    JOIN PRODUCTS p ON p.product_id = pd.product_id
    JOIN SUBJECTS s ON s.subject_id = p.product_id
    WHERE p.type_id = 2

    -- Update for Courses (type_id = 3)
    UPDATE pd
    SET pd.passed = dbo.DoesStudentPassCourse(pd.student_id, c.course_id)
    FROM PRODUCT_DETAILS pd
    JOIN PRODUCTS p ON p.product_id = pd.product_id
    JOIN COURSES c ON c.course_id = p.product_id
    WHERE p.type_id = 3
END;


UpdateProductDetailsPassed