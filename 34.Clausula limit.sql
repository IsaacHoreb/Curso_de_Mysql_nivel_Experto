/*limit-rand*/
create database ventas;
use ventas;

drop table if exists articulos;

create table articulos(
	codigo int unsigned auto_increment,
    nombre varchar(25) not null,
	descripcion varchar(30),
    precio decimal(6,2) unsigned,
    cantidad tinyint unsigned,
    primary key(codigo)
);

insert into articulos(nombre,descripcion,precio,cantidad)
	values('Impresora','Epson Stylus C45',400,80.20);

insert into articulos(nombre,descripcion,precio,cantidad)
	values('Impresora','Epson Stylus C85',500,30);
    
insert into articulos(nombre,descripcion,precio,cantidad)
	values('Monitor','LG 14',800,10);
    
insert into articulos(nombre,descripcion,precio,cantidad)
	values('Telefono','Ingles Biswal',100,50);
    
insert into articulos(nombre,descripcion,precio,cantidad)
	values('Telefono','Español Biswal',90,50);
    
insert into articulos(nombre,descripcion,precio,cantidad)
	values('Impresora multifuncional','HP 1410',300,20);

/*
El comercio quiere tomar 2 articulos al azar para ofrecer una oferta especial haciendo un 
descuento. Seleccione 2 registros al azar de la tabla 'articulos':
*/
select * from articulos order by rand() limit 2;

describe articulos;
select * from articulos;




