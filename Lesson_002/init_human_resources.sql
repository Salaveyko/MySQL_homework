CREATE DATABASE IF NOT EXISTS human_resources;

USE human_resources;

CREATE TABLE IF NOT EXISTS employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    birthdate DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS employee_infos (
	employee_id INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    married BOOLEAN DEFAULT FALSE,
    FOREIGN KEY(employee_id) REFERENCES employees(id)    
);

CREATE TABLE IF NOT EXISTS departments (
	id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    manager_id INT NOT NULL,
    FOREIGN KEY(manager_id) REFERENCES employees(id)
);

CREATE TABLE IF NOT EXISTS employee_positions (
	employee_id INT PRIMARY KEY,
	hire_date DATE NOT NULL,
    position VARCHAR(100),
    salary DOUBLE,
    department_id INT NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES employees(id),
    FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS reports (
	id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    report_date DATE NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES employees(id)
);