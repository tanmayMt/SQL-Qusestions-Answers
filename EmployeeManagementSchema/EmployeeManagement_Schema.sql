use udemy;
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
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------
  CREATE TABLE JOB_HISTORY
   (	
    EMPLOYEE_ID NUMERIC(6,0)  not null, 
	START_DATE DATE not null, 
	END_DATE DATE not null, 
	JOB_ID VARCHAR(10) not null, 
	DEPARTMENT_ID NUMERIC(4,0) not null
   );
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
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------
CREATE TABLE REGIONS 
(
    REGION_ID int PRIMARY KEY, 
    REGION_NAME VARCHAR(25)
);
--------------------------------------------------------
--  DDL for Table PAYOUTS
--------------------------------------------------------
CREATE TABLE PAYOUTS
(
    EMPLOYEE_ID NUMERIC(6,0), -- Employee ID
    payment_date  DATE,            -- Payment date
    payment_type  VARCHAR(10),    -- Payments can be two types, "Salary" and "Bonus"
    payout_amount NUMERIC(6,0),          -- The amount of the payment
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

--------------------------------------------------------
--  Insert Records for Tables
--------------------------------------------------------
INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) 
VALUES 
    ('AR', 'Argentina', 2),
    ('AU', 'Australia', 3),
    ('BE', 'Belgium', 1),
    ('BR', 'Brazil', 2),
    ('CA', 'Canada', 2),
    ('CH', 'Switzerland', 1),
    ('CN', 'China', 3),
    ('DE', 'Germany', 1),
    ('DK', 'Denmark', 1),
    ('EG', 'Egypt', 4),
    ('FR', 'France', 1),
    ('IL', 'Israel', 4),
    ('IN', 'India', 3),
    ('IT', 'Italy', 1),
    ('JP', 'Japan', 3),
    ('KW', 'Kuwait', 4),
    ('ML', 'Malaysia', 3),
    ('MX', 'Mexico', 2),
    ('NG', 'Nigeria', 4),
    ('NL', 'Netherlands', 1),
    ('SG', 'Singapore', 3),
    ('UK', 'United Kingdom', 1),
    ('US', 'United States of America', 2),
    ('ZM', 'Zambia', 4),
    ('ZW', 'Zimbabwe', 4);

INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID) 
VALUES
    (10, 'Administration', 200, 1700),
    (20, 'Marketing', 201, 1800),
    (30, 'Purchasing', 114, 1700),
    (40, 'Human Resources', 203, 2400),
    (50, 'Shipping', 121, 1500),
    (60, 'IT', 103, 1400),
    (70, 'Public Relations', 204, 2700),
    (80, 'Sales', 145, 2500),
    (90, 'Executive', 100, 1700),
    (100, 'Finance', 108, 1700),
    (110, 'Accounting', 205, 1700),
    (120, 'Treasury', NULL, 1700),
    (130, 'Corporate Tax', NULL, 1700),
    (140, 'Control And Credit', NULL, 1700),
    (150, 'Shareholder Services', NULL, 1700),
    (160, 'Benefits', NULL, 1700),
    (170, 'Manufacturing', NULL, 1700),
    (180, 'Construction', NULL, 1700),
    (190, 'Contracting', NULL, 1700),
    (200, 'Operations', NULL, 1700),
    (210, 'IT Support', NULL, 1700),
    (220, 'NOC', NULL, 1700),
    (230, 'IT Helpdesk', NULL, 1700),
    (240, 'Government Sales', NULL, 1700),
    (250, 'Retail Sales', NULL, 1700),
    (260, 'Recruiting', NULL, 1700),
    (270, 'Payroll', NULL, 1700);

INSERT INTO EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) VALUES (159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', STR_TO_DATE('10-MAR-05', '%d-%b-%y'), 'SA_REP', 8000, 0.3, 146, 80);
INSERT INTO EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) 
VALUES 
(100,'Steven','King','SKING','515.123.4567',STR_TO_DATE('17-JUN-03','%d-%b-%y'),'AD_PRES',24000,null,null,90),
(101,'Neena','Kochhar','NKOCHHAR','515.123.4568',STR_TO_DATE('21-SEP-05','%d-%b-%y'),'AD_VP',17000,null,100,90),
(102,'Lex','De Haan','LDEHAAN','515.123.4569',STR_TO_DATE('13-JAN-01','%d-%b-%y'),'AD_VP',17000,null,100,90),
(103,'Alexander','Hunold','AHUNOLD','590.423.4567',STR_TO_DATE('03-JAN-06','%d-%b-%y'),'IT_PROG',9000,null,102,60),
(104,'Bruce','Ernst','BERNST','590.423.4568',STR_TO_DATE('21-MAY-07','%d-%b-%y'),'IT_PROG',6000,null,103,60),
(105,'David','Austin','DAUSTIN','590.423.4569',STR_TO_DATE('25-JUN-05','%d-%b-%y'),'IT_PROG',4800,null,103,60),
(106,'Valli','Pataballa','VPATABAL','590.423.4560',STR_TO_DATE('05-FEB-06','%d-%b-%y'),'IT_PROG',4800,null,103,60),
(107,'Diana','Lorentz','DLORENTZ','590.423.5567',STR_TO_DATE('07-FEB-07','%d-%b-%y'),'IT_PROG',4200,null,103,60),
(108,'Nancy','Greenberg','NGREENBE','515.124.4569',STR_TO_DATE('17-AUG-02','%d-%b-%y'),'FI_MGR',12008,null,101,100),
(109,'Daniel','Faviet','DFAVIET','515.124.4169',STR_TO_DATE('16-AUG-02','%d-%b-%y'),'FI_ACCOUNT',9000,null,108,100),
(110,'John','Chen','JCHEN','515.124.4269',STR_TO_DATE('28-SEP-05','%d-%b-%y'),'FI_ACCOUNT',8200,null,108,100),
(111,'Ismael','Sciarra','ISCIARRA','515.124.4369',STR_TO_DATE('30-SEP-05','%d-%b-%y'),'FI_ACCOUNT',7700,null,108,100),
(112,'Jose Manuel','Urman','JMURMAN','515.124.4469',STR_TO_DATE('07-MAR-06','%d-%b-%y'),'FI_ACCOUNT',7800,null,108,100),
(113,'Luis','Popp','LPOPP','515.124.4567',STR_TO_DATE('07-DEC-07','%d-%b-%y'),'FI_ACCOUNT',6900,null,108,100),
(114,'Den','Raphaely','DRAPHEAL','515.127.4561',STR_TO_DATE('07-DEC-02','%d-%b-%y'),'PU_MAN',11000,null,100,30),
(115,'Alexander','Khoo','AKHOO','515.127.4562',STR_TO_DATE('18-MAY-03','%d-%b-%y'),'PU_CLERK',3100,null,114,30),
(116,'Shelli','Baida','SBAIDA','515.127.4563',STR_TO_DATE('24-DEC-05','%d-%b-%y'),'PU_CLERK',2900,null,114,30),
(117,'Sigal','Tobias','STOBIAS','515.127.4564',STR_TO_DATE('24-JUL-05','%d-%b-%y'),'PU_CLERK',2800,null,114,30),
(118,'Guy','Himuro','GHIMURO','515.127.4565',STR_TO_DATE('15-NOV-06','%d-%b-%y'),'PU_CLERK',2600,null,114,30),
(119,'Karen','Colmenares','KCOLMENA','515.127.4566',STR_TO_DATE('10-AUG-07','%d-%b-%y'),'PU_CLERK',2500,null,114,30),
(120,'Matthew','Weiss','MWEISS','650.123.1234',STR_TO_DATE('18-JUL-04','%d-%b-%y'),'ST_MAN',8000,null,100,50),
(121,'Adam','Fripp','AFRIPP','650.123.2234',STR_TO_DATE('10-APR-05','%d-%b-%y'),'ST_MAN',8200,null,100,50),
(122,'Payam','Kaufling','PKAUFLIN','650.123.3234',STR_TO_DATE('01-MAY-03','%d-%b-%y'),'ST_MAN',7900,null,100,50),
(123,'Shanta','Vollman','SVOLLMAN','650.123.4234',STR_TO_DATE('10-OCT-05','%d-%b-%y'),'ST_MAN',6500,null,100,50),
(124,'Kevin','Mourgos','KMOURGOS','650.123.5234',STR_TO_DATE('16-NOV-07','%d-%b-%y'),'ST_MAN',5800,null,100,50),
(125,'Julia','Nayer','JNAYER','650.124.1214',STR_TO_DATE('16-JUL-05','%d-%b-%y'),'ST_CLERK',3200,null,120,50),
(126,'Irene','Mikkilineni','IMIKKILI','650.124.1224',STR_TO_DATE('28-SEP-06','%d-%b-%y'),'ST_CLERK',2700,null,120,50),
(127,'James','Landry','JLANDRY','650.124.1334',STR_TO_DATE('14-JAN-07','%d-%b-%y'),'ST_CLERK',2400,null,120,50),
(128,'Steven','Markle','SMARKLE','650.124.1434',STR_TO_DATE('08-MAR-08','%d-%b-%y'),'ST_CLERK',2200,null,120,50),
(129,'Laura','Bissot','LBISSOT','650.124.5234',STR_TO_DATE('20-AUG-05','%d-%b-%y'),'ST_CLERK',3300,null,121,50),
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', STR_TO_DATE('30-OCT-05', '%d-%b-%y'), 'ST_CLERK', 2800, NULL, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', STR_TO_DATE('16-FEB-05', '%d-%b-%y'), 'ST_CLERK', 2500, NULL, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', STR_TO_DATE('10-APR-07', '%d-%b-%y'), 'ST_CLERK', 2100, NULL, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', STR_TO_DATE('14-JUN-04', '%d-%b-%y'), 'ST_CLERK', 3300, NULL, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', STR_TO_DATE('26-AUG-06', '%d-%b-%y'), 'ST_CLERK', 2900, NULL, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', STR_TO_DATE('12-DEC-07', '%d-%b-%y'), 'ST_CLERK', 2400, NULL, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', STR_TO_DATE('06-FEB-08', '%d-%b-%y'), 'ST_CLERK', 2200, NULL, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', STR_TO_DATE('14-JUL-03', '%d-%b-%y'), 'ST_CLERK', 3600, NULL, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', STR_TO_DATE('26-OCT-05', '%d-%b-%y'), 'ST_CLERK', 3200, NULL, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', STR_TO_DATE('12-FEB-06', '%d-%b-%y'), 'ST_CLERK', 2700, NULL, 123, 50),
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', STR_TO_DATE('06-APR-06', '%d-%b-%y'), 'ST_CLERK', 2500, NULL, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', STR_TO_DATE('17-OCT-03', '%d-%b-%y'), 'ST_CLERK', 3500, NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', STR_TO_DATE('29-JAN-05', '%d-%b-%y'), 'ST_CLERK', 3100, NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', STR_TO_DATE('15-MAR-06', '%d-%b-%y'), 'ST_CLERK', 2600, NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', STR_TO_DATE('09-JUL-06', '%d-%b-%y'), 'ST_CLERK', 2500, NULL, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', STR_TO_DATE('01-OCT-04', '%d-%b-%y'), 'SA_MAN', 14000, 0.4, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', STR_TO_DATE('05-JAN-05', '%d-%b-%y'), 'SA_MAN', 13500, 0.3, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', STR_TO_DATE('10-MAR-05', '%d-%b-%y'), 'SA_MAN', 12000, 0.3, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', STR_TO_DATE('15-OCT-07', '%d-%b-%y'), 'SA_MAN', 11000, 0.3, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', STR_TO_DATE('29-JAN-08', '%d-%b-%y'), 'SA_MAN', 10500, 0.2, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', STR_TO_DATE('30-JAN-05', '%d-%b-%y'), 'SA_REP', 10000, 0.3, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', STR_TO_DATE('24-MAR-05', '%d-%b-%y'), 'SA_REP', 9500, 0.25, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', STR_TO_DATE('20-AUG-05', '%d-%b-%y'), 'SA_REP', 9000, 0.25, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', STR_TO_DATE('30-MAR-06', '%d-%b-%y'), 'SA_REP', 8000, 0.2, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', STR_TO_DATE('09-DEC-06', '%d-%b-%y'), 'SA_REP', 7500, 0.2, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', STR_TO_DATE('23-NOV-07', '%d-%b-%y'), 'SA_REP', 7000, 0.15, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', STR_TO_DATE('30-JAN-04', '%d-%b-%y'), 'SA_REP', 10000, 0.35, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', STR_TO_DATE('04-MAR-04', '%d-%b-%y'), 'SA_REP', 9500, 0.35, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', STR_TO_DATE('01-AUG-04', '%d-%b-%y'), 'SA_REP', 9000, 0.35, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', STR_TO_DATE('10-MAR-05', '%d-%b-%y'), 'SA_REP', 8000, 0.3, 146, 80),
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', STR_TO_DATE('15-DEC-05', '%d-%b-%y'), 'SA_REP', 7500, 0.3, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', STR_TO_DATE('03-NOV-06', '%d-%b-%y'), 'SA_REP', 7000, 0.25, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', STR_TO_DATE('11-NOV-05', '%d-%b-%y'), 'SA_REP', 10500, 0.25, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', STR_TO_DATE('19-MAR-07', '%d-%b-%y'), 'SA_REP', 9500, 0.15, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', STR_TO_DATE('24-JAN-08', '%d-%b-%y'), 'SA_REP', 7200, 0.1, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', STR_TO_DATE('23-FEB-08', '%d-%b-%y'), 'SA_REP', 6800, 0.1, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', STR_TO_DATE('24-MAR-08', '%d-%b-%y'), 'SA_REP', 6400, 0.1, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', STR_TO_DATE('21-APR-08', '%d-%b-%y'), 'SA_REP', 6200, 0.1, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', STR_TO_DATE('11-MAR-05', '%d-%b-%y'), 'SA_REP', 11500, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', STR_TO_DATE('23-MAR-06', '%d-%b-%y'), 'SA_REP', 10000, 0.2, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', STR_TO_DATE('24-JAN-06', '%d-%b-%y'), 'SA_REP', 9600, 0.2, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', STR_TO_DATE('23-FEB-07', '%d-%b-%y'), 'SA_REP', 7400, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', STR_TO_DATE('24-MAR-07', '%d-%b-%y'), 'SA_REP', 7300, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', STR_TO_DATE('21-APR-08', '%d-%b-%y'), 'SA_REP', 6100, 0.1, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', STR_TO_DATE('11-MAY-04', '%d-%b-%y'), 'SA_REP', 11000, 0.3, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', STR_TO_DATE('19-MAR-05', '%d-%b-%y'), 'SA_REP', 8800, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', STR_TO_DATE('24-MAR-06', '%d-%b-%y'), 'SA_REP', 8600, 0.2, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', STR_TO_DATE('23-APR-06', '%d-%b-%y'), 'SA_REP', 8400, 0.2, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', STR_TO_DATE('24-MAY-07', '%d-%b-%y'), 'SA_REP', 7000, 0.15, 149, NULL),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', STR_TO_DATE('04-JAN-08', '%d-%b-%y'), 'SA_REP', 6200, 0.1, 149, 80),
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', STR_TO_DATE('24-JAN-06', '%d-%b-%y'), 'SH_CLERK', 3200, NULL, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', STR_TO_DATE('23-FEB-06', '%d-%b-%y'), 'SH_CLERK', 3100, NULL, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', STR_TO_DATE('21-JUN-07', '%d-%b-%y'), 'SH_CLERK', 2500, NULL, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', STR_TO_DATE('03-FEB-08', '%d-%b-%y'), 'SH_CLERK', 2800, NULL, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', STR_TO_DATE('27-JAN-04', '%d-%b-%y'), 'SH_CLERK', 4200, NULL, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', STR_TO_DATE('20-FEB-05', '%d-%b-%y'), 'SH_CLERK', 4100, NULL, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', STR_TO_DATE('24-JUN-06', '%d-%b-%y'), 'SH_CLERK', 3400, NULL, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', STR_TO_DATE('07-FEB-07', '%d-%b-%y'), 'SH_CLERK', 3000, NULL, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', STR_TO_DATE('14-JUN-05', '%d-%b-%y'), 'SH_CLERK', 3800, NULL, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', STR_TO_DATE('13-AUG-05', '%d-%b-%y'), 'SH_CLERK', 3600, NULL, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', STR_TO_DATE('11-JUL-06', '%d-%b-%y'), 'SH_CLERK', 2900, NULL, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', STR_TO_DATE('19-DEC-07', '%d-%b-%y'), 'SH_CLERK', 2500, NULL, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', STR_TO_DATE('04-FEB-04', '%d-%b-%y'), 'SH_CLERK', 4000, NULL, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', STR_TO_DATE('03-MAR-05', '%d-%b-%y'), 'SH_CLERK', 3900, NULL, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', STR_TO_DATE('01-JUL-06', '%d-%b-%y'), 'SH_CLERK', 3200, NULL, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', STR_TO_DATE('17-MAR-07', '%d-%b-%y'), 'SH_CLERK', 2800, NULL, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', STR_TO_DATE('24-APR-06', '%d-%b-%y'), 'SH_CLERK', 3100, NULL, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', STR_TO_DATE('23-MAY-06', '%d-%b-%y'), 'SH_CLERK', 3000, NULL, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', STR_TO_DATE('21-JUN-07', '%d-%b-%y'), 'SH_CLERK', 2600, NULL, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', STR_TO_DATE('13-JAN-08', '%d-%b-%y'), 'SH_CLERK', 2600, NULL, 124, 50),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', STR_TO_DATE('17-SEP-03', '%d-%b-%y'), 'AD_ASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', STR_TO_DATE('17-FEB-04', '%d-%b-%y'), 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', STR_TO_DATE('17-AUG-05', '%d-%b-%y'), 'MK_REP', 6000, NULL, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', STR_TO_DATE('07-JUN-02', '%d-%b-%y'), 'HR_REP', 6500, NULL, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', STR_TO_DATE('07-JUN-02', '%d-%b-%y'), 'PR_REP', 10000, NULL, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', STR_TO_DATE('07-JUN-02', '%d-%b-%y'), 'AC_MGR', 12008, NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', STR_TO_DATE('07-JUN-02', '%d-%b-%y'), 'AC_ACCOUNT', 8300, NULL, 205, 110);

INSERT INTO udemy.JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) 
VALUES 
('AD_PRES', 'President', 20080, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('FI_MGR', 'Finance Manager', 8200, 16000),
('FI_ACCOUNT', 'Accountant', 4200, 9000),
('AC_MGR', 'Accounting Manager', 8200, 16000),
('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
('SA_MAN', 'Sales Manager', 10000, 20080),
('SA_REP', 'Sales Representative', 6000, 12008),
('PU_MAN', 'Purchasing Manager', 8000, 15000),
('PU_CLERK', 'Purchasing Clerk', 2500, 5500),
('ST_MAN', 'Stock Manager', 5500, 8500),
('ST_CLERK', 'Stock Clerk', 2008, 5000),
('SH_CLERK', 'Shipping Clerk', 2500, 5500),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 15000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('HR_REP', 'Human Resources Representative', 4000, 9000),
('PR_REP', 'Public Relations Representative', 4500, 10500);

INSERT INTO udemy.JOB_HISTORY (EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)  
VALUES 
(102, STR_TO_DATE('13-JAN-01','%d-%b-%y'), STR_TO_DATE('24-JUL-06','%d-%b-%y'), 'IT_PROG', 60),
(101, STR_TO_DATE('21-SEP-97','%d-%b-%y'), STR_TO_DATE('27-OCT-01','%d-%b-%y'), 'AC_ACCOUNT', 110),
(101, STR_TO_DATE('28-OCT-01','%d-%b-%y'), STR_TO_DATE('15-MAR-05','%d-%b-%y'), 'AC_MGR', 110),
(201, STR_TO_DATE('17-FEB-04','%d-%b-%y'), STR_TO_DATE('19-DEC-07','%d-%b-%y'), 'MK_REP', 20),
(114, STR_TO_DATE('24-MAR-06','%d-%b-%y'), STR_TO_DATE('31-DEC-07','%d-%b-%y'), 'ST_CLERK', 50),
(122, STR_TO_DATE('01-JAN-07','%d-%b-%y'), STR_TO_DATE('31-DEC-07','%d-%b-%y'), 'ST_CLERK', 50),
(200, STR_TO_DATE('17-SEP-95','%d-%b-%y'), STR_TO_DATE('17-JUN-01','%d-%b-%y'), 'AD_ASST', 90),
(176, STR_TO_DATE('24-MAR-06','%d-%b-%y'), STR_TO_DATE('31-DEC-06','%d-%b-%y'), 'SA_REP', 80),
(176, STR_TO_DATE('01-JAN-07','%d-%b-%y'), STR_TO_DATE('31-DEC-07','%d-%b-%y'), 'SA_MAN', 80),
(200, STR_TO_DATE('01-JUL-02','%d-%b-%y'), STR_TO_DATE('31-DEC-06','%d-%b-%y'), 'AC_ACCOUNT', 90);

INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID) 
VALUES 
(1000, '1297 Via Cola di Rie', '00989', 'Roma', null, 'IT'),
(1100, '93091 Calle della Testa', '10934', 'Venice', null, 'IT'),
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', null, 'JP'),
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', null, 'CN'),
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
(2300, '198 Clementi North', '540198', 'Singapore', null, 'SG'),
(2400, '8204 Arthur St', null, 'London', null, 'UK'),
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
(2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK'),
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
(2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX');

Insert into REGIONS (REGION_ID,REGION_NAME) values (1,'Europe');
Insert into REGIONS (REGION_ID,REGION_NAME) values (2,'Americas');
Insert into REGIONS (REGION_ID,REGION_NAME) values (3,'Asia');
Insert into REGIONS (REGION_ID,REGION_NAME) values (4,'Middle East and Africa');

use udemy;
-- PAYOUT
-- Repeat the same structure for employee_id 101 to 206
-- Example for 101
-- For employee 105
INSERT INTO PAYOUTS (employee_id, payment_date, payment_type, payout_amount) VALUES
(105, STR_TO_DATE('01-JAN-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-FEB-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-MAR-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-APR-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-MAY-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-JUN-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-JUL-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-AUG-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-SEP-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-OCT-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-NOV-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-DEC-21', '%d-%b-%y'), 'Salary', 7000),
(105, STR_TO_DATE('01-JAN-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-FEB-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-MAR-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-APR-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-MAY-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-JUN-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-JUL-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-AUG-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-SEP-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-OCT-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-NOV-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-DEC-22', '%d-%b-%y'), 'Salary', 7700),
(105, STR_TO_DATE('01-JAN-23', '%d-%b-%y'), 'Salary', 8470);

-- Repeat for employees 106 to 206, with similar salary structure, and increasing by 10% every year

-- For employee 106
INSERT INTO udemy.PAYOUTS (employee_id, payment_date, payment_type, payout_amount) VALUES
(106, STR_TO_DATE('01-JAN-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-FEB-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-MAR-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-APR-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-MAY-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-JUN-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-JUL-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-AUG-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-SEP-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-OCT-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-NOV-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-DEC-21', '%d-%b-%y'), 'Salary', 7200),
(106, STR_TO_DATE('01-JAN-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-FEB-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-MAR-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-APR-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-MAY-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-JUN-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-JUL-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-AUG-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-SEP-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-OCT-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-NOV-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-DEC-22', '%d-%b-%y'), 'Salary', 7920),
(106, STR_TO_DATE('01-JAN-23', '%d-%b-%y'), 'Salary', 8712);

-- Similarly for employees 107 to 206, the salary increases by 10% each year.
-- Continue this pattern for employees 106 to 206.

