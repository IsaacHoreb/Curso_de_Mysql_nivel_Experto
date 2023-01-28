#Like - not Like
use administracion;
drop table if exists registro;

create table registro(
	nombre varchar(50) null
);

insert into registro(nombre) values("Isaac");
insert into registro(nombre) values("Miguel");
insert into registro(nombre) values("Fernanda");
insert into registro(nombre) values("Pedro");
insert into registro(nombre) values("Juan");
insert into registro(nombre) values("Karla");
insert into registro(nombre) values("Sara");
insert into registro(nombre) values("Ingrid");
insert into registro(nombre) values("Avigail");
insert into registro(nombre) values("Martha");
insert into registro(nombre) values("Karen");
insert into registro(nombre) values("Thareni");
insert into registro(nombre) values("Paty");
insert into registro(nombre) values("Anett");
insert into registro(nombre) values("Maria Jose");

#Ejemplo de Like
/*
Busca los valores que de la BD que tenga el valor igual o parecido
*/
select * from registro
	where nombre like "%Martha%";

#Esta manera busca los que inicia con M
select * from registro
	where nombre like "M%"; 
    
#Esta manera son que no contenga tal dato
select * from registro
	where nombre not like "%Martha%";
 
#Esta manera igual se usa si no sabe 
#como es el registro completo
select * from registro
	where nombre like 'Isaa_';
    
select * from registro;
describe registro;		
