use my_joins_db;

select * from employees;

select * from positions;

select * from info;

-- task 3.1
select name, phone, address 
from employees 
join info
on id = employee_id;

-- task 3.2
select name, birthdate, phone
from employees 
join info on id = employee_id
where marriage = false;

-- task 3.3
select name, birthdate, phone
from employees 
join info on id = info.employee_id
join positions on id = positions.employee_id
where position = 'Manager';