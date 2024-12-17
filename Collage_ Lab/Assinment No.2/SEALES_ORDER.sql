use collagelab_db;

update CLIENT_MASTER
set CITY='Bangalore'
where CLIENTNO='C00005';

select * from CLIENT_MASTER
where CLIENTNO='C00005';