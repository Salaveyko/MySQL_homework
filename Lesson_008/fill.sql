use school;

insert into persons
(name, lastname, birthdate)
values
('Jesika', 'Boo', '1980-02-12'),
('Christan', 'Deal', '1982-12-12'),
('Marta', 'Tailor', '1981-9-01'),
('Naomi', 'Karter', '2015-02-01'),
('John', 'Pitterson', '2015-03-14'),
('Kim', 'Beast', '2015-04-15'),
('Mark', 'Twenty', '2016-05-16'),
('Jesika', 'Heart', '2016-06-17'),
('Anna', 'Schwartz', '2016-07-18');

insert into employees
(person_id, position, salary)
values
(1, 'Director', 20000),
(2, 'English teacher', 15000),
(3, 'Mathematics teacher', 15000);

insert into classrooms
(teacher_id, name) 
values
(2, '3-A'),
(3, '4-B');

insert into pupils
(person_id, description, classroom_id)
values
(4, '', 1),
(5, '', 1),
(6, 'Poor vision', 1),
(7, '', 2),
(8, '', 2),
(9, '', 2);