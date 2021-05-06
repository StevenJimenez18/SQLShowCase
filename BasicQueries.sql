-- Basic Queries

SELECT * FROM employee;
SELECT * FROM client;
SELECT * FROM branch;

Select *
FROM employee
ORDER BY salary DESC;

SELECT * 
FROM employee
LIMIT 5;

SELECT first_name AS forename, last_name AS surename
FROM employee;

SELECT DISTINCT sex
FROM employee;

SELECT DISTINCT branch_id
FROM employee;

-- Basic Functions
SELECT COUNT(emp_id)
FROM employee;

SELECT COUNT(super_id)
FROM employee;

SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1971-01-01';

SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

SELECT SUM(salary)
FROM employee;

SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;