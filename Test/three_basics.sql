SHOW DATABASES;

CREATE DATABASE lco_users;

USE lco_users;

CREATE TABLE students(
    student_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(60),
    stu_fname VARCHAR(60),
    stu_lname VARCHAR(60),
    login_count INT,
    course_count INT,
    signup_month INT,
    PRIMARY KEY (student_id) 
);
INSERT INTO students(email,stu_fname,stu_lname,login_count,course_count,signup_month)
VALUES
('arbaj@gmail.com','ARBAJ','PATHAN',9,1,12),
('rohit@gmail.com','rohit','Chaudhari',19,1,7),
('piyush@gmail.com','piyush','Shamra',29,1,6),
('vijay@gmail.com','vijay','Sharma',39,1,8),
('yogesh@gmail.com','yogesh','Samant',49,1,12),
('suhas@gmail.com','suhas','M',59,12,10),
('fahad@gmail.com','fahad','Sayed',39,13,7),
('Ajit@gmail.com','Ajit','Musale',29,16,3),
('mahdev@gmail.com','mahdev','Shinde',59,71,2),
('vinay@gmail.com','vinay','Virvani',43,21,8),
('shubham@gmail.com','shubham','Kukde',34,73,7),
('pankaj@gmail.com','pankaj','Kumbhar',63,31,6),
('nilesh@gmail.com','nilesh','Parulkar',46,31,2),
('kad@gmail.com','kad','nanj',65,1,6),
('dipali@gmail.com','dipali','bitke',23,1,1),
('pallavi@gmail.com','pallavi','magar',45,1,6),
('shagun@gmail.com','shagun','Vasmatkar',56,23,5),
('tejas@gmail.com','tejas','Kumbhar',23,5,4),
('akash@gmail.com','akash','Deshmukh',34,1,11),
('Richard@gmail.com','Richard','Hurst',57,24,12);


