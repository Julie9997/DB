use seminar_3;

# записи отсортированные по ввозрасту

SELECT * FROM staff
ORDER BY age;

# записи, отсортированные по имени
SELECT * FROM staff
ORDER BY name;

# записи, отсортированные по имени по убыванию
SELECT name, surname, age FROM staff
ORDER BY name DESC;

# записи, отсортированные по имени и возрасту по убыванию
SELECT name, surname, age FROM staff
ORDER BY name, age DESC;