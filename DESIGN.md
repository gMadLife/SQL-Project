# Design Document

By German Spirin

Video overview: https://youtu.be/PshKBAuOKtA

## Scope

The database was designed and developed for information services for veterinary clinic employees (administrative staff and doctors).

The database should contain data about such entities as:
- Client - contains information about clients of the veterinary clinic;
- Species - reference table, contains the species of pets that the veterinary clinic doctors will work with;
- Pet - contains information about pets that clients bring to the clinic;
- Diagnosis - reference table, contains possible diagnoses of diseases;
- Department - reference table, contains possible departments in which employees work;
- Position - reference table, contains possible positions in which employees work;
- Employee - contains information about the employees of the veterinary clinic;
- Education - contains information about employee education;
- Appointment - contains information about your pet’s doctor’s appointment and possible diagnosis;
- Service - reference table, contains a list of services provided;
- Services_List - contains a list of services provided during the appointment.

The following entities remain *outside* the database scope:
- Cabinets
- Schedule
- Pharmacy at the clinic
- Accounting

Vaccinations, initial examinations, etc. are considered a service.

## Functional Requirements

Taking into account that the database was designed for the needs of veterinary clinic employees, the users are:
- Registration staff
- Doctors
- HR
- Heads of departments

Registration staff have the ability to:
- Register a new client
- Register a new pet
- Make an appointment with a doctor at a specific time

Doctors have the ability to:
- Get information about previous appointments
- Prescribe the necessary examinations/tests/services as part of the appointment
- Make a diagnosis and leave a conclusion (comment) during the appointment

HR have the ability to:
- Add a new employee
- Add a new department or position
- Transfer an employee to another department or position
- Provide information about the employee's education

Heads of departments have the same opportunities as doctors, and can also receive information about all appointments and employees of their departments.

Despite the fact that registration staff can schedule a doctor's appointment at a specific time, the "Schedule" entity is outside the database scope.

Therefore, there are no checks to ensure that the doctor and reception room are available at this time.

It is also assumed that the lookup tables are populated one-time by the database administrator.

## Representation

### Entities

Client:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `first_name` displays the customers first_name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`;
- `last_name` displays the customers last_name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`;
- `middle_name` displays the customers middle_name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and **can be** `NULL`;
- `address` displays the customers address information. Considering that this is text of variable length has a data type of `VARCHAR(255)`;
- `phone` displays the customers phone number. Considering that this is text of variable length has a data type of `VARCHAR(30)`, is `NOT NULL` and must be `UNIQUE`;
- `email` displays the customers email. Considering that this is text of variable length has a data type of `VARCHAR(50)`. *Email is checked for correctness using triggers.*

Species:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `name` is the species name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`.

Pet:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `name` is the pet name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`;
- `species_id` is the species identification number. This is a `FOREIGN KEY` to `Species` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `breed` is the pet breed. Considering that this is text of variable length has a data type of `VARCHAR(50)`;
- `sex` is the pet sex. Can be only `m` or `f` using `CHECK(sex IN ('m', 'f'))` so has data type `CHAR(1)` and is `NOT NULL`;
- `birth_date` is the pet birth date. Has the datatype `DATE`;
- `color` is the pet color. Considering that this is text of variable length has a data type of `VARCHAR(30)`;
- `comment` any comments by employees on a pet. Considering that this is text of variable length has a data type of `VARCHAR(255)`;
- `client_id` is the client identification number. This is a `FOREIGN KEY` to `Client` table, so it has the same data type `INTEGER` and is `NOT NULL`.

Diagnosis:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `name` is the diagnosis name. Considering that this is text of variable length has a data type of `VARCHAR(255)` and is `NOT NULL`;
- `code` is the diagnosis code according to diagnosis reference book. Considering that this is text of variable length has a data type of `VARCHAR(10)` and is `NOT NULL`.

Department:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `name` is the department name. Considering that this is text of variable length has a data type of `VARCHAR(255)` and is `NOT NULL`.

Position:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `name` is the position name. Considering that this is text of variable length has a data type of `VARCHAR(255)` and is `NOT NULL`;
- `base_salary` is the base salary for a position. Has a data type of `NUMERIC` and must be greater than 0 `CHECK(base_salary > 0)`.

Employee:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `first_name` displays the employee first_name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`;
- `last_name` displays the employee last_name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`;
- `middle_name` displays the employee middle_name. Considering that this is text of variable length has a data type of `VARCHAR(50)` and **can be** `NULL`;
- `birth_date` is the employee birth date. Has the datatype `DATE`;
- `sex` is the employee sex. Can be only `m` or `f` using `CHECK(sex IN ('m', 'f'))` so has data type `CHAR(1)` and **can be** `NULL`;
- `passport_num` is the passport number. Considering different countries number style this is text of variable length and has a data type of `VARCHAR(30)`;
- `passport_date` is the passport issue date. Has the datatype `DATE`;
- `passport_issuer` is the passport issuing authority. Considering that this is text of variable length has a data type of `VARCHAR(255)`;
- `inn` is the taxpayer identification number. Considering a Russian legislation it has a data type of `VARCHAR(12)` but it may be different in other countries;
- `department_id` is the department identification number. This is a `FOREIGN KEY` to `Department` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `position_id` is the position identification number. This is a `FOREIGN KEY` to `Position` table, so it has the same data type `INTEGER` and is `NOT NULL`.

Education:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `employee_id` is the employee identification number. This is a `FOREIGN KEY` to `Employee` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `lvl` is the level of education received. Considering that this is text of variable length has a data type of `VARCHAR(50)` and is `NOT NULL`;
- `institution` is the name of educational institution. Considering that this is text of variable length has a data type of `VARCHAR(255)`;
- `specialization` is the name of specialization according to diploma. Considering that this is text of variable length has a data type of `VARCHAR(255)`;
- `year` is the year of graduation from educational institution. Has a data type of `INTEGER`.

Appointment:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `employee_id` is the employee identification number of the doctor. This is a `FOREIGN KEY` to `Employee` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `pet_id` is the pet identification number. This is a `FOREIGN KEY` to `Pet` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `diagnosis_id` is the diagnosis identification number. This is a `FOREIGN KEY` to `Diagnosis` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `appointment_dtime` is the appointment date and time. Has a data type of `DATETIME`, is `NOT NULL` and has a default value of current date `DEFAULT CURRENT_DATE`;
- `comment` is the doctor's report or comment. Considering that this is text of variable length has a data type of `VARCHAR(1000)`.

Service:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `name` is the name of service. Considering that this is text of variable length has a data type of `VARCHAR(255)` and is `NOT NULL`;
- `price` is the price of service. Has a data type of `NUMERIC`, is `NOT NULL` and must be greater than 0 `CHECK(price > 0)`;
- `price_date` is the date on which this price was set. Has a data type of `DATE` and is `NOT NULL`.

Services_List:
- `id` displays the identification number. Therefore, it has a data type of `INTEGER`. It is the `PRIMARY KEY` of the table. Added automatically using `AUTOINCREMENT`;
- `service_id` is the service identification number of the doctor. This is a `FOREIGN KEY` to `Service` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `appointment_id` is the appointment identification number of the doctor. This is a `FOREIGN KEY` to `Appointment` table, so it has the same data type `INTEGER` and is `NOT NULL`;
- `start_dtime` is the date when the provision of the service began. Has a data type of `DATETIME`, is `NOT NULL` and has a default value `DEFAULT CURRENT_DATE`.

### Relationships

![Entity Relationship Diagram](/project/er.png)

- Species - Pet:

One-to-many relationship. One pet can only have one species. There can be many pets of the same species.

- Client - Pet

One-to-many relationship. One client can have several pets. Pets should always have one owner (client).

- Pet - Appointment

One-to-many relationship. One pet can visit the clinic many times. Only one pet is included per appointment.

- Diagnosis - Appointment

One-to-many relationship. Only one diagnosis can be made during an appointment. Several appointments may have the same diagnosis.

- Department - Employee

One-to-many relationship. An employee works in only one department. There are many employees in one department.

- Position - Employee

One-to-many relationship. An employee works in only one position. There are many employees with the same position.

- Employee - Education

One-to-many relationship. An employee may have many educational backgrounds. Education has an employee who received it.

- Appointment - Services_List

One-to-many relationship. Several services may be provided during one appointment. The service was provided in one specific appointment.

- Service - Services_list

One-to-many relationship. The same service can be provided many times. The service provided must be one in the list of services.

> *Appointment - Services_List - Service is a representation of many-to-many relationship of Appointment - Service.*

## Optimizations

Indexes for foreign keys:
- `IX_Pet_species_id` is the index for foreign key `species_id` on `Pet` table.
- `IX_Pet_client_id` is the index for foreign key `client_id` on `Pet` table.
- `IX_Employee_department_id` is the index for foreign key `department_id` on `Employee` table.
- `IX_Employee_position_id` is the index for foreign key `position_id` on `Employee` table.
- `IX_Education_employee_id` is the index for foreign key `employee_id` on `Education` table.
- `IX_Appointment_employee_id` is the index for foreign key `employee_id` on `Appointment` table.
- `IX_Appointment_pet_id` is the index for foreign key `pet_id` on `Appointment` table.
- `IX_Appointment_diagnosis_id` is the index for foreign key `diagnosis_id` on `Appointment` table.
- `IX_Services_List_service_id` is the index for foreign key `service_id` on `Services_List` table.
- `IX_Services_List_appointment_id` is the index for foreign key `appointment_id` on `Services_List` table.

Indexes for separate columns:
- `IX_Education_lvl` is the index for `lvl` column on `Education` table.
- `IX_Position_name` is the index for `name` column on `Position` table.

Views:
- `last_month_appointments` represents appointments for the last month
- `current_month_appointments` represents appointments for the current month
- `ServicesN` represents all services with number of times provided
- `EmployeeN` represents all employees with number of appointments

## Limitations
- Some restrictions (such as gender, salary, price of service) are implemented using `CHECK` when creating tables.
- Checks for email correctness are implemented using triggers.
- Integrity constraints will need to be maintained within transactions.


- Within the database, there are no restrictions on which employee treats the pet; in this case, it may not even be a doctor.
- Multiple diagnoses cannot be made during one appointment. At this point, you will have to make another appointment record at the same time for this.
As a good solution to this, the Appointment - Diagnosis relationship can be redefined as many-to-many and implemented through a intermediate table.

- By the same analogy, there is a limitation that an employee cannot hold several positions at the same time (for example, be both the head of the surgery department and a surgeon).
The solution will be exactly the same: the Position - Employee relationship can be redefined as many-to-many and implemented through an intermediate table.
