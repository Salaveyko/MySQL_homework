-- task 1
create database if not exists my_db;

use my_db;

-- task 2
create table if not exists employees
(
	id int primary key auto_increment,
    name varchar(50) not null,
    phone varchar(15) unique not null
);

create table if not exists positions
(
	employee_id int not null,
    position varchar(30) not null default "Practitioner",
    salary int not null default "1000",
    
    foreign key (employee_id) references employees (id)
);

create table if not exists info
(
	employee_id int not null,
    address varchar(50),
    birthdate date,
    married boolean default false,
    
    foreign key (employee_id) references employees (id)
);