create table CLIENT_MASTER
(
 CLIENTNO varchar(6),
 NAME varchar(20),
 ADDRESS1 varchar(30) NULL,
 ADDRESS2 varchar(30) NULL,
 CITY varchar(15),
 PINCODE numeric(8),
 STATE varchar(15),
 BALDUE numeric(10,2)

);

create table PRODUCT_MASTER
(
 PRODUCTNO varchar(6),
 DESCRIPTION varchar(15),
 PROFITPERCENT numeric(4,2),
 UNITMEASURE varchar(10),
 QTYONHAND numeric(8),
 REORDERLVL numeric(8),
 SELLPRICE numeric(8,2),
 COSTPRICE numeric(8,2)
);

create table SALEMAN_MASTER
(
 SALEMANNO varchar(6),
 SALEMANNAME varchar(20),
 ADDRESS1 varchar(30),
 ADDRESS2 varchar(30),
 CITY varchar(30),
 PINCODE numeric(8),
 STATE varchar(20),
 SALAME numeric(8,2),
 TGTTOGET numeric(6,2),
 YTDSALES numeric(6,2),
 REMARKS varchar(60)
);

insert into CLIENT_MASTER values('C00001','Ivan Bayross',NULL,NULL,'Mumbai',400054,'Maharashtra',15000);
insert into CLIENT_MASTER values('C00002','Mamta Muzumdar',NULL,NULL,'Madras',780001,'Tamil Nadu',0);
insert into CLIENT_MASTER values('C00003','Chhaya Bankar',NULL,NULL,'Mumbai',400057,'Maharashtra',5000);
insert into CLIENT_MASTER values('C00004','Ashwini Joshi',NULL,NULL,'Bangalore',560001,'Karnataka',0);
insert into CLIENT_MASTER values('C00005','Hansel Colaco',NULL,NULL,'Mumbai',400060,'Maharashtra',2000);
insert into CLIENT_MASTER values('C00006','Deepak Sharma',NULL,NULL,'Mangalore',560050,'Karnataka',0);

insert into PRODUCT_MASTER values('P00001','T-Shirts',5,'Piece',200,50,350,250);
insert into PRODUCT_MASTER values('P0345','Shirts',6,'Piece',150,50,500,350);
insert into PRODUCT_MASTER values('P06734','Cotton Jeans',5,'Piece',100,20,600,450);
insert into PRODUCT_MASTER values('P07865','Jeans',5,'Piece',100,20,750,500);
insert into PRODUCT_MASTER values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into PRODUCT_MASTER values('P07885','Pull Overs',2.5,'Piece',80,30,700,450);
insert into PRODUCT_MASTER values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into PRODUCT_MASTER values('P07975','Lycra Tops',5,'Piece',70,30,350,175);
insert into PRODUCT_MASTER values('P08865','Skirts',5,'Piece',75,30,450,300);

insert into SALEMAN_MASTER value('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good');
insert into SALEMAN_MASTER value('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good');
insert into SALEMAN_MASTER value('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good');
insert into SALEMAN_MASTER value('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good');


select * from CLIENT_MASTER;
select * from PRODUCT_MASTER;
select * from SALEMAN_MASTER;

