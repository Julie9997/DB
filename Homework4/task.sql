use homework4;

# 1. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA

SELECT MARK, COLOR, COUNT(*) AS quantity
FROM auto
WHERE MARK IN ("BMW", "LADA")
GROUP BY MARK, COLOR;

# 2. Вывести на экран марку авто и количество AUTO не этой марки
SELECT MARK, (
	SELECT COUNT(*) 
    FROM auto
) - COUNT(*) AS quantity
FROM auto
GROUP BY MARK;

# 3. запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.
SELECT a.id
FROM test_a a
LEFT JOIN test_b b ON  a.id = b.id
WHERE b.id IS NULL;