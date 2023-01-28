# max - min - sum - avg
use administracion;

create table students(
	notas int
);

insert into students(notas) values(12);
insert into students(notas) values(14);
insert into students(notas) values(15);
insert into students(notas) values(16);
insert into students(notas) values(17);
insert into students(notas) values(18);
insert into students(notas) values(19);
insert into students(notas) values(20);
insert into students(notas) values(21);
insert into students(notas) values(22);
insert into students(notas) values(23);
insert into students(notas) values(24);

#seleccionar el maximo valor
select max(notas) from students;

#seleccionar el minimo valor
select min(notas) from students;

#seleccionar y suma todos los valor
select sum(notas) from students;

#Selecciona los valores y optiene el promedio
select avg(notas) from students;

select * from students;



