-- Unions

SELECT first_name, last_name
FROM employee
UNION
SELECT branch_name, branch_id
FROM branch;

SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;