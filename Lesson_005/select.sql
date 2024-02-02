use my_db;

select id, name, birthdate, position, salary, phone, address, married
from employees 
join info on id = employee_id
join positions pos on id = pos.employee_id;

-- task 2.1
select *, 
(select address from info where id = employee_id) as address
from employees;

-- task 2.2
select *, 
(select birthdate from info where id = employee_id) as birthdate
from employees
where exists 
(select * from info where married = false and id = employee_id);

-- task 2.3
select *, 
(select birthdate from info where id = employee_id) as birthdate
from employees
where exists 
(select * from positions where position = "Manager" and id = employee_id);