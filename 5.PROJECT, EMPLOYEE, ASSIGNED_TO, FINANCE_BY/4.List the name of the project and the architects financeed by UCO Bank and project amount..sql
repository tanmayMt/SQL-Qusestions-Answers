CREATE TABLE PROJECT (
  p_no INTEGER PRIMARY KEY,
  p_name  TEXT NOT NULL,
  location TEXT NOT NULL,
  architect TEXT NOT NULL
);

CREATE TABLE EMPLOYEE (
  e_no INTEGER PRIMARY KEY,
  e_name TEXT NOT NULL,
  city TEXT NOT NULL,
  salary INTEGER NOT NULL
);

CREATE TABLE ASSIGNED_TO (
  p_no INTEGER NOT NULL,
  e_no TEXT NOT NULL
);

CREATE TABLE FINANCE_BY(
  p_no INTEGER PRIMARY KEY,
  company_name TEXT NOT NULL,
  amount INTEGER NOT NULL
);


-- insert
INSERT INTO PROJECT VALUES (01,"GT Road",       "Kolkata",     "Dabjit Roy");
INSERT INTO PROJECT VALUES (02,"Modi Satadiem", "Gujarat",     "Amit Shah");
INSERT INTO PROJECT VALUES (03,"Nibadita Satu", "Dakshineswar","Arohi Sen");
INSERT INTO PROJECT VALUES (04,"Howrah Bridge", "Howrah",      "Tanmay Roy");
INSERT INTO PROJECT VALUES (05,"PDW Office",    "Kolkata",     "Paki Roy");
INSERT INTO PROJECT VALUES (06,"Nation School", "Goa",         "Pulok Pal");

INSERT INTO EMPLOYEE VALUES (01,"Bisu Jana",  "Kolkata",     12000);
INSERT INTO EMPLOYEE VALUES (02,"Dabu Mondal","Dakshineswar",55000);
INSERT INTO EMPLOYEE VALUES (03,"Pintu Roy",  "Bardwan",     15000);
INSERT INTO EMPLOYEE VALUES (04,"Rohim Sen",  "Goa",         31000);
INSERT INTO EMPLOYEE VALUES (05,"Vicky Jan",  "Howrah",      14000);
INSERT INTO EMPLOYEE VALUES (06,"Rajib Deb",  "Kolkata",     21000);
INSERT INTO EMPLOYEE VALUES (07,"Vikash Dan", "Goa",         61000);
INSERT INTO EMPLOYEE VALUES (08,"Rohim Sen",  "Kolkata",     31000);
INSERT INTO EMPLOYEE VALUES (09,"Robi Dey",   "Dakshineswar",34000);
INSERT INTO EMPLOYEE VALUES (10,"Rohit Pal",  "Hooghly",     37000);
INSERT INTO EMPLOYEE VALUES (11,"Arohi Sau",  "Bally",       38000);
INSERT INTO EMPLOYEE VALUES (12,"Bitu Pal",   "Goa",         48000);
INSERT INTO EMPLOYEE VALUES (13,"Raju Sau",   "Patna",       28000);
INSERT INTO EMPLOYEE VALUES (14,"Moti Kar",   "Monipur",     33000);
INSERT INTO EMPLOYEE VALUES (15,"Sam jana",   "Balur",       58000);

INSERT INTO ASSIGNED_TO VALUES (01,01);
INSERT INTO ASSIGNED_TO VALUES (01,06);
INSERT INTO ASSIGNED_TO VALUES (02,04);
INSERT INTO ASSIGNED_TO VALUES (02,10);
INSERT INTO ASSIGNED_TO VALUES (02,11);
INSERT INTO ASSIGNED_TO VALUES (03,02);
INSERT INTO ASSIGNED_TO VALUES (03,08);
INSERT INTO ASSIGNED_TO VALUES (04,03);
INSERT INTO ASSIGNED_TO VALUES (04,05);
INSERT INTO ASSIGNED_TO VALUES (04,07);
INSERT INTO ASSIGNED_TO VALUES (04,09);
INSERT INTO ASSIGNED_TO VALUES (05,12);
INSERT INTO ASSIGNED_TO VALUES (05,13);
INSERT INTO ASSIGNED_TO VALUES (06,14);
INSERT INTO ASSIGNED_TO VALUES (06,15);

INSERT INTO FINANCE_BY VALUES (01,"UCO",       10000000);
INSERT INTO FINANCE_BY VALUES (02,"UCO",       25000000);
INSERT INTO FINANCE_BY VALUES (03,"TATA Group",5000000);
INSERT INTO FINANCE_BY VALUES (04,"SBI",       4000000);
INSERT INTO FINANCE_BY VALUES (05,"WBIDC",     4060000);
INSERT INTO FINANCE_BY VALUES (06,"WBIDC",     2060000);


select p_name,architect
from PROJECT,FINANCE_BY
where PROJECT.p_no=FINANCE_BY.p_no
and company_name='UCO';





