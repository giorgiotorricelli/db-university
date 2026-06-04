-- soluzione 1 

SELECT *
FROM `students`
WHERE year(`date_of_birth`) LIKE 1990;

-- soluzione 2

SELECT *
FROM `courses`
WHERE `courses`.`cfu` > 10;