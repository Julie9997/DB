use seminar_3;

# общее количество всех страниц dialy_typing_pages
SELECT SUM(daily_typing_pages)
FROM employee_tbl;

# общее количество напечатанных страниц каждым человеком
SELECT SUM(daily_typing_pages), name
FROM employee_tbl
GROUP BY name;

# количество записей в таблице
SELECT COUNT(*)
FROM employee_tbl;

# уникальные имена
SELECT DISTINCT name
FROM employee_tbl;

# количество имен, которые являются уникальными 
SELECT COUNT(DISTINCT name)
FROM employee_tbl;

# среднее арифметическое по количеству ежедневных страниц для набора (daily_typing_pages)
SELECT AVG(daily_typing_pages)
FROM employee_tbl;