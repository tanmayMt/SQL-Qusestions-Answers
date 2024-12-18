use udemy_less_record;
SELECT * FROM employees;
SELECT * FROM jobs;
-- Get the employees who earn more than maximum salaries of 'IT_PROG'
select * from employees e join jobs j
where e.SALARY>j.MAX_SALARY and j.JOB_ID='IT_PROG';