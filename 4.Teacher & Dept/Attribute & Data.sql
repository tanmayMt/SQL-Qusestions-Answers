create table TEACHER
(
  t_no integer primary key,
  t_name text not null,
  salary integer not null,
  dept_no text not null
);

create table DEPT
(
  dept_no integer primary key,
  dept_name text not null
);

insert into TEACHER values(001,"Esha Ganguly", 75000,102);
insert into TEACHER values(002,"Niloy Adikary",250000,101);
insert into TEACHER values(003,"Rushani Saha", 56000,101);
insert into TEACHER values(004,"Aviraj Das",   45000,103);
insert into TEACHER values(005,"Bijoy Barmon", 65000,102);
insert into TEACHER values(006,"Dabjit Roy",   54000,103);
insert into TEACHER values(007,"Kustab Deb",   32000,104);
insert into TEACHER values(008,"Sourav Pal",   81000,102);
insert into TEACHER values(009,"Ipsita Sen",   44000,103);
insert into TEACHER values(010,"Adrish Jan",   39000,104);
insert into TEACHER values(011,"Rohan Jana",   44000,102);
insert into TEACHER values(012,"Ayan Roy",     39000,104);

insert into DEPT values(101,"Computer Science");
insert into DEPT values(102,"Mechanical");
insert into DEPT values(103,"Tele Communication");
insert into DEPT values(104,"Geography");