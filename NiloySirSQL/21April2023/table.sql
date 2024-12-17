use niloysir_db;

create table LOCATION
(
 Location_ID numeric primary key,
 REginal_Group varchar(9)
);
insert into LOCATION values(122,"NEW YORK");
insert into LOCATION values(123,"DALLES");
insert into LOCATION values(124,"CHICAGO");
insert into LOCATION values(127,"BOSTON");
select * from LOCATION;

create table DEPARTMENT
(
 Department_ID numeric,
 D_Name varchar(14),
 Location_ID numeric,
 primary key(Department_ID),
 foreign key(Location_ID) references LOCATION(Location_ID)
);
insert into DEPARTMENT values (10,"ACCOUNTING",122);
insert into DEPARTMENT values (20,"RESEARCH",124);
insert into DEPARTMENT values (30,"SALES",123);
insert into DEPARTMENT values (40,"OPERATION",167);

create table JOB
(
 Job_ID numeric,
 J_Function varchar(15),
 primary key(JOB_ID)
);
insert into JOB values (667,"CLARK");
insert into JOB values (668,"STAFF");
insert into JOB values (669,"ANALYST");
insert into JOB values (670,"SALESPERSON");
insert into JOB values (671,"MANAGER");
insert into JOB values (672,"PRESIDENT");

create table EMPLOYEE
(
 Employee_ID numeric,
 Last_name varchar(9),
 First_name varchar(9),
 Midle_name varchar(2),
 Job_ID numeric,
 Manager_ID numeric,
 Hirdate date,
 Salary numeric,
 Comm numeric,
 Department_ID numeric,
 primary key(Employee_ID)
);

insert into EMPLOYEE values (7369,"SMITH","JOHN",'Q',667,7902,"84-12-17",800,null,20);
insert into EMPLOYEE values (7499,"ALLEN","KEVIN",'J',670,7698,"85-02-20",1600,300,30);
insert into EMPLOYEE values (7505,"DOYLE","JEAN",'K',671,7839,"85-04-04",2850,null,30);
insert into EMPLOYEE values (7505,"DENNIS","LYNN",'S',671,7839,"85-03-15",2750,null,30);
insert into EMPLOYEE values (7506,"BAKER","LESIE",'D',671,7839,"85-06-10",2200,null,40);
insert into EMPLOYEE values (7507,"WARK","CYNTHIA",'D',670,7698,"85-02-22",1250,500,30);
SELECT * FROM EMPLOYEE;

select * from EMPLOYEE
where Last_Name="SMITH";

select First_name,Last_name from EMPLOYEE
where  Depamtment_ID=20;

select First_name,Last_name from EMPLOYEE
where  Salary <=4500 and Salary >= 3000;

select First_name,Last_name from EMPLOYEE
where  Depamtment_ID = 10 or 20;

select First_name,Last_name from EMPLOYEE
where  Depamtment_ID != 10 or 30;

select Last_name from EMPLOYEE
where  Last_name like 'S%';

select Last_name from EMPLOYEE
where  Last_name like 'S____';

select First_name,Last_name from EMPLOYEE
where  Depamtment_ID = 10 and Salary > 3500;

select First_name,Last_name from EMPLOYEE
where  Comm = null;

select Employee_ID,Last_Name from EMPLOYEE
order by Employee_ID;

select * from EMPLOYEE
order by Last_Name asc,Salary desc;

select * from EMPLOYEE
order by Last_Name asc,Depamtment_ID desc;
--
select Department_ID,count(Department_ID) as No_of_Employee from EMPLOYEE
group by Department_ID;

select Department_ID, max(Salary),min(Salary),avg(Salary) from EMPLOYEE
group by Department_ID;
--
select month(Hirdate), count(*) from EMPLOYEE
group by month(Hirdate)
order by month(Hirdate);

select month(Hirdate),year(Hirdate),count(*) from EMPLOYEE
group by year(Hirdate), month(Hirdate)
order by month(Hirdate);

select  Department_ID,count(Employee_ID) from EMPLOYEE
group by Department_ID having count(Employee_ID)=3;

select month(Hirdate) as mon, count(Employee_ID) from EMPLOYEE
group by month(Hirdate) having mon = "Jan" ;

select month(Hirdate) as mon, count(Employee_ID) from EMPLOYEE
group by month(Hirdate) having mon = "JAN" or mon = "DEC";

select count(EMPLOYEE_ID)
from EMPLOYEE,DEPARTMENT,LOCATION
where DEPARTMENT.Department_ID= EMPLOYEE.Department_ID
and D_Name="Sales";

select First_name, Midle_name, Last_name, max(Salary) from EMPLOYEE
group by Department_ID;