use niloysir_db;

use niloysir_db;
create table STUDENT
(
 ROLL numeric,
 NAME varchar(15),
 DNO numeric,
 primary key(ROLL),
 foreign key(DNO) references DEPT(DNO)
);

insert into STUDENT values(1,"Sayan Das",002);
insert into STUDENT values(3,"Arohi Sen",001);
insert into STUDENT values(5,"Bijoy Pal",004);
insert into STUDENT values(7,"Dabji Roy",003);
insert into STUDENT values(8,"Arian Roy",002);
insert into STUDENT values(9,"Cayan Dey",003);