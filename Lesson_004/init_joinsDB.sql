-- task 1
create database if not exists my_joins_db;

use my_joins_db;

-- task 2.1
create table if not exists employees
(
	id int auto_increment,
    name varchar(42) not null,
    phone varchar(13) not null unique,
    
    primary key (id)
);

create table if not exists positions
(
	employee_id int not null,
    position varchar(50) not null,
    salary int not null,
    
    foreign key (employee_id) references employees(id)
);

create table if not exists info
(
	employee_id int not null,
    address varchar(50),
    birthdate date not null,
    marriage boolean default false,
    
    foreign key (employee_id) references employees(id)
);