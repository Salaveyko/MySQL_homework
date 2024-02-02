select * from persons;
select * from employees_info;
select * from pupils_info;
select * from classrooms_info;

delete from pupils where person_id = 5;
delete from employees where person_id = 2;

delimiter |
call add_employee('Alexander', 'Radionovich', '1985-07-12' , 'Physix teacher', '15000');
|
call add_employee('Alexander', 'Radionovich', '1985-07-12' , 'Physix teacher', '15000');
|