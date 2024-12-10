
use clinic ;
-- chalange 1

SELECT * FROM hospital_departments

-- chalange 2
SELECT * FROM hospital_patients ORDER BY date_of_birth DESC 

-- chalange 4

SELECT DISTINCT gender FROM hospital_patients 

-- chalange 5
SELECT * FROM hospital_doctors LIMIT 3 ;

-- chalange 6 
SELECT * FROM hospital_patients WHERE date_of_birth > '2000-1-1'

-- chalange 7
SELECT * FROM hospital_doctors WHERE specialization ='Cardiology' OR   specialization = 'Neurology'

-- chalange 8
SELECT * FROM hospital_admissions  WHERE admission_date BETWEEN '2024-1-1' AND '2024-1-7'

-- chalange 9 
SELECT * FROM hospital_patients ;

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

-- chalange 10
-- SELECT * FROM hospital_departments;
SELECT count(*) FROM hospital_appointments
-- chalange 11
SELECT * FROM hospital_doctors;
SELECT * FROM hospital_departments

SELECT COUNT(doctor_id),departement_id
FROM hospital_doctors
GROUP BY departement_id; 
-- chalange 12
SELECT * FROM hospital_patients ;

SELECT AVG(TIMESTAMPDIFF(YEAR ,date_of_birth,CURDATE())) FROM  hospital_patients


