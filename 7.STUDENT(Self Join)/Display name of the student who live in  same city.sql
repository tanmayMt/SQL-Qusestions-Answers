
create table STUDENT
(
  Roll integer primary key,
  Name text not null,
  City text not null
);



insert into STUDENT values(23,'Biswarup','Bdn');
insert into STUDENT values(17,'Ayan','Ndp');
insert into STUDENT values(19,'Tanmay','Gup');
insert into STUDENT values(21,'Rohan','Bdn');


select A.Name,B.Name
from STUDENT as A,STUDENT as B
where A.City=B.City
and A.Name<B.Name;