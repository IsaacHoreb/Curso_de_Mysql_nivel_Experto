#Subconsultas 'in'
use empresa;
drop tables if exists clientes, ciudades;

create table ciudades(
  codigo int auto_increment,
  nombre varchar(20),
  primary key (codigo)
 );

create table clientes (
  codigo int auto_increment,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad smallint not null,
  primary key(codigo)
 );
 
-- Ingrese algunos registros para ambas tablas:
insert into ciudades (nombre) values('Cordoba');
insert into ciudades (nombre) values('Cruz del Eje');
insert into ciudades (nombre) values('Carlos Paz');
insert into ciudades (nombre) values('La Falda');
insert into ciudades (nombre) values('Villa Maria');

insert into clientes(nombre,domicilio,codigociudad) values ('Lopez Marcos','Colon 111',1);
insert into clientes(nombre,domicilio,codigociudad) values ('Lopez Hector','San Martin 222',1);
insert into clientes(nombre,domicilio,codigociudad) values ('Perez Ana','San Martin 333',2);
insert into clientes(nombre,domicilio,codigociudad) values ('Garcia Juan','Rivadavia 444',3);
insert into clientes(nombre,domicilio,codigociudad) values ('Perez Luis','Sarmiento 555',3);
insert into clientes(nombre,domicilio,codigociudad) values ('Gomez Ines','San Martin 666',4);
insert into clientes(nombre,domicilio,codigociudad) values ('Torres Fabiola','Alem 777',5);
insert into clientes(nombre,domicilio,codigociudad) values ('Garcia Luis','Sucre 888',5);
 
-- Necesitamos conocer los nombres de las ciudades de aquellos clientes cuyo domicilio es en calle 
-- "San Martin", empleando subconsulta.
select * from ciudades 
	where codigo in 
		(select codigociudad from clientes where domicilio like 'San Martin%');

-- Obtenga la misma salida anterior pero empleando join.
select distinct * from ciudades as ci join clientes as cl 
	on cl.codigociudad=ci.codigo where domicilio like 'San Martin%';
    
-- Obtenga los nombre de las ciudades de los clientes cuyo apellido no comienza con una letra 
-- específica, empleando subconsulta.
select c.nombre, c.codigo, cl.nombre, cl.codigociudad from ciudades as c
	join clientes as cl on c.codigo=cl.codigociudad where cl.nombre not like 'G%';

select * from clientes;
select * from ciudades;

truncate clientes;
truncate ciudades;