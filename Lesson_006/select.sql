use spies;

select id, name, phone, address, position, salary, birthdate, married
from employees
inner join positions on id = employee_id
inner join info on id = info.employee_id;

select * from employees_contacts;

select * from not_married;

select * from managers_info;