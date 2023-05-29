use seminar_3;

# уникальные имена
SELECT DISTINCT name 
FROM staff;

# первые две записи
SELECT * FROM staff
LIMIT 2;

SELECT * FROM staff
LIMIT 4, 3;

#Пропустите две последнии строки (где id=12, id=11) и извлекаются следующие за ними 3 строки (где id=10, id=9, id=8)
SELECT * FROM staff
ORDER BY id DESC
LIMIT 2, 3;