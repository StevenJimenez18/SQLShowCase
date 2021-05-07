-- Nested Queries

SELECT first_name, last_name
From employee
WHERE employee.emp_id 
IN(
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000
);


SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);
