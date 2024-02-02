# Lesson 8

### Tasks:

***Note:*** *A different database than the one in the assignment created.*

1. Create a database.
2. Create 3 tables in this database:
- The 1st table contains the names and phone numbers of the employee.
- The 2nd table contains statements of salaries and positions of employees.
- The 3rd table contains information about marital status, date of birth, and place of residence
3. Run a series of insertion records as a transaction in a stored procedure. If such an employee
   is available, roll the database back.
4. Create a trigger that will delete records from the 2nd and 3rd tables before deleting records 
   from tables of employees (1st table), so as not to violate data integrity.