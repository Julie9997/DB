use seminar_3;

#Выведите  только те строки, в которых суммарная зарплата больше или равна 1000
SELECT SUM(sallary), age
FROM workers
GROUP BY age
HAVING SUM(sallary) >= 1000;

# только те группы, в которых количество строк меньше или равно двум
SELECT  SUM(sallary), age
FROM workers
GROUP BY age
HAVING COUNT(*) <= 2;

# только те группы, в которых количество строк меньше или равно двум
SELECT age
FROM workers
GROUP BY age
HAVING COUNT(*) <= 2;

# Выведите только те группы, в которых количество строк меньше или равно двум. Для решения используйте оператор “BETWEEN”
SELECT age
FROM workers
GROUP BY age
HAVING COUNT(age) BETWEEN 0 AND 2;

SELECT age
FROM workers
GROUP BY age
HAVING COUNT(age) IN (0, 1, 2);