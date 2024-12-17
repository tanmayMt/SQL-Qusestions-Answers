create table CUSTOMER
(
  c_id integer primary key,
  c_name text not null,
  c_city text not null,
  accn_no text not null
);

create table ACCOUNT
(
  accn_no integer primary key,
  accn_type text not null,
  amount integer not null
);

insert into CUSTOMER values(001,"Esha Ganguly","Kolkata",375015);
insert into CUSTOMER values(002,"Kustab Dan",  "Bally",300935);
insert into CUSTOMER values(003,"Bijoy Barmon","Bardwan",315904);
insert into CUSTOMER values(004,"Paki Sen","Dabipur",394235);
insert into CUSTOMER values(005,"Avirup Das","Kolkata",380345);
insert into CUSTOMER values(006,"Dabjit Roy","Mamari",343915);
insert into CUSTOMER values(007,"Supritha Roy","Bardwan",329465);
insert into CUSTOMER values(1012,"Vurun Sarma","Purulia",324805);
insert into CUSTOMER values(009,"Dabjit Roy","Mamari",500915);
insert into CUSTOMER values(010,"Paki Sen","Dabipur",604235);

insert into ACCOUNT values(375015,"Current Account",1005400);
insert into ACCOUNT values(378935,"Saving Account", 560935);
insert into ACCOUNT values(315904,"Current Account",236509);
insert into ACCOUNT values(394235,"Saving Account", 436732);
insert into ACCOUNT values(604235,"Salary Account", 650897);
insert into ACCOUNT values(380345,"Saving Account", 439867);
insert into ACCOUNT values(343915,"Current Account",343443);
insert into ACCOUNT values(329465,"Saving Account", 452356);
insert into ACCOUNT values(324805,"Salary Account", 879034);
insert into ACCOUNT values(500915,"Fixed Deposit Account",1300650);

select *
from ACCOUNT
where accn_no=375015;