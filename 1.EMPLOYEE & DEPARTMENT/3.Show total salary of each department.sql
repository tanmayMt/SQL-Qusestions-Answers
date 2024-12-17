
-- Create EMPLOYEE Table
CREATE TABLE EMPLOYEE (
  emp_id INTEGER PRIMARY KEY,
  emp_name TEXT NOT NULL,
  salary INTEGER NOT NULL,
  dept_no INTEGER NOT NULL
);

-- Create DEPARTMENT Table
CREATE TABLE DEPARTMENT (
  dept_no INTEGER PRIMARY KEY,
  dept_name TEXT NOT NULL,
  location TEXT NOT NULL
);

-- insert data in EMPLOYEE 
INSERT INTO EMPLOYEE VALUES (0001, 'joy', 45000, 02);
INSERT INTO EMPLOYEE VALUES (0002, 'Tan', 75000, 01);
INSERT INTO EMPLOYEE VALUES (0003, 'Dab', 20000, 03);
INSERT INTO EMPLOYEE VALUES (0004, 'Ram', 60000, 01);
INSERT INTO EMPLOYEE VALUES (0005, 'Ani', 28000, 03);
INSERT INTO EMPLOYEE VALUES (0006, 'Nil', 42000, 02);
INSERT INTO EMPLOYEE VALUES (0007, 'Sam', 55000, 01);

-- insert data in DEPARTMENT Table
INSERT INTO DEPARTMENT VALUES (01, 'Management', 'Bdn');
INSERT INTO DEPARTMENT VALUES (03, 'Delivary', 'Bdn');
INSERT INTO DEPARTMENT VALUES (02, 'Marketing', 'Kol');


-- Query
-- Show total salary of each department
select dept_name,sum(salary) as Total_salary_of_each_department
from EMPLOYEE,DEPARTMENT
where EMPLOYEE.dept_no=DEPARTMENT.dept_no
group by dept_name;
