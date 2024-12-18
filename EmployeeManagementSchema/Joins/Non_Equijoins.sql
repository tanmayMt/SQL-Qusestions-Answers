
SELECT * FROM employees;
SELECT * FROM jobs;

-- Get the employees who earn more than maximum salaries of 'IT_PROG'
use udemy_less_record;
select e.EMPLOYEE_ID,e.FIRST_NAME,e.LAST_NAME,e.JOB_ID,e.SALARY from employees e join jobs j
on e.SALARY>j.MAX_SALARY and j.JOB_ID='IT_PROG';

-- Get the employees who earn more than maximum salaries of 'SA_REP'
use udemy;
SELECT e.employee_id, e.first_name, e.last_name, e.job_id, e.salary,
       j.min_salary, j.max_salary, j.job_id   
FROM employees e JOIN jobs j
ON e.salary > j.max_salary
AND j.job_id = 'SA_REP';