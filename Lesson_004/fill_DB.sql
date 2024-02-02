use my_joins_db;

-- task 2.2
insert into employees
(name, phone)
values
("Alex", "+380967023810"),
("Anatoliy", "+380962345110"),
("Zohan", "+380967044323"),
("Bob", "+380964361750"),
("Rita", "+38096786750");

insert into info
(employee_id, address, birthdate, marriage)
values
(1, "Kotliarevskogo", "1993-02-15", true),
(2, "Soborna", "1992-03-25", false),
(3, "Vidinska", "1990-12-15", true),
(4, "Soborna", "1997-08-05", false),
(5, "Dragomanova", "1994-06-11", false);

insert into positions
(employee_id, position, salary)
values
(1, "Developer", 50000),
(2, "HR", 25000),
(3, "Manager", 16000),
(4, "Cleaner", 8000),
(5, "Manager", 15000);
