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

-- soluzione 4

SELECT *
FROM `courses`
WHERE `period` LIKE "I %" AND `year` = 1;

-- soluzione 5

SELECT *
FROM `exams`
WHERE `date` = "2020-06-20" AND `hour` > '14:00:00';

-- soluzione 6

SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

--soluzione 7

SELECT count(*)
FROM `departments`;

-- soluzione 8

SELECT *
FROM `teachers`
WHERE `phone` IS NULL;

-- soluzioni bonus

-- gli esami con voto più alto di 30

SELECT *
FROM `exam_student`
WHERE `vote` > 30
ORDER BY `vote` DESC;

-- gli studenti di nome antonio o lidia che hanno meno di 35 anni

SELECT *
FROM `students`
WHERE (`name` = 'lidia' OR `name` = 'antonio') AND timestampdiff(year, `date_of_birth`, curdate()) < 35;

-- tutti gli insegnanti con nome che finisce per 'a' e cognome per 'b' che non hanno phone registrato o numero italiano

SELECT *
FROM `teachers`
WHERE `name` LIKE '%a' AND `surname` LIKE '%i' AND (`phone` NOT LIKE '+39%' OR `phone` IS NULL)
ORDER BY cast(`office_number` as UNSIGNED) ASC;