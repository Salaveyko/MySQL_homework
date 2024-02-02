USE my_db;

UPDATE employee_info
SET status = '0'
WHERE employee_id = 1;

SELECT * FROM employee_info;