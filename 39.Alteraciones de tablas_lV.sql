/*(add alter table) - (drop alter table) - (alter table - modify) - (alter table - ) */
use librery;
drop table if exists articulos;

create table articulos(
	codigo int unsigned auto_increment,
    nombre varchar(20) not null,
    descripcion varchar(30),
    precio decimal(4,2) unsigned,
    primary key(codigo)
);

 insert into articulos (nombre,descripcion,precio)
  values('escuadra','plastico 20 cm.',3.50);
 insert into articulos (nombre,descripcion,precio)
  values('lápices colores','Faber x12',4.50);
 insert into articulos (nombre,descripcion,precio)
  values('lápices colores','Faber x24',7.50);
 insert into articulos (nombre,descripcion,precio)
  values('regla','30 cm.',2.50);
 insert into articulos (nombre,descripcion,precio)
  values('fibras','Faber x12',10.30);
 insert into articulos (nombre,descripcion,precio)
  values('fibras','Faber x6',5.10);
  
/*
El comercio, que hasta ahora ha vendido sus artículos por mayor comenzará la venta por menor. 
Necesita alterar la tabla modificando el nombre del campo "precio" por "preciopormayor" además 
desea redefinirlo como no nulo:
*/
alter table articulos change precio precioxmayor decimal(4,2) unsigned not null;

/*
También necesita alterar la tabla agregando un campo para almacenar el precio por menor para 
cada artículo. Agrege un campo llamado "preciopormenor" que no permita valores nulos:
*/
alter table articulos add precioxmenor decimal(4,2) unsigned not null;

/*
Actualice el campo "preciopormenor" de todos los registros, dándole el valor del campo "precio" 
incrementado en un 10%:
*/
update articulos set precioxmenor=precioxmayor+(precioxmayor*0.10);


describe articulos;
select * from articulos;


