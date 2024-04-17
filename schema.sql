-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- DROP TABLE IF EXISTS Client;
-- DROP TABLE IF EXISTS Species;
-- DROP TABLE IF EXISTS Pet;
-- DROP TABLE IF EXISTS Diagnosis;
-- DROP TABLE IF EXISTS Department;
-- DROP TABLE IF EXISTS Position;
-- DROP TABLE IF EXISTS Employee;
-- DROP TABLE IF EXISTS Education;
-- DROP TABLE IF EXISTS Appointment;
-- DROP TABLE IF EXISTS Service;
-- DROP TABLE IF EXISTS Services_List;

-- Creating Client table
CREATE TABLE IF NOT EXISTS Client (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50),
	address VARCHAR(255),
	phone VARCHAR(30) NOT NULL UNIQUE,
	email VARCHAR(50)
);

-- Creating Species table
CREATE TABLE IF NOT EXISTS Species (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

-- Creating Pet table
CREATE TABLE IF NOT EXISTS Pet (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(50) NOT NULL,
	species_id INTEGER NOT NULL,
	breed VARCHAR(50),
	sex CHAR(1) NOT NULL CHECK(sex IN ('m', 'f')),
	birth_date DATE,
	color VARCHAR(30),
	comment VARCHAR(255),
	client_id INTEGER NOT NULL,
    FOREIGN KEY (species_id) REFERENCES Species(id),
	FOREIGN KEY (client_id) REFERENCES Client(id)
);

-- Creating Diagnosis table
CREATE TABLE IF NOT EXISTS Diagnosis (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL,
    code VARCHAR(10) NOT NULL
);

-- Creating Department table
CREATE TABLE IF NOT EXISTS Department (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL
);

-- Creating Position table
CREATE TABLE IF NOT EXISTS Position (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL,
	base_salary NUMERIC CHECK(base_salary > 0)
);

-- Creating Employee table
CREATE TABLE IF NOT EXISTS Employee (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50),
	birth_date DATE,
	sex CHAR(1) CHECK(sex IN ('m', 'f')),
	passport_num VARCHAR(30),
	passport_date DATE,
	passport_issuer VARCHAR(255),
	inn VARCHAR(12),
	department_id INTEGER NOT NULL,
	position_id INTEGER NOT NULL,
	FOREIGN KEY (department_id) REFERENCES Department(id),
	FOREIGN KEY (position_id) REFERENCES Position(id)
);

-- Creating Education table
CREATE TABLE IF NOT EXISTS Education (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	employee_id INTEGER NOT NULL,
	lvl VARCHAR(50) NOT NULL,
	institution VARCHAR(255),
	specialization VARCHAR(255),
	year INTEGER,
	FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

-- Creating Appointment table
CREATE TABLE IF NOT EXISTS Appointment (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	employee_id INTEGER NOT NULL,
	pet_id INTEGER NOT NULL,
	diagnosis_id INTEGER NOT NULL,
    appointment_dtime DATETIME NOT NULL DEFAULT CURRENT_DATE,
    comment VARCHAR(1000),
	FOREIGN KEY (employee_id) REFERENCES Employee(id),
	FOREIGN KEY (pet_id) REFERENCES Pet(id),
	FOREIGN KEY (diagnosis_id) REFERENCES Diagnosis(id)
);

-- Creating Service table
CREATE TABLE IF NOT EXISTS Service (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL,
	price NUMERIC NOT NULL CHECK(price > 0),
    price_date DATE NOT NULL
);

-- Creating Services_List table
CREATE TABLE IF NOT EXISTS Services_List (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	service_id INTEGER NOT NULL,
	appointment_id INTEGER NOT NULL,
	start_dtime DATETIME NOT NULL DEFAULT CURRENT_DATE,
	FOREIGN KEY (service_id) REFERENCES Service(id),
	FOREIGN KEY (appointment_id) REFERENCES Appointment(id)
);

-- Creating indexes on all foreign keys
CREATE INDEX IF NOT EXISTS IX_Pet_species_id ON Pet (species_id);
CREATE INDEX IF NOT EXISTS IX_Pet_client_id ON Pet (client_id);
CREATE INDEX IF NOT EXISTS IX_Employee_department_id ON Employee (department_id);
CREATE INDEX IF NOT EXISTS IX_Employee_position_id ON Employee (position_id);
CREATE INDEX IF NOT EXISTS IX_Education_employee_id ON Education (employee_id);
CREATE INDEX IF NOT EXISTS IX_Appointment_employee_id ON Appointment (employee_id);
CREATE INDEX IF NOT EXISTS IX_Appointment_pet_id ON Appointment (pet_id);
CREATE INDEX IF NOT EXISTS IX_Appointment_diagnosis_id ON Appointment (diagnosis_id);
CREATE INDEX IF NOT EXISTS IX_Services_List_service_id ON Services_List (service_id);
CREATE INDEX IF NOT EXISTS IX_Services_List_appointment_id ON Services_List (appointment_id);

-- Creating indexes on some columns to speed up typical queries
CREATE INDEX IF NOT EXISTS IX_Education_lvl ON Education (lvl);
CREATE INDEX IF NOT EXISTS IX_Position_name ON Position (name);

-- List of appointments for the last month:
CREATE VIEW IF NOT EXISTS "last_month_appointments" AS
SELECT *
FROM Appointment
WHERE appointment_dtime > DATETIME('now', '-1 month');

-- List of appointments for the current month:
CREATE VIEW IF NOT EXISTS "current_month_appointments" AS
SELECT *
FROM Appointment
WHERE appointment_dtime > DATETIME('now', 'start of month');

-- List of services with number of times provided:
CREATE VIEW IF NOT EXISTS ServicesN AS
SELECT s.name, COUNT(*) cnt
FROM Service s
JOIN Services_List sl ON sl.service_id = s.id
GROUP BY s.id, s.name
ORDER BY COUNT(*) DESC;

-- List of employees with number of appointments:
CREATE VIEW IF NOT EXISTS EmployeeN AS
SELECT e.first_name, e.last_name, e.middle_name, COUNT(*) cnt
FROM Employee e
JOIN Appointment a ON a.employee_id = e.id
GROUP BY e.id, e.first_name, e.last_name, e.middle_name
ORDER BY COUNT(*) DESC;

-- Validating email before insert and update
CREATE TRIGGER IF NOT EXISTS validate_client_email_before_insert
	BEFORE INSERT ON Client
	FOR EACH ROW
BEGIN
	SELECT
		CASE
			WHEN NEW.email NOT LIKE '%_@__%.__%' THEN
				RAISE (ABORT, 'Invalid email')
		END;
END;

CREATE TRIGGER IF NOT EXISTS validate_client_email_before_update
	BEFORE UPDATE ON Client
	FOR EACH ROW
BEGIN
	SELECT
		CASE
			WHEN NEW.email NOT LIKE '%_@__%.__%' THEN
				RAISE (ABORT, 'Invalid email')
		END;
END;

-- Preventing duplicate email before insert and update
CREATE TRIGGER IF NOT EXISTS prevent_duplicate_emails_before_insert
	BEFORE INSERT ON Client
	FOR EACH ROW
BEGIN
	SELECT RAISE (ABORT, 'Email already exists')
	FROM Client c
	WHERE c.email = NEW.email;
END;

CREATE TRIGGER IF NOT EXISTS prevent_duplicate_emails_before_update
	BEFORE UPDATE ON Client
	FOR EACH ROW
BEGIN
	SELECT RAISE (ABORT, 'Email already exists')
	FROM Client c
	WHERE c.email = NEW.email;
END;
