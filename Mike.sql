
-- Question 3 Solution
-- Author: Mike Nguyen 

SELECT first_name, last_name
FROM employees
JOIN jobs
ON employees.job_id = jobs.job_id
WHERE jobs.job_title LIKE '%Manager%';




-- Question 6 Solution
-- Author: Mike Nguyen 

SELECT AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name LIKE '%Public Relations';

--Question 9
-- Author: Mike Nguyen 
select SUM(e.salary) AS total_salary
from 
employees e
join 
departments d ON e.department_id = d.department_id
WHERE d.department_name LIKE '%Finance'


-- Question 12 Solution
-- Author: Mike Nguyen 



SELECT employee_id, last_name
FROM
employees e
join
departments d ON e.department_id = d.department_id
WHERE d.department_name LIKE '%Public Relations'
UNION
SELECT employee_id, last_name
FROM
employees e
join
departments d ON e.department_id = d.department_id
WHERE e.salary > 9000;
