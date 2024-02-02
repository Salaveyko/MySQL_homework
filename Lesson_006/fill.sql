use spies;

-- task 2.1
insert into employees
(name, phone)
values
("Tyson", "999-000-999"),
("Usik", "724-334-872"),
("Holyfield", "982-323-543"),
("Ali", "380-984-353");

insert into positions
(employee_id, position, salary)
values
(1, "Driver", 110000),
(2, "Security", 120000),
(3, "Driver", 130000),
(4, "Boss", 155000);

insert into info
(employee_id, address, birthdate, married)
values
(1, "New York", "1990-08-23", true),
(2, "Oslo", "1980-11-11", false),
(3, "Paris", "1985-01-13", false),
(4, "Boston", "1994-02-28", true);