create table STUDENT
(
  st_roll integer not null,
  st_name text not null,
  st_address text not null,
  sub_id integer not null
);
create table TEACHER
(
  t_name text not null,
  t_address text not null,
  t_designation text not null
);
create table CLASS
(
  cl_room integer primary key,
  year integer not null,
  sub_id integer not null
);
create table MARKS
(
  st_roll integer not null,
  sub_id integer not null,
  marks integer null
);
create table SUBJECT
(
  sub_id integer primary key,
  t_name text not null
);


insert into STUDENT values(01,"Anish Roy",   "Kolkata",  101);
insert into STUDENT values(01,"Anish Roy",   "Kolkata",  102);
insert into STUDENT values(01,"Anish Roy",   "Kolkata",  103);
insert into STUDENT values(01,"Anish Roy",   "Kolkata",  104);
insert into STUDENT values(02,"Dabjit Sen",  "Bardwan",  101);
insert into STUDENT values(02,"Dabjit Sen",  "Bardwan",  102);
insert into STUDENT values(02,"Dabjit Sen",  "Bardwan",  103);
insert into STUDENT values(02,"Dabjit Sen",  "Bardwan",  104);
insert into STUDENT values(04,"Arohi Pal",   "Durgapur", 101);
insert into STUDENT values(04,"Arohi Pal",   "Durgapur", 102);
insert into STUDENT values(04,"Arohi Pal",   "Durgapur", 103);
insert into STUDENT values(04,"Arohi Pal",   "Durgapur", 104);
insert into STUDENT values(05,"Rubi Sharma", "Bally",    101);
insert into STUDENT values(05,"Rubi Sharma", "Bally",    102);
insert into STUDENT values(05,"Rubi Sharma", "Bally",    103);
insert into STUDENT values(05,"Rubi Sharma", "Bally",    104);
insert into STUDENT values(06,"Bijoy Dey",   "Hooghly",  101);
insert into STUDENT values(06,"Bijoy Dey",   "Hooghly",  102);
insert into STUDENT values(06,"Bijoy Dey",   "Hooghly",  103);
insert into STUDENT values(06,"Bijoy Dey",   "Hooghly",  104);
insert into STUDENT values(07,"Kustub Dan",  "Goa",      101);
insert into STUDENT values(07,"Kustub Dan",  "Goa",      102);
insert into STUDENT values(07,"Kustub Dan",  "Goa",      103);
insert into STUDENT values(07,"Kustub Dan",  "Goa",      104);
insert into STUDENT values(08,"Paki Sen",    "Bardwan",  101);
insert into STUDENT values(08,"Paki Sen",    "Bardwan",  102);
insert into STUDENT values(08,"Paki Sen",    "Bardwan",  103);
insert into STUDENT values(08,"Paki Sen",    "Bardwan",  104);
insert into STUDENT values(09,"Jonaki Deb",  "Daspur",   104);
insert into STUDENT values(10,"Anu Ganguly", "Devipur",  201);
insert into STUDENT values(10,"Anu Ganguly", "Devipur",  202);
insert into STUDENT values(10,"Anu Ganguly", "Devipur",  203);
insert into STUDENT values(10,"Anu Ganguly", "Devipur",  204);
insert into STUDENT values(11,"Rohan Das",   "Kolkata",  201);
insert into STUDENT values(11,"Rohan Das",   "Kolkata",  202);
insert into STUDENT values(11,"Rohan Das",   "Kolkata",  203);
insert into STUDENT values(11,"Rohan Das",   "Kolkata",  204);
insert into STUDENT values(12,"Arjun Bindra","Kolkata",  201);
insert into STUDENT values(12,"Arjun Bindra","Kolkata",  202);
insert into STUDENT values(12,"Arjun Bindra","Kolkata",  203);
insert into STUDENT values(12,"Arjun Bindra","Kolkata",  204);
insert into STUDENT values(13,"Ashish Shah", "Asansol",  201);
insert into STUDENT values(13,"Ashish Shah", "Asansol",  202);
insert into STUDENT values(13,"Ashish Shah", "Asansol",  203);
insert into STUDENT values(13,"Ashish Shah", "Asansol",  204);
insert into STUDENT values(14,"Avik Parui",  "Dheli",    201);
insert into STUDENT values(14,"Avik Parui",  "Dheli",    202);
insert into STUDENT values(14,"Avik Parui",  "Dheli",    203);
insert into STUDENT values(14,"Avik Parui",  "Dheli",    204);
insert into STUDENT values(15,"Esha Barman", "Nagpur",   201);
insert into STUDENT values(15,"Esha Barman", "Nagpur",   202);
insert into STUDENT values(15,"Esha Barman", "Nagpur",   203);
insert into STUDENT values(15,"Esha Barman", "Nagpur",   204);
insert into STUDENT values(16,"Kunal Pal",   "Nagaland", 101);
insert into STUDENT values(16,"Kunal Pal",   "Nagaland", 102);
insert into STUDENT values(16,"Kunal Pal",   "Nagaland", 103);
insert into STUDENT values(16,"Kunal Pal",   "Nagaland", 104);
insert into STUDENT values(03,"Pulok Jana",  "Bardwan",  101);
insert into STUDENT values(03,"Pulok Jana",  "Bardwan",  102);
insert into STUDENT values(03,"Pulok Jana",  "Bardwan",  103);
insert into STUDENT values(03,"Pulok Jana",  "Bardwan",  104);

insert into TEACHER values("Niloy Adikary",  "Dakshineswar","MSC in CS");
insert into TEACHER values("Atunu Ganguly",  "Devipur",     "MSC in Math");
insert into TEACHER values("Tonay Das",       "Kolkata",    "B.Tech in CSE");
insert into TEACHER values("Shadana Roy",     "Kolkata",    "BSC in IT");
insert into TEACHER values("Biplob Parui",    "Dheli",      "MCA");
insert into TEACHER values("Eshai Ghosh",     "Nagpur",     "MSC in IT");
insert into TEACHER values("Piyas Mondal",    "Goa",        "MBA in Marketing");
insert into TEACHER values("Ankita Sing",     "Asansol",    "MA in Mass Communication");

insert into CLASS values(001,2020,201);
insert into CLASS values(002,2020,202);
insert into CLASS values(003,2020,203);
insert into CLASS values(004,2020,204);
insert into CLASS values(021,2021,101);
insert into CLASS values(022,2021,102);
insert into CLASS values(023,2021,103);
insert into CLASS values(024,2021,104);
insert into CLASS values(025,2022,304);

insert into MARKS values(01,101,460);
insert into MARKS values(01,102,423);
insert into MARKS values(01,103,370);
insert into MARKS values(01,104,null);
insert into MARKS values(02,101,360);
insert into MARKS values(02,102,413);
insert into MARKS values(02,103,378);
insert into MARKS values(02,104,289);
insert into MARKS values(03,101,340);
insert into MARKS values(03,102,413);
insert into MARKS values(03,103,388);
insert into MARKS values(03,104,489);
insert into MARKS values(04,101,340);
insert into MARKS values(04,102,null);
insert into MARKS values(04,103,388);
insert into MARKS values(04,104,489);
insert into MARKS values(05,101,397);
insert into MARKS values(05,102,422);
insert into MARKS values(05,103,328);
insert into MARKS values(05,104,409);
insert into MARKS values(06,101,391);
insert into MARKS values(06,102,422);
insert into MARKS values(06,103,318);
insert into MARKS values(06,104,289);
insert into MARKS values(07,101,311);
insert into MARKS values(07,102,492);
insert into MARKS values(07,103,388);
insert into MARKS values(07,104,484);
insert into MARKS values(08,101,289);
insert into MARKS values(08,102,469);
insert into MARKS values(08,103,399);
insert into MARKS values(08,104,401);
insert into MARKS values(09,101,589);
insert into MARKS values(09,102,489);
insert into MARKS values(09,103,381);
insert into MARKS values(09,104,411);
insert into MARKS values(10,101,489);
insert into MARKS values(10,102,481);
insert into MARKS values(10,103,281);
insert into MARKS values(10,104,null);
insert into MARKS values(11,101,439);
insert into MARKS values(11,102,441);
insert into MARKS values(11,103,481);
insert into MARKS values(11,104,346);
insert into MARKS values(12,101,239);
insert into MARKS values(12,102,401);
insert into MARKS values(12,103,431);
insert into MARKS values(12,104,326);

insert into SUBJECT values(101,"Niloy Adikary");
insert into SUBJECT values(102,"Tonay Das");
insert into SUBJECT values(103,"Atunu Ganguly");
insert into SUBJECT values(104,"Shadana Roy");
insert into SUBJECT values(201,"Biplob Parui");
insert into SUBJECT values(202,"Eshai Ghosh");
insert into SUBJECT values(203,"Piyas Mondal");
insert into SUBJECT values(204,"Ankita Sing");
insert into SUBJECT values(304,"Niloy Adikary");


select sub_id,st_name
from STUDENT
order by sub_id,st_name