#Ejercicio Practico de Agrupamiento
# max - min - sum - avg - like

use administracion;

drop table if exists peliculas;

create table peliculas(
	codigo int unsigned auto_increment,
    titulo varchar(30) not null,
    actor varchar(20),
    duracion tinyint unsigned,
    primary key(codigo)
);

insert into peliculas(titulo,actor,duracion)
	values("Mision Imposible","Fabi Garcia",120);

insert into peliculas(titulo,actor,duracion)
	values("Rapido y Furiosos","Diln Disel",200);

insert into peliculas(titulo,actor,duracion)
	values("Rampar","Juan Pacheco",180);

insert into peliculas(titulo,actor,duracion)
	values("Imposible","Roca",90);

insert into peliculas(titulo,actor,duracion)
	values("Airo Man","Martin Del Tor",122);

insert into peliculas(titulo,actor,duracion)
	values("Sapos y Serpientes","Anonimo",145);
    
insert into peliculas(titulo,actor,duracion)
	values("RascaCielo","Roca",220);

insert into peliculas(titulo,actor,duracion)
	values("Ada Accidente","Roca",110);


#Muestre el valor de duracion mas extenso
select max(duracion) from peliculas;

#Muestre el promedio de duracion
select avg(duracion) from peliculas;

#Cuente la cantidad de Movies que comiencen con la cadena
#Harry Potter
select count(*) from peliculas
	where actor like "%Harry Potter%";
    
#Numero total de minutas de la Roca
select sum(duracion) from peliculas
	where actor like "%Roca%";

select * from peliculas;
