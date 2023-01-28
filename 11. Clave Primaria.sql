use administracion;

drop tables if exists users; #Eliminar tabla

create table usuario(
	nombre varchar(50),
    id integer,
    primary key(id) # convertimos en llave primaria
);

insert into usuario(nombre,id) values("Isaac Gonzalez",1);
insert into usuario(nombre,id) values("Pepe Manuel",2);
insert into usuario(nombre,id) values("Lara Juana",3);
insert into usuario(nombre,id) values("Orlando Kartel",4);

select * from usuario;
describe usuario;