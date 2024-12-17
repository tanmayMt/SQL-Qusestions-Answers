use collagelab_db;

update CLIENT_MASTER
set BALDUE=1000
where CLIENTNO="C00001";

select * from client_master
where CLIENTNO="C00001";