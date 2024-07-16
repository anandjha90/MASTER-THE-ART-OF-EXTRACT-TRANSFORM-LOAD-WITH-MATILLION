--  create database
CREATE DATABASE HOSPITAL;
USE HOSPITAL;
-- create table
CREATE TABLE RN_HOSPITAL_TABLE 
(
PATIENT_ID int DEFAULT NULL,
PATIENT_NAME varchar(30) DEFAULT NULL,
BILLING_ADDRESS varchar(50) DEFAULT NULL,
DIAGNOSIS varchar(20) DEFAULT NULL,
TREATMENT varchar(50) DEFAULT NULL,
COST float DEFAULT NULL
);

-- insert records
insert into RN_HOSPITAL_TABLE
(patient_id, patient_name, billing_address, diagnosis, treatment, cost)
values
(1, 'Mark Knopfler', '1982 Telegraph Road', 'Industrial Disease', 'a week of peace and quiet', 2000.00),
(2, 'Guido van Rossum', '37 Florida St.', 'python bite', 'anti-venom', 70000.00),
(3, 'Devin', '197 Brigade Road Texas', 'dog bite', 'Rabies Injection', 40000.00),
(4, 'Mark', '38 denver St Chicago', 'Dengue', 'Malaria', 50000.00),
(5, 'Peter', '78 New Yor City', 'Accident', 'Operation', 340000.00);

select * from RN_HOSPITAL_TABLE;