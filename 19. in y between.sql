#in y between
use administracion;

create table estudiantes(
	id int unsigned not null auto_increment primary key,
    nombre varchar(50) not null,
    edad tinyint unsigned not null
);

insert into estudiantes(nombre,edad)
	values("Isaac",45);
    
insert into estudiantes(nombre,edad)
	values("Emiliano",55);   

insert into estudiantes(nombre,edad)
	values("Carlos",25);

insert into estudiantes(nombre,edad)
	values("Juan",15);
    
insert into estudiantes(nombre,edad)
	values("Eliseo",12);
    
insert into estudiantes(nombre,edad)
	values("Arlet",34);
    
insert into estudiantes(nombre,edad)
	values("Merlina",88);

#in
select * from estudiantes
	where nombre in("Isaac","Carlos");

#between
select * from estudiantes
	where nombre between "Juan" and "Merlina";

select * from estudiantes
	where edad between 25 and 34;

select * from estudiantes;
    


