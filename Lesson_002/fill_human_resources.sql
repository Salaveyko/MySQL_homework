USE human_resources;

INSERT INTO employees (first_name, last_name, birthdate) VALUES
('Alex', 'Solovey', '1993-02-15'),
('Anna', 'Smereka', '1985-05-20'),
('Volodymir', 'Lev', '1995-08-10');

INSERT INTO employee_infos (employee_id, email, phone_number, married) VALUES
(1, 'alex@mail.com', '123-456-7890', TRUE),
(2, 'anna@mail.com', '987-654-3210', FALSE),
(3, 'vova@mail.com', '111-222-3333', TRUE);

INSERT INTO departments (id, name, manager_id) VALUES
(1, 'IT Department', 1),
(2, 'HR Department', 3),
(3, 'Finance Department', 2);

INSERT INTO employee_positions (employee_id, hire_date, position, salary, department_id) VALUES
(1, '2018-06-15', 'Software Engineer', 80000, 1),
(2, '2015-03-01', 'HR Manager', 60000, 2),
(3, '2016-01-20', 'Accountant', 55000, 3);

INSERT INTO reports (id, name, description, report_date, employee_id) VALUES
(1, 'Monthly HR Report', 'Summary of HR activities', '2024-01-01', 2),
(2, 'Software Development Report', 'Project updates', '2024-01-05', 1),
(3, 'Financial Statement', 'Quarterly financial report', '2024-01-10', 3);


select * from employees;
select * from employee_infos;
select * from employee_positions;
select * from departments;
select * from reports;