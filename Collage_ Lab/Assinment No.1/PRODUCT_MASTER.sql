use collagelab_db;

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

insert into PRODUCT_MASTER values('P00001','T-Shirts',5,'Piece',200,50,350,250);
insert into PRODUCT_MASTER values('P0345','Shirts',6,'Piece',150,50,500,350);
insert into PRODUCT_MASTER values('P06734','Cotton Jeans',5,'Piece',100,20,600,450);
insert into PRODUCT_MASTER values('P07865','Jeans',5,'Piece',100,20,750,500);
insert into PRODUCT_MASTER values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into PRODUCT_MASTER values('P07885','Pull Overs',2.5,'Piece',80,30,700,450);
insert into PRODUCT_MASTER values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into PRODUCT_MASTER values('P07975','Lycra Tops',5,'Piece',70,30,350,175);
insert into PRODUCT_MASTER values('P08865','Skirts',5,'Piece',75,30,450,300);