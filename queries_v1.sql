SELECT student_name, student_email, completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

SELECT student_name, course_title, completion_percentage 
FROM enrollments 
WHERE completion_percentage <10;

SELECT *
FROM enrollments
WHERE instructor is NULL;

SELECT student_name, student_email, course_title, completion_percentage
FROM enrollments
WHERE passed = FALSE
ORDER BY completion_percentage DESC
LIMIT 5;

SELECT *
FROM enrollments
WHERE enrollment_date >= (SELECT MAX(enrollment_date) FROM enrollments) - INTERVAL '1 year'
ORDER BY enrollment_date DESC;

INSERT INTO enrollments (
    id, student_id, student_name, student_email,
    course_id, course_title, category,
    enrollment_date, completion_percentage, passed,
    monthly_fee_paid, instructor
) VALUES (
    18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com',
    5, 'Advanced Python', 'Programming',
    '2025-04-01', 0, FALSE,
    69.99, 'Carlos Vega'
);

UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

DELETE FROM enrollments
WHERE student_email LIKE '%@test.com';

SELECT category, COUNT(*) AS total_inscripciones
FROM enrollments
GROUP BY category;

SELECT course_title, AVG(completion_percentage) AS promedio_completado
FROM enrollments
GROUP BY course_title
ORDER BY promedio_completado ASC;

SELECT course_title, COUNT(*) AS total_inscripciones
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3;

SELECT category, SUM(monthly_fee_paid) AS ingresos_totales
FROM enrollments
GROUP BY category
ORDER BY ingresos_totales DESC;