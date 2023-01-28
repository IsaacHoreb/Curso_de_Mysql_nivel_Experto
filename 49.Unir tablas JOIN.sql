create database biblioteca;
use biblioteca;

drop table if exists libros, editoriales;

create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(30) not null default 'Desconocido',
  codigoeditorial tinyint unsigned not null,
  precio decimal(5,2) unsigned,
  cantidad smallint unsigned default 0,
  primary key (codigo)
 );

create table editoriales(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20) not null,
  direccion varchar(30) not null,
  primary key(codigo)
 );

insert into editoriales (nombre,direccion) values('Paidos','Colon 190');
insert into editoriales (nombre,direccion) values('Emece','Rivadavia 765');
insert into editoriales (nombre,direccion) values('Planeta','General Paz 245'); 
insert into editoriales (nombre,direccion) values('Sudamericana','9 de Julio 1008');

insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('El Aleph','Borges',3,43.5,200);
insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll',2,33.5,100);
insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Aprenda PHP','Mario Perez',1,55.8,50);
insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Java en 10 minutos','Juan Lopez',1,88,150);
insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Alicia a traves del espejo','Lewis Carroll',1,15.5,80);
insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Cervantes y el quijote','Borges- Bioy Casares',3,25.5,300);

#Unir tablas JOIN
#Manera 1°
select * from libros join editoriales on libros.codigoeditorial=editoriales.codigo;

#Manera 2°
select * from libros as l join editoriales as e on l.codigoeditorial=e.codigo;


select * from editoriales;
select * from libros;
