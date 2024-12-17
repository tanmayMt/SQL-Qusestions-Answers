use niloysir_db;

create table WORKER
(
 WORKER_ID integer primary key,
 FIRST_NAME varchar(16),
 LAST_NAME varchar(15),
 SALARY numeric,
 JOINNING_DATE datetime,
 DEPARTMENT varchar(10)
);
insert into WORKER values(001,"Monika","Arora",100000,"2014-02-20 09:00:00","HR");
insert into WORKER values(009,"Aroi","Sen",800000,"2014-02-20 09:00:00","HR");
insert into WORKER values(001,"Monika","Arora",100000,"2014-02-20 09:00:00","HR");
insert into WORKER values(002,"Niharika","Verma",800000,"2014-06-11 09:00:00","Admin");
insert into WORKER values(003,"Vishal","Singhal",300000,"2014-02-20 09:00:00","HR");
insert into WORKER values(004,"Amitabh","Singh",500000,"2014-02-20 09:00:00","Admin");
insert into WORKER values(005,"Vivek","Bhati",500000,"2014-06-11 09:00:00","Admin");
insert into WORKER values(006,"Vipul","Diwan",200000,"2014-06-11 09:00:00","Account");
insert into WORKER values(007,"Satish","Kumar",75000,"2014-01-20 09:00:00","Account");
insert into WORKER values(008,"Geetika","Chauhan",90000,"2014-04-11 09:00:00","Admin");

select * from WORKER;

create table BONUS
(
 WORKER_REF_ID integer,
 BONUS_DATE datetime,
 BONUS_AMOUNT integer
);
insert into BONUS values(1,"2016-02-20 00:00:00",5000);
insert into BONUS values(2,"2016-06-11 00:00:00",3000);
insert into BONUS values(3,"2016-02-20 00:00:00",4000);
insert into BONUS values(1,"2016-02-20 00:00:00",4500);
insert into BONUS values(2,"2016-06-11 00:00:00",3500);

select * from BONUS;

create table TITLE
(
  WORKER_REF_ID integer,
  WORKER_TITLE varchar(18),
  AFFECTED_FROM datetime
);
insert into TITLE values(1,"Manager","2016-02-20 00:00:00");
insert into TITLE values(2,"Executive","2016-06-11 00:00:00");
insert into TITLE values(8,"Executive","2016-06-11 00:00:00");
insert into TITLE values(5,"Manager","2016-06-11 00:00:00");
insert into TITLE values(4,"Asst. Manager","2016-06-11 00:00:00");
insert into TITLE values(7,"Executive","2016-06-11 00:00:00");
insert into TITLE values(6,"Lead","2016-06-11 00:00:00");
insert into TITLE values(3,"Lead","2016-06-11 00:00:00");

select * from TITLE;

select * from WORKER
where FIRST_NAME like '%a%';
 
select * from WORKER 
where FIRST_NAME like '%a';

select * from WORKER 
where FIRST_NAME like '_____h';

select * from WORKER 
where SAlARY >= 100000 and SALARY <= 500000;

select * from WORKER
where JOINNING_DATE = "2014-02-20 09:00:00";

select count(*) as Number_of_Admin from WORKER
where DEPARTMENT = "Admin";

select  * from WORKER 
where SAlARY >= 50000 and SALARY <= 100000;

select DEPARTMENT, count(WORKER_ID) No_Of_Workers
from WORKER
group by DEPARTMENT
order by No_Of_Workers desc;

select WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINNING_DATE,DEPARTMENT
from WORKER,TITLE
where WORKER.WORKER_ID = TITLE.WORKER_REF_ID
and WORKER_TITLE= "Manager";

select *, count(*) from BONUS
group by WORKER_REF_ID
having (count(*) > 1);

select * 
from WORKER
where mod(WORKER_ID,2) != 0;

select * 
from WORKER
where mod(WORKER_ID,2) = 0;


create table TITLE_CLONE like TITLE;
insert into TITLE_CLONE select * from TITLE;
select * from TITLE;

select WORKER_REF_ID from BONUS
intersect
select WORKER_REF_ID from TITLE;

select * from TITLE
where not exists
(
 select * from TITLE_CLONE
 where TITLE.WORKER_REF_ID = TITLE_CLONE.WORKER_REF_ID
);

select curdate() as CUR_DATE;
select getdate() as CUR_DATE;

select * from WORKER
limit 3;
select top 5 * from WORKER; 

select SALARY from WORKER
order by SALARY desc limit 5;

select max(SALARY) from WORKER
where SALARY < (select max(SALARY) from WORKER) and SALARY<(select max(SALARY) from WORKER) and SALARY< (select max(SALARY) from WORKER) and SALARY< (select max(SALARY) from WORKER);


select * from WORKER,WORKER A
where WORKER.SALARY=A.SALARY and WORKER.WORKER_ID != A.WORKER_ID;

select max(SALARY) from WORKER
where SALARY < (select max(SALARY) from WORKER);

select *
from WORKER A
cross join
(select 1 as n union all select 2) n;

select WORKER_REF_ID
from BONUS
intersect
select WORKER_REF_ID
from TITLE;

select * from WORKER
where WORKER_ID <= (select count(WORKER_ID)/2 from Worker);

select DEPARTMENT from WORKER
group by DEPARTMENT
having count(DEPARTMENT)<5;

select DEPARTMENT,count(DEPARTMENT) no_of_workers from WORKER
group by DEPARTMENT;

select * from WORKER
order by WORKER_ID desc limit 1;

select * from WORKER
order by WORKER_ID desc limit 5;

select DEPARTMENT,max(SALARY) MAX_SALARY from WORKER
group by DEPARTMENT;

SELECT DISTINCT SALARY FROM WORKER A
WHERE 3 >= (
			SELECT COUNT(DISTINCT SALARY) 
			FROM WORKER B 
			WHERE B.SALARY >= A.SALARY
			) 
ORDER BY A.SALARY DESC;

SELECT DISTINCT SALARY FROM WORKER A
WHERE 3 >= (
            SELECT COUNT(DISTINCT SALARY) FROM WORKER B 
            WHERE B.SALARY <= A.SALARY
            ) 
ORDER BY A.SALARY;



select DEPARTMENT, sum(SALARY) TOTAL_SALARY from WORKER
group by DEPARTMENT;

select DEPARTMENT, max(SALARY) HIGHEST_SALARY from WORKER
group by DEPARTMENT;


desc WORKER;
select FIRST_NAME, SALARY from WORKER
where SALARY >= all
               ( 
                select SALARY from WORKER
			   );

delete from WORKER
where SALARY = 800000;

select WORKER_ID from WORKER
where WORKER_ID = '&WORKER_ID';