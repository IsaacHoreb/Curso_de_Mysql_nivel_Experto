use administracion;
drop table if exists pelicula;

create table pelicula(
	codigo int unsigned auto_increment,
    titulo varchar(30) not null,
    actor varchar(20),
    duracion tinyint unsigned,
    primary key(codigo)
);

insert into pelicula(titulo,actor,duracion) 
	values("Mission Imposible","Tom Crusie",120);
insert into pelicula(titulo,actor,duracion) 
	values("Termineito","Grale",40);
insert into pelicula(titulo,actor,duracion) 
	values("Dragon Ball super","Goku",200);
insert into pelicula(titulo,actor,duracion) 
	values("Bleach","Ichigo Kuruzaky",30);
insert into pelicula(titulo,actor,duracion) 
	values("Booom","Alex Mensar",150);
insert into pelicula(titulo,actor,duracion) 
	values("Indestructible","Barcio Lar",180);

update pelicula set actor = "R. Gere - J. Roberts"
	where codigo = 5;

select * from pelicula 
	where actor like "%Barcio Lar%";

select * from pelicula 
	where actor not like "%I%" and actor like "%G%";
    
select * from pelicula
	where titulo like "%M%" and duracion < 150;

update pelicula set duracion = 125
	where actor like "%I%";

select * from pelicula
	where duracion like 100 and actor like "G%";

select * from pelicula;


