-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- Lists client information by client id
SELECT *
FROM Client
WHERE id = 1;

-- Lists pet information by pet id
SELECT *
FROM Pet
WHERE id = 2;

-- Lists employee information by employee id
SELECT *
FROM Employee
WHERE id = 3;

-- Lists appointment information by appointment id
SELECT *
FROM Appointment
WHERE id = 4;

-- Lists provided services by appointment id
SELECT s.name
FROM Service s
JOIN Services_List sl ON sl.service_id = s.id
JOIN Appointment a ON a.id = sl.appointment_id
WHERE a.id = 2;

-- Lists all pets owned by certain person
SELECT p.*
FROM Client c
JOIN Pet p ON p.client_id = c.id
WHERE c.id = 10;

-- Lists names of all employees with higher education
SELECT emp.first_name, emp.last_name, emp.middle_name
FROM Employee emp
JOIN Education edu ON edu.employee_id = emp.id
WHERE edu.lvl = 'higher education';

-- Lists name of all employees with a certain position
SELECT e.first_name, e.last_name, e.middle_name
FROM Position p
JOIN Employee e ON e.position_id = p.id
WHERE p.name = 'Surgeon';

-- Lists all pets that were provided with a specific service
SELECT p.*
FROM Service s
JOIN Services_List sl ON sl.service_id = s.id
JOIN Appointment a ON a.id = sl.appointment_id
JOIN Pet p ON p.id = a.pet_id
WHERE s.name = 'Initial appointment';

-- Lists all pets with a certain diagnosis and owners contact information
SELECT p.*, c.first_name, c.last_name, c.middle_name, c.phone
FROM Diagnosis d
JOIN Appointment a ON a.diagnosis_id = d.id
JOIN Pet p ON p.id = a.pet_id
JOIN Client c ON c.id = p.client_id
WHERE d.code = 'A1';

-- The most rarely provided service
SELECT s.name
FROM Service s
JOIN Services_List sl ON sl.service_id = s.id
GROUP BY s.id, s.name
HAVING COUNT(*) =
    (SELECT COUNT(*)
    FROM Services_List
    GROUP BY service_id
    ORDER BY COUNT(*)
    LIMIT 1);

-- Top 3 most frequently provided service
SELECT s.name
FROM Service s
JOIN
    (SELECT service_id, DENSE_RANK() OVER (ORDER BY cnt DESC) dr
    FROM (SELECT service_id, COUNT(*) cnt
        FROM Services_List
        GROUP BY service_id) tmp1) tmp2
    ON tmp2.service_id = s.id AND dr <= 3;

-- Employee(s) of the month (by number of appointments)
SELECT e.first_name, e.last_name, e.middle_name
FROM Employee e
JOIN Appointment a ON a.employee_id = e.id
GROUP BY e.id, e.first_name, e.last_name, e.middle_name
HAVING COUNT(*) =
    (SELECT COUNT(*)
    FROM Appointment
    GROUP BY employee_id
    ORDER BY COUNT(*)
    LIMIT 1);
