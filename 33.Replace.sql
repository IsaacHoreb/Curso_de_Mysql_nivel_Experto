-- REPLACE--
create database librery;
use librery;

drop table if exists books;

create table books(
	codigo int unsigned default 0,
    titulo varchar(40),
	autor varchar(30),
    editorial varchar(20),
    precio decimal(5,2) unsigned,
    primary key(codigo)
);

insert into books(codigo,titulo,autor,editorial,precio)
	values(10,"Alicia en el pais de las maravillas","Lewis Carroll","Emece",15.4);

insert into books(codigo,titulo,autor,editorial,precio)
	values(15,"Aprende JAVA","Mario Molina","Planeta",25.1);

insert into books(codigo,titulo,autor,editorial,precio)
	values(24,"MySQL","Hernesto Broca","Galaxy",33.34);
    
/*Remplazamos*/
replace into books(codigo,titulo,autor,editorial,precio)
	values(24,"Redes","Eliseo Llanel","Galaxy",45.17);

describe books;
select * from books;


