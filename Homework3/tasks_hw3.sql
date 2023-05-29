use homework3;

# 1. Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname, snum, comm. (к первой или второй таблице, используя SELECT)
SELECT city, sname, snum, comm
FROM salespeople;

# 2. Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose.
SELECT rating, cname
FROM customers
WHERE city = 'San Jose';

# 3. Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. (уникальные значения в  “snum“ “Продавцы”)
SELECT DISTINCT snum
FROM orders;

# 4. Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G. Используется оператор "LIKE"
SELECT *
FROM customers
WHERE cname LIKE 'G%';

# 5. Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt”  - сумма)
SELECT *
FROM orders
WHERE amt > 1000;

# 6. Напишите запрос который выбрал бы наименьшую сумму заказа.
SELECT MIN(amt) AS min_amt
FROM orders;

# 7. Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.
SELECT * FROM customers
WHERE rating > 100 AND city NOT IN('Rome');

use seminar_3;
# 8. Отсортируйте поле “зарплата” в порядке убывания и возрастания
# по возрастанию
SELECT * FROM staff
ORDER BY sallary;
# по убыванию
SELECT * FROM staff
ORDER BY sallary DESC;

# 9. Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой 
SELECT * FROM (
	SELECT * FROM staff 
    ORDER BY sallary DESC 
    LIMIT 5
) AS subquery
ORDER BY sallary;

# 10. Выполните группировку всех сотрудников по специальности , суммарная зарплата которых превышает 100000
SELECT speciality, SUM(sallary) AS total_sallary 
FROM staff
GROUP BY speciality
HAVING total_sallary > 100000;