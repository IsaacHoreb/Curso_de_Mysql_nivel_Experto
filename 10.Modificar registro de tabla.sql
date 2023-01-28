use administracion; #Uso la db 

#Creamos la tablas
create table empleado(
	nombre varchar(40),
    codigo int(10)
);

#Insertamos datos
insert into empleado(nombre,codigo) values("Jorge Fonz",1);
insert into empleado(nombre,codigo) values("Isaac Horeb",2);
insert into empleado(nombre,codigo) values("Manuela Partes",3);
insert into empleado(nombre,codigo) values("Lorena Juana",4);

#Actualizar datos o tabla
update empleado set nombre = "Pablo Balcazar" where nombre = "Jorge Fonz"; 
update empleado set nombre = "Karen Perla" where codigo = 3; 
 



show tables;
describe empleado;
select * from empleado;



