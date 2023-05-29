use seminar_3;

# Сгруппируйте поля по возрасту. Для каждой группы  найдите суммарную зарплату 
SELECT SUM(sallary), age
FROM workers
GROUP BY age;

# максимальную заработную плату внутри группы
SELECT MAX(sallary), age
FROM workers
GROUP BY age;

# минимальную заработную плату внутри группы
SELECT MIN(sallary), age
FROM workers
GROUP BY age;


