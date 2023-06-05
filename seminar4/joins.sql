USE lesson_4;

SELECT lesson.course, teacher.surname 
FROM lesson
INNER JOIN teacher
ON lesson.teacher_id = teacher.id;

SELECT *
FROM lesson
JOIN teacher
ON lesson.teacher_id = teacher.id;

SELECT *
FROM lesson
LEFT JOIN teacher
ON lesson.teacher_id = teacher.id;

SELECT * FROM lesson
LEFT JOIN teacher 
ON lesson.teacher_id = teacher.id
UNION 
SELECT * FROM lesson
RIGHT JOIN teacher 
ON lesson.teacher_id = teacher.id;

SELECT lesson.course, teacher.surname 
FROM lesson
CROSS JOIN teacher
