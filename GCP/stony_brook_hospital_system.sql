CREATE DATABASE stonybrookhospital;

USE stonybrookhospital;

CREATE TABLE physician (
    physician_id INT PRIMARY KEY AUTO_INCREMENT,
    physician_name VARCHAR(50) NOT NULL,
    med_specialty VARCHAR(50) DEFAULT 'General Practice'
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    physician_id INT,
    FOREIGN KEY (physician_id) REFERENCES physician(physician_id)
);

CREATE TABLE demographics (
    demographic_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    home_address TEXT,
    phone_number VARCHAR(15),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE hospitalappointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    physician_id INT,
    appointment_date DATETIME,
    appointment_chief_complaint VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (physician_id) REFERENCES physician(physician_id)
);

CREATE TABLE labtests (
    lab_test_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    physician_id INT,
    test_name VARCHAR(50),
    test_date DATE,
    test_results TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (physician_id) REFERENCES physician(physician_id)
); show databases;

SELECT *
FROM patients;

show tables;