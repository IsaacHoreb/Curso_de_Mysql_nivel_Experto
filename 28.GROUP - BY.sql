#GROUP - BY = Grupar por
#HAVING = Teniendo

use administracion;

drop table if exists cliente;

create table cliente(
	codigo int unsigned auto_increment,
    nombre varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar(20),
    telefono varchar(20),
    primary key(codigo)
);

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Lopez Marcos","Colon 111","Córdoba","Cordoba",null);

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Garduza Leo","Teresa","Jualipapa","Jualipapa","9171234553");

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Karti Gordillo","Dao","Gradlla","Mision","9171134545");

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Bartolo Omero","Calle 3","C-31","Huimang","9071234545");

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Hual Fabi","Reforma","Reforma","Launcher","0071234545");

#Obtener el total de los registro
select count(*) from cliente;

#Obtener el total de los registros que no tienen valor nulo de los telef.alter
select count(telefono) from cliente;

#Obtenga la cantidad de clientes agrupados por ciudad y provincia, ordenados por provincia.
select ciudad, provincia, count(*) from cliente
	group by ciudad, provincia order by provincia;


describe cliente;
select * from cliente;






 