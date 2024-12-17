use collagelab_db;

create table SALESMAN_MASTER
(
 SALESMANNO varchar(6),
 SALESMANNAME varchar(20),
 ADDRESS1 varchar(30),
 ADDRESS2 varchar(30),
 CITY varchar(30),
 PINCODE numeric(8),
 STATE varchar(20),
 SALAMT numeric(8,2),
 TGTTOGET numeric(6,2),
 YTDSALES numeric(6,2),
 REMARKS varchar(60),
 primary key(SALESMANNO)
);

insert into SALESMAN_MASTER value('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good');
insert into SALESMAN_MASTER value('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good');
insert into SALESMAN_MASTER value('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good');
insert into SALESMAN_MASTER value('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3000,200,150,'Good');
