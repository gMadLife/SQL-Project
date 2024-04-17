-- Almost all data randomly generated --

-- Clients inserts

INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Corey','Hilton','Carynn ','447 Elinore Grove, New Rosalee, Illinois - 20923, Iceland','1-750-806-3518','Mariano.Batz2@yahoo.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Lily-Rose','Hudson','Cameron ','823 Mraz Crescent, New Giovanni, Wyoming - 97855, Somalia','1-829-259-0239','Wilhelmine26@hotmail.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Leyton','Hodges','Caelan ','3849 Woodland Close, Mount Pleasant, Rhode Island - 09944, Rwanda','1-922-493-2747','Angelica.Wolf@hotmail.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Oliwier','Bullock','Carmen ','29025 E Grand Avenue, Blaiseshire, Ohio - 56124, Yemen','1-840-706-6375','Larue87@gmail.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Bessie','Carter','Colleen ','942 Demetrius Brook, New Sidneybury, Texas - 79993, Reunion','1-386-312-8608','Davon7@yahoo.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Cassie','Ferrell','Simcha ','962 Vern Shores, Jakubowskiville, Arizona - 11788, Niue','1-966-493-2749','Toy_Marquardt2@hotmail.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Kayla','Reilly','Mckenna ','210 Green Lane, Howefield, Kansas - 69092, Croatia','1-733-601-8025','Parker97@hotmail.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Kallum','Norris','Claudia ','608 Lucie Path, Hesselburgh, North Carolina - 15422, Czechia','1-700-980-0613','Bernadine12@yahoo.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Honey','Aguirre','Nicola ','12412 Predovic Mall, West Amiya, North Dakota - 58371, Madagascar','1-985-330-8297','Macie.Grimes@yahoo.com');
INSERT INTO Client (first_name, last_name, middle_name, address, phone, email) VALUES ('Ehsan','Johnston','America ','559 David Gardens, Spencerburgh, Massachusetts - 55725, Cayman Islands','1-841-820-5958','Berenice.Hermann@gmail.com');

-- Species inserts

INSERT INTO Species (name) VALUES ('cat');
INSERT INTO Species (name) VALUES ('dog');
INSERT INTO Species (name) VALUES ('parrot');
INSERT INTO Species (name) VALUES ('turtle');
INSERT INTO Species (name) VALUES ('goldfish');
INSERT INTO Species (name) VALUES ('rabbit');
INSERT INTO Species (name) VALUES ('snake');
INSERT INTO Species (name) VALUES ('mouse');
INSERT INTO Species (name) VALUES ('hedgehog');
INSERT INTO Species (name) VALUES ('hamster');

-- Pet inserts

INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Sheeba','5','goldfish1','m','2020-11-13','Pearl copper','scary','2');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Sunny','8','House mouse','m','2021-11-10','Olive drab','NULL','3');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Sindri','3','Cacatuidae','f','2022-03-06','Rose','angry','8');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Toulouse-Lautreclucy','9','Amur hedgehog','f','2022-01-23','Light green','NULL','10');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Dazlle','2','Shiba Inu','m','2021-02-02','Sepia brown','NULL','8');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Justice','5','goldfish2','m','2022-07-20','Grey blue','NULL','9');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('K-Pop','6','Flemish Giant rabbit','m','2020-12-10','Pearl opal green','NULL','10');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Hyphen','6','Flemish Giant rabbit','f','2019-12-31','Ocean blue','NULL','10');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Ajay','9','Amur hedgehog','f','2019-04-13','Papyrus white','NULL','6');
INSERT INTO Pet (name, species_id, breed, sex, birth_date, color, comment, client_id) VALUES ('Paijah','1','British Shorthair','f','2022-08-13','Pastel blue','NULL','2');

-- Diagnosis inserts

INSERT INTO Diagnosis (name, code) VALUES ('Asthma (Pediatric)','A1');
INSERT INTO Diagnosis (name, code) VALUES ('Headache, Migraine','A3');
INSERT INTO Diagnosis (name, code) VALUES ('Depression','B2');
INSERT INTO Diagnosis (name, code) VALUES ('Food Allergy','C4');
INSERT INTO Diagnosis (name, code) VALUES ('Speech Defects','E2');
INSERT INTO Diagnosis (name, code) VALUES ('Autism Spectrum Disorder','E12');
INSERT INTO Diagnosis (name, code) VALUES ('Hearing Loss','D42');
INSERT INTO Diagnosis (name, code) VALUES ('Cerebral Palsy','E21');
INSERT INTO Diagnosis (name, code) VALUES ('General inspection','C3');

-- Department inserts

INSERT INTO Department (name) VALUES ('HR');
INSERT INTO Department (name) VALUES ('Surgery');
INSERT INTO Department (name) VALUES ('Diagnosis');
INSERT INTO Department (name) VALUES ('Oncology');
INSERT INTO Department (name) VALUES ('Neurology');

-- Position inserts

INSERT INTO Position (name, base_salary) VALUES ('HR Director','141945');
INSERT INTO Position (name, base_salary) VALUES ('Head of surgery','176990');
INSERT INTO Position (name, base_salary) VALUES ('Head of diagnosis','153930');
INSERT INTO Position (name, base_salary) VALUES ('Head of oncology','148228');
INSERT INTO Position (name, base_salary) VALUES ('Head of neurology','182739');
INSERT INTO Position (name, base_salary) VALUES ('Nurse','126706');
INSERT INTO Position (name, base_salary) VALUES ('Surgeon','164027');
INSERT INTO Position (name, base_salary) VALUES ('Neurologist','192250');
INSERT INTO Position (name, base_salary) VALUES ('Oncologist','103358');
INSERT INTO Position (name, base_salary) VALUES ('Diagnostician','197899');

-- Employee inserts

INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Dillan','Barton','Denver','2009-01-26','m','4538 370436','2017-12-09','Ministry of Internal Affairs','187017196206','1','1');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Simon','Blankenship','Naveen','2009-07-25','f','4025 253772','2019-10-20','Ministry of Internal Affairs','700236329003','2','2');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Johnny','Hughes','Matteo','1979-10-30','m','4242 822448','2017-11-02','Ministry of Internal Affairs','352228066250','3','3');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Diana','Carter','Brendon','1999-11-14','f','4580 355790','2017-09-29','Ministry of Internal Affairs','119949549880','4','4');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Katie','Alvarez','Rosalind','1985-06-23','m','4536 994757','2024-02-13','Ministry of Internal Affairs','586842262250','5','5');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Shiloh','Phelps','Zachary','1985-05-17','f','4324 517042','2015-12-21','Ministry of Internal Affairs','709243243226','5','6');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Kaitlynn','Rose','Vanessa','2006-01-24','m','4284 290911','2014-11-05','Ministry of Internal Affairs','318582353844','2','6');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Zara','Massey','Ray','1987-05-16','f','4462 846156','2014-07-08','Ministry of Internal Affairs','120261714100','2','7');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Kaleigh','Rangel','Trey','1987-11-19','m','4427 410998','2014-07-08','Ministry of Internal Affairs','488034184120','5','8');
INSERT INTO Employee (first_name, last_name, middle_name, birth_date, sex, passport_num, passport_date, passport_issuer, inn, department_id, position_id) VALUES ('Addison','Miles','David','1995-08-08','f','4898 578929','2021-04-24','Ministry of Internal Affairs','467813607097','2','7');

-- Education inserts

INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('1','higher education','Pine Hills University','HR Manager','2009');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('2','higher education','Village Institute','Neurosurgery','2001');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('3','higher education','Pacific Grove High','Infectious disease','2004');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('4','higher education','Hillview University','Oncology','2006');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('5','higher education','Mammoth High','Neurology','2005');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('6','secondary','Granite Hills College','Clinical Nurse Specialist','2016');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('7','secondary','Westwood College','Critical Care Nurse','2015');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('8','higher education','Golden Valley University','General Surgery','2015');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('9','higher education','Elk Valley High','Neurology','2011');
INSERT INTO Education (employee_id, lvl, institution, specialization, year) VALUES ('10','higher education','Patriot High','General Surgery','2014');

-- Appointment inserts

INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('1','10','5','2024-03-15 9:30:00','some medically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('4','2','8','2024-03-19 9:35:00','ome medically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('8','10','7','2024-03-26 10:25:00','me medically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('6','3','2','2024-01-11 10:30:00','e medically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('5','3','6','2024-01-21 10:45:00',' medically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('8','4','5','2024-01-16 10:55:00','medically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('7','9','3','2024-02-15 12:10:00','edically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('10','6','1','2024-03-15 12:30:00','dically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('9','1','4','2024-03-28 13:15:00','ically important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('2','8','5','2024-01-23 13:20:00','cally important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('9','7','4','2024-03-17 14:05:00','ally important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('7','8','7','2024-02-07 14:30:00','lly important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('10','10','4','2024-02-14 14:40:00','ly important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('7','9','5','2024-03-17 15:20:00','y important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('6','5','2','2024-02-19 15:40:00',' important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('8','7','4','2024-03-11 16:00:00','important information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('5','10','2','2024-03-08 16:15:00','mportant information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('2','7','4','2024-02-21 16:20:00','portant information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('10','6','2','2024-01-15 17:40:00','ortant information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('1','1','3','2024-02-14 18:05:00','rtant information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('9','3','7','2024-02-09 18:10:00','tant information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('5','7','6','2024-02-17 18:15:00','ant information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('4','5','7','2024-01-22 18:25:00','nt information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('6','5','4','2024-03-24 18:55:00','t information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('4','3','8','2024-01-28 19:15:00',' information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('6','6','7','2024-03-25 19:40:00','information');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('9','8','2','2024-02-27 19:45:00','nformation');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('9','10','9','2024-02-24 19:55:00','formation');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('4','5','1','2024-02-10 20:00:00','ormation');
INSERT INTO Appointment (employee_id, pet_id, diagnosis_id, appointment_dtime, comment) VALUES ('10','9','5','2024-02-23 20:20:00','rmation');

-- Service inserts

INSERT INTO Service (name, price, price_date) VALUES ('Initial appointment','10.00','2024-03-17');
INSERT INTO Service (name, price, price_date) VALUES ('Repeated appointment','5.00','2024-02-09');
INSERT INTO Service (name, price, price_date) VALUES ('Submission of analysis','5.00','2024-01-25');
INSERT INTO Service (name, price, price_date) VALUES ('Claw trimming','4.50','2024-03-02');
INSERT INTO Service (name, price, price_date) VALUES ('Wound treatment','7.50','2024-01-07');
INSERT INTO Service (name, price, price_date) VALUES ('Local anesthesia','6.50','2024-03-18');
INSERT INTO Service (name, price, price_date) VALUES ('Intramuscular injection','3.00','2024-01-29');
INSERT INTO Service (name, price, price_date) VALUES ('Ultrasound of the abdominal organs','23.00','2024-02-08');
INSERT INTO Service (name, price, price_date) VALUES ('Castration','70.00','2024-01-27');
INSERT INTO Service (name, price, price_date) VALUES ('C-section','110.00','2024-01-18');

-- Services_List inserts

INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','1','2024-03-15 9:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','2','2024-03-19 9:35:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('6','3','2024-03-26 10:25:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('6','4','2024-01-11 10:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('10','5','2024-01-21 10:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('3','6','2024-01-16 10:55:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','7','2024-02-15 12:10:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('10','8','2024-03-15 12:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','9','2024-03-28 13:15:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','10','2024-01-23 13:20:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('1','11','2024-03-17 14:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','12','2024-02-07 14:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','13','2024-02-14 14:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','14','2024-03-17 15:20:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','15','2024-02-19 15:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('1','16','2024-03-11 16:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','17','2024-03-08 16:15:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','18','2024-02-21 16:20:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','19','2024-01-15 17:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','20','2024-02-14 18:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','21','2024-02-09 18:10:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','22','2024-02-17 18:15:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','23','2024-01-22 18:25:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('9','24','2024-03-24 18:55:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','25','2024-01-28 19:15:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','26','2024-03-25 19:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','27','2024-02-27 19:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','28','2024-02-24 19:55:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('3','29','2024-02-10 20:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','30','2024-02-23 20:20:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','8','2024-03-15 12:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('3','13','2024-02-14 14:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','17','2024-03-08 16:15:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','26','2024-03-25 19:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','27','2024-02-27 19:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('3','5','2024-01-21 10:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('6','8','2024-03-15 12:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','17','2024-03-08 16:15:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','12','2024-02-07 14:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','2','2024-03-19 9:35:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('6','26','2024-03-25 19:40:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('10','29','2024-02-10 20:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','24','2024-03-24 18:55:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','4','2024-01-11 10:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','30','2024-02-23 20:20:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','5','2024-01-21 10:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','11','2024-03-17 14:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('4','27','2024-02-27 19:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('2','8','2024-03-15 12:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','7','2024-02-15 12:10:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','3','2024-03-26 10:25:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('1','2','2024-03-19 9:35:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('1','5','2024-01-21 10:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('6','24','2024-03-24 18:55:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','7','2024-02-15 12:10:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('8','1','2024-03-15 9:30:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','16','2024-03-11 16:05:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('5','27','2024-02-27 19:45:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('7','2','2024-03-19 9:35:05');
INSERT INTO Services_List (service_id, appointment_id, start_dtime) VALUES ('9','29','2024-02-10 20:05:05');
