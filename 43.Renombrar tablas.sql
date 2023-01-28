create database empresa;
use empresa;

drop table if exists clientes, empleados;

create table clientes(
	documentos char(8) not null,
    nombre varchar(30),
    domicilio varchar(30),
    fechaingresa date,
    sueldo decimal(6,2) unsigned
);

create table empleados(
	documentos char(8) not null,
    nombre varchar(30),
    domicilio varchar(30),
    ciudad varchar(30),
    provincia varchar(30)
);

#Intercambiar nombre de las dos tablas
/*
clientes empleados
clientes = auxiliar : en auxiliar estoy guardando el nombre de clientes
empleados = clientes
auxiliar = empleados
*/
rename table clientes to auxiliar, empleados to clientes, auxiliar to empleados;


show tables from empresa;
describe clientes;
describe empleados;

	