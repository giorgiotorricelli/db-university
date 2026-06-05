-- prima soluzione

SELECT 
    YEAR(enrolment_date) as enrolment_date,
    COUNT(*) as total_students


FROM students
GROUP BY YEAR(enrolment_date)
ORDER BY enrolment_date;