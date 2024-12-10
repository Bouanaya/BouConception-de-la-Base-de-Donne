USE Clinic;

-- Insert data into HOSPITAL_PATIENTS
INSERT INTO HOSPITAL_PATIENTS (first_name, last_name, gender, date_of_birth, phone_number, email, address) VALUES
('John', 'Doe', 'Male', '2010-01-01', '1234567890', 'john.doe@example.com', '123 Main St'),
('Jane', 'Smith', 'Female', '1999-02-02', '1234567891', 'jane.smith@example.com', '456 Oak St'),
('Alice', 'Johnson', 'Female', '1990-03-03', '1234567892', 'alice.johnson@example.com', '789 Pine St'),
('Bob', 'Brown', 'Male', '2009-04-04', '1234567893', 'bob.brown@example.com', '101 Maple St'),
('Charlie', 'Davis', 'Male', '2000-05-05', '1234567894', 'charlie.davis@example.com', '202 Birch St'),
('Eve', 'Miller', 'Female', '1995-06-06', '1234567895', 'eve.miller@example.com', '303 Cedar St'),
('Frank', 'Wilson', 'Male', '1982-07-07', '1234567896', 'frank.wilson@example.com', '404 Elm St'),
('Grace', 'Moore', 'Female', '2012-08-08', '1234567897', 'grace.moore@example.com', '505 Ash St'),
('Hank', 'Taylor', 'Male', '2000-09-09', '1234567898', 'hank.taylor@example.com', '606 Willow St'),
('Ivy', 'Anderson', 'Female', '1978-10-10', '1234567899', 'ivy.anderson@example.com', '707 Spruce St'),
('Jack', 'Thomas', 'Male', '2012-11-11', '1234567800', 'jack.thomas@example.com', '808 Fir St'),
('Karen', 'Jackson', 'Female', '1983-12-12', '1234567801', 'karen.jackson@example.com', '909 Poplar St');


-- Insert data into HOSPITAL_ROOMS
INSERT INTO HOSPITAL_ROOMS (room_number, rom_type, availability) VALUES
('101', 'General', 1),
('102', 'Private', 1),
('103', 'ICU', 1),
('104', 'General', 0),
('105', 'Private', 1),
('106', 'ICU', 0),
('107', 'General', 1),
('108', 'Private', 0),
('109', 'ICU', 1),
('110', 'General', 1),
('111', 'Private', 1),
('112', 'ICU', 1);

-- Insert data into HOSPITAL_DEPARTMENTS
INSERT INTO HOSPITAL_DEPARTMENTS (departement_name, location) VALUES
('Cardiology', 'Building A'),
('Neurology', 'Building B'),
('Orthopedics', 'Building C'),
('Pediatrics', 'Building D'),
('Oncology', 'Building E'),
('Radiology', 'Building F'),
('Emergency', 'Building G'),
('Surgery', 'Building H'),
('Dermatology', 'Building I'),
('Gastroenterology', 'Building J'),
('Urology', 'Building K'),
('Endocrinology', 'Building L');

-- Insert data into HOSPITAL_MEDICATIONS
INSERT INTO HOSPITAL_MEDICATIONS (midication_name, dosage) VALUES
('Aspirin', '500mg'),
('Ibuprofen', '200mg'),
('Paracetamol', '500mg'),
('Amoxicillin', '250mg'),
('Metformin', '500mg'),
('Atorvastatin', '10mg'),
('Omeprazole', '20mg'),
('Lisinopril', '10mg'),
('Amlodipine', '5mg'),
('Simvastatin', '20mg'),
('Clopidogrel', '75mg'),
('Hydrochlorothiazide', '25mg');

-- Insert data into HOSPITAL_DOCTORS
INSERT INTO HOSPITAL_DOCTORS (departement_id, last_name, specialization, phone_number, email) VALUES
(1, 'House', 'Cardiology', '2345678901', 'house@example.com'),
(2, 'Grey', 'Neurology', '2345678902', 'grey@example.com'),
(3, 'Hawkeye', 'Orthopedics', '2345678903', 'hawkeye@example.com'),
(4, 'Cuddy', 'Pediatrics', '2345678904', 'cuddy@example.com'),
(5, 'Wilson', 'Oncology', '2345678905', 'wilson@example.com'),
(6, 'Bailey', 'Radiology', '2345678906', 'bailey@example.com'),
(7, 'Shepherd', 'Emergency', '2345678907', 'shepherd@example.com'),
(8, 'Burke', 'Surgery', '2345678908', 'burke@example.com'),
(9, 'Yang', 'Dermatology', '2345678909', 'yang@example.com'),
(10, 'Torres', 'Gastroenterology', '2345678910', 'torres@example.com'),
(11, 'Robbins', 'Urology', '2345678911', 'robbins@example.com'),
(12, 'Stevens', 'Endocrinology', '2345678912', 'stevens@example.com');

-- Insert data into HOSPITAL_ADMISSIONS
INSERT INTO HOSPITAL_ADMISSIONS (patient_id, room_id, admission_date, discharge_date) VALUES
(1, 1, '2024-01-01', '2024-01-10'),
(2, 2, '2024-01-02', '2024-01-11'),
(3, 3, '2024-01-03', '2024-01-12'),
(4, 4, '2024-01-04', '2024-01-13'),
(5, 5, '2024-01-05', '2024-01-14'),
(6, 6, '2024-01-06', '2024-01-15'),
(7, 7, '2024-01-07', '2024-01-16'),
(8, 8, '2024-01-08', '2024-01-17'),
(9, 9, '2024-01-09', '2024-01-18'),
(10, 10, '2024-01-10', '2024-01-19'),
(11, 11, '2024-01-11', '2024-01-20'),
(12, 12, '2024-01-12', '2024-01-21');

-- Insert data into HOSPITAL_PRESCRIPTIONS
INSERT INTO HOSPITAL_PERSCRIPTION (patient_id, doctor_id, midication_id, perscription_date) VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(3, 3, 3, '2024-01-03'),
(4, 4, 4, '2024-01-04'),
(5, 5, 5, '2024-01-05'),
(6, 6, 6, '2024-01-06'),
(7, 7, 7, '2024-01-07'),
(8, 8, 8, '2024-01-08'),
(9, 9, 9, '2024-01-09'),
(10, 10, 10, '2024-01-10'),
(11, 11, 11, '2024-01-11'),
(12, 12, 12, '2024-01-12');

-- Insert data into HOSPITAL_STAFF
INSERT INTO HOSPITAL_STAF (departement_id, first_name, last_name, job_title, phone_number, email) VALUES
(1, 'James', 'Smith', 'Nurse', '3456789012', 'james.smith@example.com'),
(2, 'Patricia', 'Johnson', 'Technician', '3456789013', 'patricia.johnson@example.com'),
(3, 'Michael', 'Williams', 'Therapist', '3456789014', 'michael.williams@example.com'),
(4, 'Linda', 'Jones', 'Administrator', '3456789015', 'linda.jones@example.com'),
(5, 'Robert', 'Brown', 'Cleaner', '3456789016', 'robert.brown@example.com'),
(6, 'Barbara', 'Davis', 'Receptionist', '3456789017', 'barbara.davis@example.com'),
(7, 'William', 'Miller', 'Security', '3456789018', 'william.miller@example.com'),
(8, 'Elizabeth', 'Wilson', 'Pharmacist', '3456789019', 'elizabeth.wilson@example.com'),
(9, 'David', 'Moore', 'Driver', '3456789020', 'david.moore@example.com'),
(10, 'Susan', 'Taylor', 'Cook', '3456789021', 'susan.taylor@example.com'),
(11, 'Joseph', 'Anderson', 'Gardener', '3456789022', 'joseph.anderson@example.com'),
(12, 'Sarah', 'Thomas', 'Electrician', '3456789023', 'sarah.thomas@example.com');

-- Insert data into HOSPITAL_APPOINTMENTS
INSERT INTO HOSPITAL_APPOINTMENTS (doctor_id, patient_id, appointment_date, appointment_time) VALUES
(1, 1, '2024-01-01', '09:00:00'),
(2, 2, '2024-01-02', '10:00:00'),
(3, 3, '2024-01-03', '11:00:00'),
(4, 4, '2024-01-04', '12:00:00'),
(5, 5, '2024-01-05', '13:00:00'),
(6, 6, '2024-01-06', '14:00:00'),
(7, 7, '2024-01-07', '15:00:00'),
(8, 8, '2024-01-08', '16:00:00'),
(9, 9, '2024-01-09', '17:00:00'),
(10, 10, '2024-01-10', '18:00:00'),
(11, 11, '2024-01-11', '19:00:00'),
(12, 12, '2024-01-12', '20:00:00');
