use administracion;
drop table if exists medicamentos;

create table medicamentos(
	codigo int unsigned auto_increment,
    nombre varchar(20),
    laboratorio varchar(20),
    precio decimal(5,2),
    cantidad int unsigned,
    primary key(codigo)
);

insert into medicamentos(nombre,laboratorio,precio,cantidad)
	values("Buscapina","Los Reyes",5.34,100);
insert into medicamentos(nombre,laboratorio,precio,cantidad)
	values("Paracetamos","Muruk",45.34,21);
insert into medicamentos(nombre,laboratorio,precio,cantidad)
	values("Naproceno","Mamador",554,454);
insert into medicamentos(nombre,laboratorio,precio,cantidad)
	values("Pamitrozon","Luapo",12,340);

#Ordenar los registros por precio, de mayor a menor
select * from medicamentos 
	order by precio desc;

#Ordenar los registros por precio, de menor a mayor
select * from medicamentos 
	order by precio asc;

#Ordenar los registro por laboratorio(descendente) y cantidad de manera ascendente.
select * from medicamentos
	order by laboratorio desc, cantidad asc;


select * from medicamentos;
describe medicamentos; 