use lesson_4;

SELECT * FROM clients
WHERE login IN ('alex', 'Dmitry', 'Leonid', 'Olga');

SELECT login FROM users
WHERE login NOT IN ('Mikle');

SELECT name, Id FROM Employee
WHERE EXISTS (
	SELECT * FROM projects
    WHERE projects.EmployeeId = Id
    AND EndDate > NOW()
    );