#GROUP-BY - HAVING
#Having es teniendo en cuenta

CREATE DATABASE empresa;
use empresa;

drop table if exists cliente;

create table cliente(
	codigo int unsigned auto_increment,
    nombre varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar(20),
    telefono varchar(11),
    primary key(codigo)
);

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Lopez Marcos","Colon 111","Córdoba","Cordoba",null);

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Garduza Leo","Teresa","Jualipapa","Jualipapa","9171234553");
    
insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Isaac Horeb","Balca","Jualipapa","Jualipapa","9170034553");

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Karti Gordillo","Dao","Gradlla","Mision","9171134545");

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Bartolo Omero","Calle 3","C-31","Huimang","9071234545");

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Hual Fabi","Reforma","Reforma","Launcher","0071234545");
    
insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Keila Ingrid","Colorado","Reforma","Launcher","1171234545");

#Obtenga el total de los registros agrupados por provincias
select provincia,count(*) from cliente
	group by provincia;
    
    
#Obtenga el total de los registros agrupados por ciudad y provincia
select ciudad,provincia,count(*) from cliente
	group by ciudad,provincia;

#Obtenga el total de los registros agrupados por ciudad y provincia
#sin considerar los que tienen meno o mas de 2 clientes
select ciudad,provincia,count(*) from cliente
	group by ciudad,provincia having count(*) >= 2;

#Obtenga el total de los registros sin telefono nulo, agrupados por ciudad y provincia
#sin considerar los que tienen menos de 2 clientes
select ciudad,provincia,count(*) from cliente where telefono is not null
	group by ciudad,provincia having count(*) > 1;
    
truncate table cliente;
select * from cliente;
