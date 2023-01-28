create database escuela;

use escuela;

drop table if exists alumnos;

create table alumnos(
	id int unsigned not null auto_increment primary key,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    seccion varchar(1) not null
);

describe alumnos;
select * from alumnos;

