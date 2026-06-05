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