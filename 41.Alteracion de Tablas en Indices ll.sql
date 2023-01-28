use hospital;

drop table if exists medicamentos;

create table medicamentos(
	codigo int unsigned not null,
    nombre varchar(20) not null,
    laboratorio varchar(20),
    precio decimal(6,2) unsigned
);

/*
Agregar una clave primaria para codigo
*/
alter table medicamentos add primary key(codigo);

#modificar la primary key
alter table medicamentos modify codigo int unsigned not null auto_increment;

#Elimar la clave primaria(mas recomendable)
alter table medicamentos drop primary key;


show index from medicamentos;
describe medicamentos;

