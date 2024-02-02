-- task 1
create database if not exists spies;

use spies;

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

-- task 3
create index idx_marriage on info(married);
create index idx_position on positions(position);

-- task 4.1
create view employees_contacts as
select id, name, phone, address from employees
inner join info on id = employee_id;

-- task 4.2
create view not_married as
select id, name, birthdate, phone from employees
inner join info on id = employee_id
where married = false;

-- task 4.3
create view managers_info as
select id, name, phone, birthdate from employees
inner join info on id = employee_id
where exists
(select * from positions where position = "Driver" and id = employee_id);