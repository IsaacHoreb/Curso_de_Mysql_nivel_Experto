/*DISTINT - AS*/

use empresa;
drop table if exists cliente;

create table cliente(
	codigo int unsigned auto_increment primary key,
    nombre varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar(20),
    telefono varchar(11)
);

insert into cliente(nombre,domicilio,ciudad,provincia,telefono)
	values("Lopez Marcos","Colon 111","Cordoba","Cordoba", null);
    
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

/*
Obtenga el total de los registros que no tienen valor nulo en los telefonos
y coloque un alias para dicha columna
*/
select count(telefono) as 'con telefono'
	from cliente;
    
/*
Muestre la cantidad de clientes que se apelliden 'Perez' colocando un alias para 
dicha salida.
*/
select count(*) as 'Los Perez' from cliente
	where nombre like '%Perez%';

/*
Obtenga la cantidad de ciudades DISTINTAS por provincias en las 
cuales hay clientes, coloque un alias.
*/
select provincia,count(distinct ciudad) as 'Ciudades'
	from cliente group by provincia;
 



 

describe cliente;
select * from cliente;






 