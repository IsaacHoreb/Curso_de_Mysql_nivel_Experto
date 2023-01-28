#Clausula orden by
#Ordena de menor a mayor
use administracion;

create table alumnos(
	id int unsigned not null auto_increment primary key,
    nombre varchar(50) not null,
    edad int unsigned not null
);

insert into alumnos(nombre,edad) values("Karlita",24);
insert into alumnos(nombre,edad) values("Juan",45);
insert into alumnos(nombre,edad) values("Charli",12);
insert into alumnos(nombre,edad) values("Jonas",89);

select * from alumnos order by edad; #Ordenar edad menor a mayor
select * from alumnos order by edad desc; #Ordenar edad mayor a menor

select nombre,edad from alumnos order by id desc;

select * from alumnos;
truncate alumnos;






