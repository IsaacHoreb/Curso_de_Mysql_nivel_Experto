create database empresa2;
use empresa2;
/*
la tabla izquierda es la tabla1
la tabla derecha es la tabla 2
*/

drop table if exists clientes, provincias;

create table clientes(
	codigo int unsigned auto_increment,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	codigoProvincia tinyint unsigned,	
    telefono varchar(11),
	primary key(codigo)
);

create table provincias(
	codigo tinyint unsigned auto_increment,
	nombre varchar(20),
	primary key (codigo)
);

#Ingrese algunos registros para provincias:
 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');
 insert into provincias (nombre) values('Misiones');
 insert into provincias (nombre) values('Salta');
 insert into provincias (nombre) values('Buenos Aires');
 insert into provincias (nombre) values('Neuquen');

#Ingrese algunos registros para clientes:
insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Marcos', 'Colon 111', 'Córdoba',1,'null');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje',1,'4578585');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria',1,'4578445');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Luis', 'Sarmiento 444', 'Rosario',2,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje',1,'4253685');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe',2,'0345252525');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario',1,'4554455');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje',1,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Ramos Betina', 'San Martin 999', 'Cordoba',1,'4223366');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas',4,'0457858745');

#Queremos saber de qué provincias no tenemos clientes: (que no sea null)
select * from provincias as p left join clientes as c
	on c.codigoProvincia=p.codigo where c.codigoProvincia is not null;

#Queremos saber de qué provincias si tenemos clientes, sin repetir el nombre de la provincia: (distinct)
select distinct * from provincias as p left join clientes as c
	on c.codigoProvincia=p.codigo where c.codigoProvincia is not null;

select * from clientes;
select * from provincias;
describe clientes;
describe provincias;
show tables;
