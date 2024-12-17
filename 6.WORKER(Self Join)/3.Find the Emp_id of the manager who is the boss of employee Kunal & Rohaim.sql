
create table WORKER
(
 Emp_id integer primary key,
 Name   text not null,
 Manager_id integer 
);

insert into WORKER values(1,'Rahul',3);
insert into WORKER values(2,'Joy',3);
insert into WORKER values(3,'Sonam',4);
insert into WORKER values(4,'Ram',5);
insert into WORKER values(5,'Kunal',6);
insert into WORKER values(6,'Rani',null);
insert into WORKER values(7,'Rohim',6);

select B.Emp_id
from WORKER A,WORKER B
where A.Manager_id=B.Emp_id
and A.Name='Kunal' 
and A.Name='Rohim';