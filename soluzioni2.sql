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