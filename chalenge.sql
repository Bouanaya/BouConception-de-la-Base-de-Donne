
use clinic ;
-- challenge 1
INSERT INTO HOSPITAL_PATIENTS (first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES ('Alex', 'Johnson', 'Male', '1990-07-15', '1234567890', NULL, NULL);
-- challenge 2

SELECT * FROM hospital_departments;

-- challenge 3
SELECT * FROM hospital_patients ORDER BY date_of_birth ASC 

-- challenge 4

SELECT DISTINCT gender FROM hospital_patients 

-- challenge 5
SELECT * FROM hospital_doctors LIMIT 3 ;

-- challenge 6 
SELECT * FROM hospital_patients WHERE date_of_birth > '2000-01-01'

-- challenge 7
SELECT * FROM hospital_doctors WHERE specialization ='Cardiology' OR  specialization = 'Neurology'

-- challenge 8
SELECT * FROM hospital_admissions  WHERE admission_date BETWEEN '2024-12-1' AND '2024-12-7'

-- challenge 9 
-- SELECT * FROM hospital_patients ;
ALTER Table hospital_patients 
ADD catégorisant VARCHAR(50);
-- SELECT FLOOR(DATEDIFF(CURDATE(), date_of_birth) / 365.25) FROM hospital_patients;
SELECT * ,
CASE  
WHEN date_of_birth < '2000-01-01' THEN 'Senior'  
WHEN date_of_birth BETWEEN '2000-01-01' AND '2015-01-01' THEN 'Adulte'
ELSE 'Enfant'  
END AS catégorisant  
FROM hospital_patients;

-- challenge 10
-- SELECT * FROM hospital_departments;
SELECT COUNT(*) AS total_appointments FROM hospital_appointments;
-- challenge 11
-- SELECT * FROM hospital_doctors;
SELECT * FROM hospital_departments;

SELECT COUNT(doctor_id),departement_id AS n_doctor
FROM hospital_doctors
GROUP BY departement_id; 
-- challenge 12
SELECT * FROM hospital_patients ;

SELECT AVG(TIMESTAMPDIFF(YEAR ,date_of_birth,CURDATE())) AS moyen FROM  hospital_patients

-- challenge 13
SELECT appointment_date, appointment_time 
FROM HOSPITAL_APPOINTMENTS
ORDER BY appointment_date DESC, appointment_time DESC
LIMIT 1;

-- challenge 14 
SELECT admission_id FROM hospital_admissions;
SELECT room_id, COUNT(*) AS total_admissions
FROM HOSPITAL_ADMISSIONS
GROUP BY room_id;

-- challenge 15

SELECT * FROM hospital_patients WHERE email IS NULL;

-- challenge 16 

SELECT a.appointment_date, a.appointment_time, d.last_name AS doctor_name, p.first_name AS patient_first_name, p.last_name AS patient_last_name
FROM HOSPITAL_APPOINTMENTS a
JOIN HOSPITAL_DOCTORS d ON a.doctor_id = d.doctor_id
JOIN HOSPITAL_PATIENTS p ON a.patient_id = p.patient_id;

--challenge 17
DELETE FROM HOSPITAL_APPOINTMENTS
WHERE appointment_date < '2024-01-01';

--challenge 18 

UPDATE HOSPITAL_DEPARTMENTS
SET departement_name = 'Cancer Treatment'
WHERE departement_name = 'Oncology';

-- challenge 19
SELECT gender, COUNT(*) AS num_patients
FROM HOSPITAL_PATIENTS
GROUP BY gender
HAVING COUNT(*) >= 2;

-- challenge 20

CREATE VIEW active_admissions AS
SELECT * FROM HOSPITAL_ADMISSIONS
WHERE discharge_date IS NULL OR discharge_date > CURDATE();

