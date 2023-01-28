/*(add alter table) - (drop alter table) - (alter table - modify) - (alter table - ) */
use videoclub;
drop table if exists usuarios;

create table usuarios(
	nombre varchar(30),
    clave varchar(10)
);

#Eliminar el campo clave
alter table usuarios drop clave;

#Visualizar estructuras
describe usuarios;

#Eliminar el unico campo que queda
alter table usuarios drop nombre;

select * from usuarios;
