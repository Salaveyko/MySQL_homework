USE my_db;

INSERT INTO employee
(name, surname, phone)
VALUES
('Alex', 'Solovey', '1234567818989'),
('Marina', 'Stusik', '1234567845634'),
('Alisa', 'Kazka', '1286797818989'),
('Rodrigo', 'Perets', '4352567818989'),
('Marko', 'Vovchok', '1235636518989');

INSERT INTO employee_info
(employee_id, birthdate, address, married)
VALUES
(1, '1993-02-15', 'Kotliarevskogo', 1),
(2, '1995-05-12', 'Galitska', 1),
(3, '1983-03-11', 'Bandery', 0),
(4, '1985-05-02', 'Ukropa', 0),
(5, '1996-07-15', 'Kotliarevskogo', 1);

INSERT INTO employee_position
(employee_id, salary, position)
VALUES
(1, 50000, 'BOSS'),
(1, 50000, 'Developer'),
(2, 50000, 'Manager'),
(3, 15000, 'Cleaner'),
(4, 20000, 'Buhgalter'),
(5, 35000, 'Developer');