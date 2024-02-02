create database if not exists school;
-- drop database school;
use school;

create table if not exists persons(
	id int primary key auto_increment,
    name varchar(50) not null,
    lastname varchar(50) not null,
    birthdate date not null
);

create table if not exists employees(
	person_id int primary key,
    position varchar(50) not null,
	salary double not null,
    
    foreign key(person_id) references persons(id)
);

create table if not exists classrooms(
	id int primary key auto_increment,
    teacher_id int,
    name varchar(5) not null,
    
    foreign key(teacher_id) references employees(person_id)
);

create table if not exists pupils(
	person_id int primary key,
    description varchar(50),
    classroom_id int not null,
    
    foreign key(person_id) references persons(id),
    foreign key(classroom_id) references classrooms(id)
);

-- views creating
create view employees_info as
select id, name, lastname, birthdate, position, salary from persons
inner join employees on person_id = id;

create view pupils_info as
select p.id, p.name, p.lastname, p.birthdate, pup.description, cl.name as 'class'
from persons p
inner join pupils pup on pup.person_id = p.id
inner join classrooms cl on cl.id = pup.classroom_id;

create view classrooms_info as
select cl.id, p.lastname as 'teacher', cl.name from classrooms cl
join persons p on cl.teacher_id = p.id;

-- transaction to create a new employee
delimiter |
create procedure add_employee(
	in_name varchar(50)
    , in_lastname varchar(50)
    , in_birthdate date
    , in_position varchar(50)
    , in_salary double
)
begin
	declare pers_id int;
    
	start transaction;
    
		-- Checking employee availability
        select id into pers_id from persons
        where name = in_name and lastname = in_lastname and birthdate = in_birthdate;
        
        -- If the person does not exist, add a new person
        if pers_id is null then
			insert into persons (name, lastname, birthdate) value (in_name, in_lastname, in_birthdate);
            set pers_id = last_insert_id();
		end if;
        
        -- If the employee does not exist, add a new employee
        -- else - rollback the transaction
        if not exists(select 1 from employees where person_id = pers_id) then
			insert into employees (person_id, position, salary) value (pers_id, in_position, in_salary);
		else
			rollback;
			signal sqlstate '45000' set message_text = 'Employee already exists';
		end if;

	commit;
end; |

-- triggers
create trigger del_pupils
after delete on pupils
for each row
begin
	delete from persons where id = old.person_id;
end;|

create trigger del_employee_class
before delete on employees
for each row
begin
	update classrooms set teacher_id = null where teacher_id = old.person_id;
end;|

create trigger del_employee
after delete on employees
for each row
begin
	delete from persons where id = old.person_id;
end;|

