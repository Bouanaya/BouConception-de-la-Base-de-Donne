DROP DATABASE Clinic IF EXISTS
CREATE DATABASE Clinic;
USE Clinic;
CREATE Table HOSPITAL_PATIENTS(
    patient_id int(11) AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male','Female'),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255));

CREATE Table HOSPITAL_ROOMS(
    room_id int(11) AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10),
    rom_type ENUM('General', 'Private','ICU'),
    availability TINYINT(1));

CREATE Table HOSPITAL_DEPARTMENTS(
    departement_id int(11) AUTO_INCREMENT PRIMARY KEY,
    departement_name VARCHAR(50),
    location VARCHAR(100));

CREATE TABLE HOSPITAL_MEDICATIONS (
  midication_id int(11) AUTO_INCREMENT PRIMARY KEY,
  midication_name VARCHAR(100),
  dosage VARCHAR(50));

-- administration

CREATE TABLE HOSPITAL_ADMISSIONS(
  admission_id int(11) AUTO_INCREMENT PRIMARY KEY,
  patient_id int(11),
  room_id int(11),
  admission_date DATE,
  discharge_date DATE,
  FOREIGN KEY (patient_id) REFERENCES HOSPITAL_PATIENTS(patient_id),
  FOREIGN KEY (room_id) REFERENCES HOSPITAL_ROOMS(room_id));


-- prescription
CREATE TABLE HOSPITAL_PERSCRIPTION(
  perscription_id int(11) AUTO_INCREMENT PRIMARY KEY,
  patient_id int(11),
  doctor_id int(11),
  midication_id int(11),
  perscription_date DATE,
  FOREIGN KEY (patient_id) REFERENCES HOSPITAL_PATIENTS(patient_id),
  FOREIGN KEY (midication_id) REFERENCES HOSPITAL_MEDICATIONS(midication_id),
  FOREIGN KEY (doctor_id) REFERENCES HOSPITAL_DOCTORS(doctor_id));

-- doctors--

CREATE TABLE HOSPITAL_DOCTORS(
  doctor_id int(11) AUTO_INCREMENT PRIMARY KEY,
  departement_id int(11),
  last_name VARCHAR(50),
  specialization VARCHAR(50),
  phone_number VARCHAR(15),
  email VARCHAR(100),
  FOREIGN KEY (departement_id) REFERENCES HOSPITAL_DEPARTMENTS(departement_id));

-- staf

CREATE TABLE HOSPITAL_STAF(
  staf_id int(11) AUTO_INCREMENT PRIMARY KEY,
  departement_id int(11),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  job_title VARCHAR(50),
  phone_number VARCHAR(15),
  email VARCHAR(100),
  FOREIGN KEY (departement_id) REFERENCES HOSPITAL_DEPARTMENTS(departement_id)
);


-- appointments

CREATE TABLE HOSPITAL_APPOINTMENTS(
  appointment_id int(11) AUTO_INCREMENT PRIMARY KEY,
  doctor_id int(11),
  patient_id int(11),
  appointment_date date,
  appointment_time time,
  FOREIGN KEY (patient_id) REFERENCES HOSPITAL_PATIENTS(patient_id),
  FOREIGN KEY (doctor_id) REFERENCES HOSPITAL_DOCTORS(doctor_id)
);