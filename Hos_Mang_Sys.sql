CREATE DATABASE Hospital_Management_System;
USE Hospital_Management_System;
drop database Hospital_Management_System;
CREATE TABLE Doctor(
doctor_id bigint PRIMARY KEY,
f_name varchar(50) NOT NULL,
m_name varchar(50),
l_name varchar(50),
specialists varchar(50) UNIQUE,
fee DOUBLE);

DESC Doctor;

CREATE TABLE Patient(
Patient_id BIGINT PRIMARY KEY,
Name_P VARCHAR(50) NOT NULL,
Doctor_attended VARCHAR(50),
Address VARCHAR(100) ); 

DESC Patient;

CREATE TABLE Payment(
Payment_id BIGINT PRIMARY KEY,
Doctor_fee DOUBLE ,
Medicine_price DOUBLE,
Patient_id BIGINT ,
FOREIGN KEY (Patient_id) REFERENCES Patient(Patient_id) );

DESC Payment;

CREATE TABLE Medicine(
Quantity INT,
Price DOUBLE,
Patient_id BIGINT ,
FOREIGN KEY (Patient_id) REFERENCES Patient(Patient_id) );

DESC Medicine;

CREATE TABLE Treats(
doctor_id BIGINT,
Patient_id BIGINT,
Date DATE ,
PRIMARY KEY (doctor_id, Patient_id),
FOREIGN KEY (Patient_id) REFERENCES Patient(Patient_id),
FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id));

DESC Treats;

CREATE TABLE P_phone_no(
Owner_id BIGINT,
Name_P VARCHAR(50),
Phone_no1 BIGINT,
Phone_no2 BIGINT,
PRIMARY KEY (Owner_id, Phone_no1),
FOREIGN KEY (Owner_id) REFERENCES Patient(Patient_id));

DESC P_phone_no;

CREATE TABLE D_phone_no(
OwnerD_id BIGINT,
Name_D VARCHAR(50),
Phone_no BIGINT,
PRIMARY KEY (OwnerD_id, Phone_no),
FOREIGN KEY (OwnerD_id) REFERENCES Doctor(doctor_id));

DESC D_phone_no;

SHOW DATABASES;
SHOW TABLES;

INSERT INTO Doctor(doctor_id, f_name, m_name, l_name, specialists, fee)
VALUES
(101, 'Dr. Sushmita', 'Ray', 'Burman', 'Cardiologist', 200.00),
(102, 'Dr. Emily', 'Johnson', 'Darson', 'Dermatologist', 450.00),
(103, 'Dr. Abhinav', ' ', 'Chaurasia', 'Orthopedic Surgeon', 200.00),
(104, 'Dr. Maria', 'Roy', 'Kapoor', 'Pediatrician', 300.00),
(105, 'Dr. Rajat', 'Sen', 'Gupta', 'Psychiatrist', 300.00),
(106, 'Dr. Pooja', 'Goyal', ' ', 'Oncologist', 350.00),
(107, 'Dr. Kashish', 'R.', 'Bhasin', 'Neurologist', 300.00),
(108, 'Dr. Ayush', 'Kumar', 'Rajput', 'Urologist', 250.00),
(109, 'Dr. Ritu', 'Kumar', 'Bindal', 'Gynaecologist', 300.00),
(110, 'Dr. Garima', 'Shekhar', 'Parihar', 'Endocrinologist', 350.00),
(111, 'Dr. Matthew', 'Ruth', 'Scott', 'Ophthalmologist', 200.00),
(112, 'Dr. Sejal', 'Ray', 'Kumar', 'ENT Specialist', 450.00),
(113, 'Dr. Tuhina', 'Saxena', ' ', 'Pulmologist', 350.00),
(114, 'Dr. Samantha', 'White', 'Ahuja', 'Plastic Surgeon', 450.00),
(115, 'Dr. Monica', 'Anand', 'Agarwal', 'Radiologist', 300.00),
(116, 'Dr. Mihir', 'Joshi', ' ', 'Psychologist', 350.00);

SHOW DATABASES;
USE Hospital_Management_System;
SHOW TABLES;

INSERT INTO Doctor(doctor_id, f_name, m_name, l_name, specialists, fee)
VALUES
(101, 'Dr. Sushmita', 'Ray', 'Burman', 'Cardiologist', 200.00),
(102, 'Dr. Emily', 'Johnson', 'Darson', 'Dermatologist', 450.00),
(103, 'Dr. Abhinav', ' ', 'Chaurasia', 'Orthopedic Surgeon', 200.00),
(104, 'Dr. Maria', 'Roy', 'Kapoor', 'Pediatrician', 300.00),
(105, 'Dr. Rajat', 'Sen', 'Gupta', 'Psychiatrist', 300.00),
(106, 'Dr. Pooja', 'Goyal', ' ', 'Oncologist', 350.00),
(107, 'Dr. Kashish', 'R.', 'Bhasin', 'Neurologist', 300.00),
(108, 'Dr. Ayush', 'Kumar', 'Rajput', 'Urologist', 250.00),
(109, 'Dr. Ritu', 'Kumar', 'Bindal', 'Gynaecologist', 300.00),
(110, 'Dr. Garima', 'Shekhar', 'Parihar', 'Endocrinologist', 350.00),
(111, 'Dr. Matthew', 'Ruth', 'Scott', 'Ophthalmologist', 200.00),
(112, 'Dr. Sejal', 'Ray', 'Kumar', 'ENT Specialist', 450.00),
(113, 'Dr. Tuhina', 'Saxena', ' ', 'Pulmologist', 350.00),
(114, 'Dr. Samantha', 'White', 'Ahuja', 'Plastic Surgeon', 450.00),
(115, 'Dr. Monica', 'Anand', 'Agarwal', 'Radiologist', 300.00),
(116, 'Dr. Mihir', 'Joshi', ' ', 'Psychologist', 350.00);

SELECT * 
FROM Doctor;

INSERT INTO  Patient(Patient_id, Name_P, Doctor_attended, Address)
VALUES
(901, 'Nikhil Sen', 'Dr. Mihir Joshi', '102/A, Gandhi Nagar, Jaipur'),
(902, 'Ajit Bannerjee', 'Dr. Sushmita Ray Burman', '7/2 Krishna Apartment, Mumbai, Maharashtra'),
(903, 'Abhinav Ahuja', 'Dr. Ayush Kumar Rajput', '22 Patel Street, Chennai, Tamil Nadu'),
(904, 'Piyush Bedi', 'Dr Pooja Goyal', '3B Green Park, Kolkata, West Bengal'),
(905, 'Amaira Bajwa', 'Dr. Ritu Kumar Bindal', '10, Gokul Vihar, Bangaluru, Karnataka'),
(906, 'Sumesh Raina', 'Dr. Pooja Goyal', '5/1, Vijay Enclave, Hyderabad, Telengana'),
(907, 'Gita Bhatt', 'Dr Sejal Ray Kumar', '8C, Tulsi Nagar, Pune, Maharashtra'),
(908, 'Reema Banerjee', 'Dr. Maria Roy Kapoor', '2/3 Shanti Niketan, Ahmedabad, Gujarat'),
(909, 'Sujit Maheshwari', 'Dr. Rajat Sen Gupta', '9 Ganesh Punam, Patna, Bihar'),
(910, 'Gurpreet Kaur', 'Dr, Rajat Sen Gupta', '16 Indira Colony, Lucknow, Uttar Pradesh'),
(911, 'Hiya Nagpal', 'Dr. Emily Johnson', '11A, Shakti Nagar, Bhopal, Madhya Pradesh'),
(912, 'Anamika Jain', 'Dr, Ayush Kumar Rajput', '6/A Vivekananda Street, Kerala'),
(913, 'Yuvika Kapoor', 'Dr, Kashish R. Bhasin', '18, Rajiv Nagar, Guwahati, Assam');

SELECT * 
FROM Patient;

USE Hospital_Management_System;
SHOW TABLES;

INSERT INTO Payment(Payment_id, Doctor_fee, Medicine_price, Patient_id)
VALUES
(401, 200.00, 50.00, 901),
(402, 250.00, 60.00, 902),
(403, 200.00, 40.00, 903),
(404, 400.00, 15.00, 904),
(405, 350.00, 55.75, 905),
(406, 400.00, 70.00, 906),
(407, 350.00, 65.00, 907),
(408, 300.00, 50.25, 908),
(409, 200.00, 35.00, 909),
(410, 450.00, 20.00, 910),
(411, 250.00, 85.00, 911),
(412, 300.00, 20.00, 912),
(413, 400.00, 80.00, 913);

SELECT * 
FROM Payment;

INSERT INTO Medicine(Quantity, Price, Patient_id)
VALUES
(2, 100.00, 901),
(3, 150.75, 902),
(1, 200.00, 903),
(4, 340.00, 904),
(2, 100.00, 905),
(6, 240.00, 906),
(2, 40.00, 907),
(5, 278.75, 908),
(8, 280.00, 909),
(5, 400.00, 910),
(3, 120.00, 911),
(4, 60.00, 912),
(5, 278.75, 913);

SELECT * 
FROM Medicine;

USE Hospital_Management_System;
SHOW TABLES;

INSERT INTO Treats(doctor_id, Patient_id, Date)
VALUES
(116, 901, '2024-01-01'),
(101, 902, '2024-01-02'),
(108, 903, '2024-01-02'),
(106, 904, '2024-01-03'),
(109, 905, '2024-01-03'),
(106, 906, '2024-01-03'),
(112, 907, '2024-01-04'),
(104, 908, '2024-01-05'),
(113, 909, '2024-01-06'),
(105, 910, '2024-01-01'),
(102, 911, '2024-01-02'),
(108, 912, '2024-01-03'),
(107, 913, '2024-01-04');

SELECT * 
FROM Treats;

INSERT INTO P_phone_no (Owner_id, Name_P, Phone_no1, Phone_no2)
VALUES
(901, 'Nikhil Sen', 9693323451, null),
(902, 'Ajit Bannerjee', 9834789238, 9873028546),
(903, 'Abhinav Ahuja', 9546385472, 8762556374),
(904, 'Piyush Bedi', 8856220384, null),
(905, 'Amaira Bajwa', 9882036485, 9962435567),
(906, 'Sumesh Raina', 8776430029, 7720364498),
(907, 'Gita Bhatt', 6573884758, null ),
(908, 'Reema Banerjee', 9822034856, null),
(909, 'Sujit Maheshwari', 9087364995, null),
(910, 'Gurpreet Kaur', 9330067638, null),
(911, 'Hiya Nagpal', 9220456809, 7394785093),
(912, 'Anamika Jain', 9832205674, 7044089847),
(913, 'Yuvika Kapoor', 9088764563, null);

SELECT * 
FROM P_phone_no;

INSERT INTO D_phone_no(OwnerD_id, Name_D, Phone_no)
VALUES
(101, 'Dr. Sushmita Ray Burman',8700356477),
(102, 'Dr. Emily Johnson Darson', 8637450987),
(103, 'Dr. Abhinav Chaurasia', 9023156789),
(104, 'Dr. Maria Roy Kapoor', 7304957689),
(105, 'Dr. Rajat Sen Gupta', 9233490859),
(106, 'Dr. Pooja Goyal', 9223049586),
(107, 'Dr. Kashish R. Bhasin', 6758493023),
(108, 'Dr. Ayush Kumar Rajput', 9834576893),
(109, 'Dr. Ritu Kumar Bindal', 9485038495),
(110, 'Dr. Garima Shekhar Parihar', 9083345738),
(111, 'Dr. Matthew Ruth Scott', 7263908456),
(112, 'Dr. Sejal Ray Kumar', 9034509874),
(113, 'Dr. Tuhina Saxena', 8934576809),
(114, 'Dr. Samantha White Ahuja', 5673894059),
(115, 'Dr. Monica Anand  Agarwal', 93345678293),
(116, 'Dr. Mihir Joshi',8734502345);

SELECT * 
FROM D_phone_no;

SHOW DATABASES;
USE Hospital_Management_System;
SHOW TABLES;

SELECT * 
FROM Patient;

CREATE VIEW SameDoctor AS
SELECT Name_P, Doctor_attended
FROM Patient
WHERE Doctor_attended = 'Dr. Pooja Goyal';

SELECT * 
FROM SameDoctor;

SELECT * 
FROM Patient;

SELECT * 
FROM Payment;

CREATE VIEW DocFee AS
SELECT Payment_id, Patient_id
FROM Payment
WHERE Doctor_fee > 300;

SELECT *
FROM DocFee;

DROP VIEW SameDoctor;

SELECT * 
FROM SameDoctor;

USE Hospital_Management_System;
SHOW TABLES;

SELECT Patient.Name_P, Payment.Payment_id, Payment.Doctor_fee, Payment.Medicine_price
FROM Patient
INNER JOIN Payment 
ON Patient.Patient_id = Payment.Payment_id;

SELECT Patient.Name_P, Treats.Date
FROM Patient
LEFT JOIN Treats
ON Patient.Patient_id = Treats.Patient_id;

SELECT Patient.Name_P, P_phone_no.Phone_no1, P_phone_no.Phone_no2
FROM Patient
LEFT JOIN P_phone_no
ON Patient.Patient_id = P_phone_no.Owner_id;

SELECT *
FROM Doctor
LEFT JOIN D_phone_no
ON Doctor.doctor_id = D_phone_no.OwnerD_id
UNION
SELECT *
FROM Doctor
RIGHT JOIN D_phone_no
ON Doctor.doctor_id = D_phone_no.OwnerD_id;

SELECT Patient_id
FROM Patient
EXCEPT
SELECT Patient_id
FROM Payment;


DROP DATABASE Hospital_Management_System;














