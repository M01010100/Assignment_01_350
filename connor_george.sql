/* Problem 1 Solution */
/* Author: Connor George */
select country_name
from countries
where country_name like '%In%' or country_name like '%in%';

/* Problem 4 Solution */
/* Author: Connor George */
select e1.first_name, e1.last_name
from employees e1
join employees e2
on e1.manager_id = e2.employee_id
where e2.first_name = 'Nancy'
and e2.last_name = 'Greenberg';

/* Problem 7 Solution */
/* Author: Connor George */

select department_id, avg(salary)
from employees
group by department_id
having count(*) >= 8;

/* Problem 10 Solution */
/* Author: Connor George */

select count(*)
from employees e1
join departments d1
on e1.department_id = d1.department_id
where d1.department_name = 'IT'
and e1.salary > (select e2.salary
from employees e2
where e2.employee_id = (select distinct manager_id
from employees e3
join departments d3
on e3.department_id = d3.department_id
where d3.department_name = 'Shipping'
and manager_id not in (select employee_id
from employees e4
join departments d4
on e4.department_id = d4.department_id
where d4.department_name = 'Shipping')));

/* Problem 13 Solution */
/* Author: Connor George */
select country_name 
from countries
where region_id = 4
intersect
select country_name 
from countries
where country_name like 'Z%';
