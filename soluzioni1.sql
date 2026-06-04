-- soluzione 1 

SELECT *
FROM `students`
WHERE year(`date_of_birth`) LIKE 1990;

-- soluzione 2

SELECT *
FROM `courses`
WHERE `courses`.`cfu` > 10;

-- soluzione 3

SELECT *
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30
ORDER BY `date_of_birth` DESC;