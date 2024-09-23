--Question 2
select region_id, count(*)
from countries
group by region_id;

--Quesion 5
select first_name, last_name, salary
from employees 
where salary > (select salary 
			   from employees
			   where first_name = 'Luis' and last_name = 'Popp') 
and salary < (select salary 
			   from employees
			   where first_name = 'Alexander' and last_name = 'Hunold') 
--Question 8
select min_salary, max_salary 
from jobs 
where job_title='Programmer';

--Question 11
-- minus would not work
select first_name, last_name
from employees
except
select first_name, last_name 
from employees
where manager_id = (select employee_id 
					 from employees
					 where first_name = 'Nancy' and last_name='Greenberg');