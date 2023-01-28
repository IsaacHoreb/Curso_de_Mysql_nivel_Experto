/*(add alter table) - (drop alter table) - (alter table - modify) - (alter table - ) */
Create database videoclub;
use videoclub;

create table movies(
	codigo int unsigned auto_increment,
    nombre varchar(30) not null,
    actor varchar(20),
    primary key(codigo)
);

insert into movies(nombre,actor) values("Rapido y furioso","Vin diesel");
insert into movies(nombre,actor) values("Transforme","Primet");
insert into movies(nombre,actor) values("Intensamente","Maria Bolu");
insert into movies(nombre,actor) values("Duro de matar","Rambo");
insert into movies(nombre,actor) values("Agente 007","Joun Shimyu");
insert into movies(nombre,actor) values("Armada","Garou Vaiila");
insert into movies(nombre,actor) values("Pentagono","Sarah Rous");

/*
Agregue un campo para almacenar la duracion de las peliculas, de  tipo tinying unsigned
*/
alter table movies add duracion tinyint unsigned;

#describimos la tabla
describe movies;

/*
Agregue el campo director para almacenar el nombre del director, de tipo varchar(20)
*/
alter table movies add director varchar(20);

#Otros procesos
truncate movies;
select * from movies;