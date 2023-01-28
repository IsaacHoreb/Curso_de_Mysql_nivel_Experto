/*(add alter table) - (drop alter table) - (alter table - modify) - (alter table - ) */
use videoclub;
drop table if exists peliculas;

create table peliculas(
	codigo int unsigned,
    nombre varchar(20) not null,
    actor varchar(20),
    director varchar(25),
    duracion tinyint
);

#Modificamos el campo "duracion" por tinyint unsigned
alter table peliculas modify duracion tinyint unsigned;

#Modifique el campo "nombre" para almacenar una longitud de 40 caracteres y que no
#permita valores nulos.
alter table peliculas modify nombre varchar(40) not null;

#Modifique el campo "actor" para que no permita valores nulos
alter table peliculas modify actor varchar(20) not null;

#Intente definir "auto_increment" en el campo codigo (Message Error)
#Caso contrario, si se agrega que sea "Primary Key" si se puede hacer auto_increment.
alter table peliculas modify codigo int unsigned not null primary key auto_increment;

describe peliculas;
