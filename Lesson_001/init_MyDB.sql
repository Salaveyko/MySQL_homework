CREATE DATABASE my_db;

USE my_db;

CREATE TABLE employee
(
	id INT AUTO_INCREMENT UNIQUE NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30),
    phone VARCHAR(15),
    PRIMARY KEY(id)
);

CREATE TABLE employee_position
(
	employee_id INT NOT NULL,
    salary INT NOT NULL,
    position VARCHAR(50) NOT NULL
);

CREATE TABLE employee_info
(
	employee_id INT UNIQUE NOT NULL,
    birthdate DATE NOT NULL,
    address VARCHAR(100) NOT NULL,
    married TINYINT NOT NULL
);