use udemy_less_record;
-- DROP TABLE `udemy_less_record`.`departments`,`udemy_less_record`.`employees`,`udemy_less_record`.`job_history`,`udemy_less_record`.`jobs`,`udemy_less_record`.`locations`,`udemy_less_record`.`regions`;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------
CREATE TABLE COUNTRIES
(
    COUNTRY_ID VARCHAR(3), 
    COUNTRY_NAME VARCHAR(50),
    REGION_ID NUMERIC, 
    CONSTRAINT COUNTRY_C_ID_PK PRIMARY KEY (COUNTRY_ID)
);

INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) 
VALUES 
     ('IT', 'Italy', 1),
     ('FR', 'France', 1),
     ('US', 'United States of America', 2),
     ('CA', 'Canada', 2),
     ('IN', 'India', 3),
     ('CN', 'China', 3)
;


--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------
CREATE TABLE DEPARTMENTS 
(   
    DEPARTMENT_ID numeric(4,0), 
    DEPARTMENT_NAME VARCHAR(30), 
    MANAGER_ID numeric(6,0), 
    LOCATION_ID numeric(4,0),
    CONSTRAINT DEPARTMENT_PK PRIMARY KEY (DEPARTMENT_ID)
);

INSERT INTO udemy_less_record.DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID) 
VALUES
    (20, 'Marketing', 201, 1800),
    (60, 'IT', 103, 1400);
    

--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------
  CREATE TABLE EMPLOYEES
   (	
	EMPLOYEE_ID NUMERIC(6,0) primary key , 
	FIRST_NAME VARCHAR(20) not null, 
	LAST_NAME VARCHAR(25)  not null, 
	EMAIL VARCHAR(25), 
	PHONE_NUMBER VARCHAR(20),
	HIRE_DATE DATE not null, 
	JOB_ID VARCHAR(10), 
	SALARY NUMERIC(8,2), 
	COMMISSION_PCT NUMERIC(2,2), 
	MANAGER_ID NUMERIC(6,0), 
	DEPARTMENT_ID NUMERIC(4,0)
   );
INSERT INTO udemy_less_record.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) VALUES (102,'Lex','De Haan','LDEHAAN','515.123.4569',STR_TO_DATE('13-JAN-01','%d-%b-%y'),'AD_VP',17000,null,100,90);
INSERT INTO udemy_less_record.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) VALUES
(100,'Steven','King','SKING','515.123.4567',STR_TO_DATE('17-JUN-03','%d-%b-%y'),'AD_PRES',24000,null,null,90),
(103,'Alexander','Hunold','AHUNOLD','590.423.4567',STR_TO_DATE('03-JAN-06','%d-%b-%y'),'IT_PROG',9000,null,102,60),
(104,'Bruce','Ernst','BERNST','590.423.4568',STR_TO_DATE('21-MAY-07','%d-%b-%y'),'IT_PROG',6000,null,103,60),
(105,'David','Austin','DAUSTIN','590.423.4569',STR_TO_DATE('25-JUN-05','%d-%b-%y'),'IT_PROG',4800,null,103,60),
(106,'Valli','Pataballa','VPATABAL','590.423.4560',STR_TO_DATE('05-FEB-06','%d-%b-%y'),'IT_PROG',4800,null,103,60),
(107,'Diana','Lorentz','DLORENTZ','590.423.5567',STR_TO_DATE('07-FEB-07','%d-%b-%y'),'IT_PROG',4200,null,103,60),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', STR_TO_DATE('17-FEB-04', '%d-%b-%y'), 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', STR_TO_DATE('17-AUG-05', '%d-%b-%y'), 'MK_REP', 6000, NULL, 201, 20);
   
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------
CREATE TABLE JOBS
(
   JOB_ID VARCHAR(10) PRIMARY KEY, 
   JOB_TITLE VARCHAR(35), 
   MIN_SALARY NUMERIC(6,0), 
   MAX_SALARY NUMERIC(6,0)
);

INSERT INTO udemy_less_record.JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) 
VALUES
('IT_PROG', 'Programmer', 4000, 10000),
('MK_REP', 'Marketing Representative', 4000, 9000);


--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------
  CREATE TABLE udemy_less_record.JOB_HISTORY
   (	
    EMPLOYEE_ID NUMERIC(6,0)  not null, 
	START_DATE DATE not null, 
	END_DATE DATE not null, 
	JOB_ID VARCHAR(10) not null, 
	DEPARTMENT_ID NUMERIC(4,0) not null
   );
   
INSERT INTO udemy_less_record.JOB_HISTORY (EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)  
VALUES 
(102, STR_TO_DATE('13-JAN-01','%d-%b-%y'), STR_TO_DATE('24-JUL-06','%d-%b-%y'), 'IT_PROG', 60),
(201, STR_TO_DATE('17-FEB-04','%d-%b-%y'), STR_TO_DATE('19-DEC-07','%d-%b-%y'), 'MK_REP', 20);


--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------
CREATE TABLE LOCATIONS 
   (	
    LOCATION_ID NUMERIC(4,0) primary key, 
	STREET_ADDRESS VARCHAR(40), 
	POSTAL_CODE VARCHAR(12), 
	CITY VARCHAR(30) not null, 
	STATE_PROVINCE VARCHAR(25), 
	COUNTRY_ID CHAR(2)
);

INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) 
VALUES 
     (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
     (2000, '40-5-12 Laogianggen', '190518', 'Beijing', null, 'CN'),
     (2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
     (1000, '1297 Via Cola di Rie', '00989', 'Roma', null, 'IT'),
     (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US')
;


--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------
CREATE TABLE REGIONS 
(
    REGION_ID int PRIMARY KEY, 
    REGION_NAME VARCHAR(25)
);

Insert into REGIONS (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into REGIONS (REGION_ID,REGION_NAME) values (2,'Americas');
Insert into REGIONS (REGION_ID,REGION_NAME) values (3,'Asia');
Insert into REGIONS (REGION_ID,REGION_NAME) values (4,'Middle East and Africa');


--------------------------------------------------------
--  DDL for Table PAYOUTS
--------------------------------------------------------
use udemy_less_record;
CREATE TABLE PAYOUTS
(
    EMPLOYEE_ID NUMERIC(6,0), -- Employee ID
    payment_date  DATE,            -- Payment date
    payment_type  VARCHAR(10),    -- Payments can be two types, "Salary" and "Bonus"
    payout_amount NUMERIC(6,0),          -- The amount of the payment
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Repeat the same structure for employee_id 101 to 206
-- Example for 101
