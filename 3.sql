Create database administracion;
use administracion;

#Creamos tabla
create table people(
	nombre varchar(50),
    apellido varchar(60),
    telefono varchar(60),
    gmail varchar(100)
);

create table users (
	nombre varchar(50),
	edad int(40)
);

show tables;

#Decribe tablas
#describe people; show columns from people;
#drop table if exists people;

