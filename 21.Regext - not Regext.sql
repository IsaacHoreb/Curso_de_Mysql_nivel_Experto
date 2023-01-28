#Regexp - not Regexp
#Es parecido a Like o Not Like

/*
	Propiedades:
    
    regexp'[abd]'
    regexp'[a-d]'
    regexp'^A'
	regexp'HP$'
	regexp'a.e'
    regexp'a..e'
    regexp'^......$'
    regexp'......'
    regexp'a.*a'    
*/

use administracion;

drop table if exists personas;

create table personas(
	nombre varchar(50) null
);

insert into personas(nombre) values("Isaac");
insert into personas(nombre) values("Maria");
insert into personas(nombre) values("Alet");
insert into personas(nombre) values("Nadia");
insert into personas(nombre) values("Ingrid");
insert into personas(nombre) values("Jose");
insert into personas(nombre) values("Rut");
insert into personas(nombre) values("Gabi");
insert into personas(nombre) values("Avigail");

select * from personas
	where nombre regexp '[abcd]'; #Busca con las palabras que se especifica
    
select * from personas
	where nombre regexp '[m-n]'; 
    
select * from personas
	where nombre regexp '^A';
    
select * from personas
	where nombre regexp 'ac$';
    
select * from personas
	where nombre regexp 'I.a';
    
select * from personas
	where nombre regexp '^.....$';
 
select * from personas
	where nombre regexp '.....';
 
select * from personas
	where nombre regexp 'a.*a';

select * from personas;
