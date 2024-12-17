use collagelab_db;

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

insert into CLIENT_MASTER values('C00001','Ivan Bayross',NULL,NULL,'Mumbai',400054,'Maharashtra',15000);
insert into CLIENT_MASTER values('C00002','Mamta Muzumdar',NULL,NULL,'Madras',780001,'Tamil Nadu',0);
insert into CLIENT_MASTER values('C00003','Chhaya Bankar',NULL,NULL,'Mumbai',400057,'Maharashtra',5000);
insert into CLIENT_MASTER values('C00004','Ashwini Joshi',NULL,NULL,'Bangalore',560001,'Karnataka',0);
insert into CLIENT_MASTER values('C00005','Hansel Colaco',NULL,NULL,'Mumbai',400060,'Maharashtra',2000);
insert into CLIENT_MASTER values('C00006','Deepak Sharma',NULL,NULL,'Mangalore',560050,'Karnataka',0);