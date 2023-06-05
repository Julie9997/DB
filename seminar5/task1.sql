use seminar_5;

WITH active_users AS (
	SELECT username, password FROM users WHERE status = 'Active')
    SELECT * FROM active_users;
   
# Используя СТЕ, выведите всех пользователей из таблицы users_profile   
WITH profiles AS (
	SELECT * FROM users_profile)
    SELECT * FROM profiles;
    
# Используя СТЕ, подсчитайте количество активных пользователей . Задайте псевдоним результирующему окну
WITH active_users AS (
	SELECT username, password FROM users WHERE status = 'Active')
    SELECT COUNT(*) AS 'Total active users' FROM active_users;


# С помощью СТЕ реализуйте таблицу квадратов чисел от 1 до 10: (пример для чисел от 1 до 3)
WITH RECURSIVE cte AS
(
	SELECT 1 AS a
	UNION ALL
	SELECT a + 1 FROM cte
	WHERE a < 10
)
SELECT a, POW(a, 2) AS result FROM cte;

WITH RECURSIVE cte AS
(
	SELECT 1 AS a, 1 AS result
    UNION ALL
    SELECT a + 1, POW(a + 1, 2) FROM cte
	WHERE a < 10
)
SELECT * FROM cte