#Usar BD
use administracion;

#Creamos tabla en la BD
create table libro(
	autor varchar(50),
	titulo varchar(30),
	precio float,
    cantidad integer
);

#Insertamos datos a la tabla en especifico(libro) 
insert into libro(autor, titulo, precio, cantidad) values ('Isaac Horeb','El gran Majestad',100000.00, 1000000);

insert into libro(autor, titulo, precio, cantidad) 
	values ('Karen Yudit','My Love',1250.23, 100);

insert into libro(autor, titulo, precio, cantidad) 
	values ('Eden Pinol','El Pinol',2000.00, 5000);
    
#Si queremos ver todo de tabla(libro)
select * from libro;    
