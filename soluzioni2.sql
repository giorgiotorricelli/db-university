-- prima soluzione

SELECT 
    YEAR(enrolment_date) as enrolment_date,
    COUNT(*) as total_students


FROM students
GROUP BY YEAR(enrolment_date)
ORDER BY enrolment_date;

-- seconda soluzione 

SELECT SUM(conteggio) AS totale_insegnanti_in_coabitazione
FROM (
    SELECT COUNT(*) AS conteggio
    FROM teachers
    GROUP BY office_address
    HAVING COUNT(*) > 1
) AS uffici_filtrati;

-- TERZA SOLUZIONE

SELECT AVG(vote)
FROM exam_student;

-- quarta soluzione

SELECT COUNT(id) AS degrees_count, department_id
FROM degrees
GROUP BY department_id;

-- secondo foglio di query

-- prima soluzione

SELECT *
FROM students
JOIN degrees AS d
ON degree_id = d.id
HAVING d.name LIKE 'Corso di Laurea in Economia';

-- seconda soluzione

SELECT *
FROM degrees
JOIN departments AS d
ON department_id = d.id
WHERE d.name LIKE 'Dipartimento di Neuroscienze';

-- terza soluzione

SELECT c.id, c.description
FROM teachers
JOIN course_teacher AS ct
ON ct.teacher_id = teachers.id
JOIN courses AS c
ON c.id = ct.course_id
WHERE teachers.id LIKE 44;

-- quarta soluzione

SELECT s.name, s.surname, d.* ,dep.*
FROM students AS s
JOIN degrees AS d
ON d.id = s.degree_id
JOIN departments AS dep
ON d.department_id = dep.id
ORDER BY s.name, s.surname;

-- quinta soluzione

SELECT *
FROM degrees AS d
JOIN courses AS c
ON d.id = c.degree_id
JOIN course_teacher AS ct
ON c.id = ct.course_id
JOIN teachers AS t
ON t.id = ct.teacher_id
LIMIT 184467440737;