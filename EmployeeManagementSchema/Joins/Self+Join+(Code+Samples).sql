use udemy_less_record;
-- Find Manager details of the Employees 
SELECT worker.first_name, worker.last_name, worker.employee_id, worker.manager_id,
       manager.employee_id, manager.first_name, manager.last_name
FROM employees worker JOIN employees manager
ON(worker.manager_id = manager.employee_id);