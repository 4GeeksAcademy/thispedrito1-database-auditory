-- ============================================================
-- EduTrack v2 — Auditoría con tablas relacionadas (JOINs)
-- Esquema: students / courses / enrollments (edutrack_v2.sql)
--
-- Reglas del proyecto:
--   · Cada consulta usa al menos un JOIN
--   · Sin subconsultas
--   · SQL escrito a mano (sin IA)
--
-- Escribe tu consulta debajo de cada enunciado.
-- ============================================================


-- ------------------------------------------------------------
-- BLOQUE A · INNER JOIN
-- ------------------------------------------------------------

-- 1) Todas las inscripciones mostrando el nombre del estudiante,
--    el título del curso y su porcentaje de completado.
--    Pista: enrollments se une a students por student_id
--           y a courses por course_id (dos INNER JOIN).

SELECT
    students.name,
    courses.title,
    enrollments.completion_percentage
FROM enrollments
INNER JOIN students ON students.id = enrollments.student_id
INNER JOIN courses  ON courses.id  = enrollments.course_id;

-- 2) Nombre y email de los estudiantes que han APROBADO al menos
--    un curso, junto con el título del curso aprobado.
--    Pista: el mismo doble JOIN de la 1, filtrando con WHERE passed = TRUE.

SELECT
    students.name,
    courses.title,
    students.email
FROM enrollments 
INNER JOIN students ON students.id = enrollments.student_id
INNER JOIN courses  ON courses.id  = enrollments.course_id
WHERE enrollments.passed = TRUE;

-- 3) Porcentaje de completado MEDIO por instructor, de mayor a menor.
--    Pista: JOIN entre enrollments y courses, función AVG(...),
--           GROUP BY instructor_name y ORDER BY ... DESC.

 SELECT
      courses.instructor_name,  
      ROUND (AVG(enrollments.completion_percentage),2) AS media_completado 
      FROM enrollments INNER JOIN courses ON courses.id = enrollments.course_id 
      GROUP BY courses.instructor_name 
      ORDER BY media_completado DESC;

-- ------------------------------------------------------------
-- BLOQUE B · LEFT JOIN (detectar lo que falta)
-- ------------------------------------------------------------

-- 4) Estudiantes SIN ninguna inscripción (se registraron en la
--    plataforma pero nunca se apuntaron a un curso).
--    Pista: students LEFT JOIN enrollments ... y quedarte con las
--           filas donde enrollments.id IS NULL.

 SELECT students.name, students.email 
 FROM students LEFT JOIN enrollments 
 ON enrollments.student_id = students.id 
 WHERE enrollments.id IS NULL;

-- 5) Cursos SIN ninguna inscripción (están en el catálogo pero
--    nadie se ha apuntado).
--    Pista: igual que la 4, pero partiendo de courses.

SELECT courses.title
FROM courses
LEFT JOIN enrollments ON enrollments.course_id = courses.id
WHERE enrollments.id IS NULL;

-- ------------------------------------------------------------
-- BLOQUE C · Agregación entre tablas (GROUP BY / HAVING)
-- ------------------------------------------------------------

-- 6) Cuántos cursos cursa cada estudiante, mostrando SOLO los que
--    están inscritos en MÁS de un curso (nombre + número de cursos).
--    Pista: COUNT(...) con GROUP BY; el filtro sobre el conteo
--           va en HAVING, no en WHERE.

SELECT  
    students.name, 
    COUNT(enrollments.course_id) AS numero_cursos
FROM students
INNER JOIN enrollments ON enrollments.student_id = students.id
GROUP BY students.name
HAVING COUNT(enrollments.course_id) > 1;

-- 7) Ingresos totales por categoría usando el precio ACTUAL del
--    curso (courses.monthly_fee), no el pago histórico guardado
--    en enrollments.
--    Pista: JOIN entre enrollments y courses, SUM(courses.monthly_fee),
--           GROUP BY category, ORDER BY para ver la mayor primero.

SELECT
    courses.category,
    SUM(courses.monthly_fee) AS ingresos_totales
FROM enrollments
INNER JOIN courses ON courses.id = enrollments.course_id
GROUP BY courses.category
ORDER BY ingresos_totales DESC;

-- 8) Cada instructor con el número de estudiantes inscritos
--    actualmente en sus cursos.
--    Pista: JOIN entre enrollments y courses, COUNT(...),
--           GROUP BY instructor_name.

SELECT
    courses.instructor_name,
    COUNT(DISTINCT enrollments.student_id) AS numero_estudiantes
FROM enrollments
INNER JOIN courses ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name;

-- ------------------------------------------------------------
-- BLOQUE D · Integridad de datos (registros huérfanos)
-- ------------------------------------------------------------

-- 9) Inscripciones cuyo student_id NO corresponde a ningún
--    estudiante existente.
--    Pista: enrollments LEFT JOIN students ... WHERE students.id IS NULL.

SELECT
    enrollments.id AS enrollment_id,
    enrollments.student_id
FROM enrollments
LEFT JOIN students ON students.id = enrollments.student_id
WHERE students.id IS NULL;

-- 10) Inscripciones cuyo course_id NO corresponde a ningún
--     curso existente.
--     Pista: igual que la 9, pero uniendo con courses.

SELECT
    enrollments.id AS enrollment_id,
    enrollments.course_id
FROM enrollments
LEFT JOIN courses ON courses.id = enrollments.course_id
WHERE courses.id IS NULL;
