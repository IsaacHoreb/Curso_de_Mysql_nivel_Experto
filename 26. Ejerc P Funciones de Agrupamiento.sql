#Ejercicio de Agrupamiento
# max - min - sum - avg
use administracion;

drop table if exists visitantes;

create table visitantes(
	nombre varchar(30),
    edad tinyint unsigned,
	sexo char(1),
    domicilio varchar(30),
    ciudad varchar(20),
    telefono varchar(11),
    montocompra decimal(6,2) unsigned
);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Pablo',66,'M','C-32','Teapa','9991231212',124.56);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Isaias',45,'M','Reforma','Reforma','1291231211',0);
    
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Sara',18,'F','Puente','Cardenas','9695234211',0);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Cintia',22,'F','Desecho','Huimanguillo','0091331310',0);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Marcos',45,'M','C-32','Nacajuca','1111231102',56.30);
   
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Patricia',33,'F','C-1','Teapa','0000000000',0);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Silvia',14,'F','Reforma','Reforma','881831211',45.34);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompra)
	values('Pedro',56,'M','C-24','Cardenas','989128188',4.5);

#Solicitar la cantidad de visitantes en el stand
select count(*) from visitantes;

#Muestre la suma de las compras de todos los visitantes de 
#"Teapa".
select sum(montocompra) from visitantes
	where ciudad = "Teapa";
	
#Muestre el valor maxiomo de las compras efectuadas
select max(montocompra) from visitantes;    

#Muestre la edad menor de los visitantes
select min(edad) from visitantes;

#Muestre el promedio de edades de los visitante
select avg(edad) from visitantes;

#Muestre el promedio de monto de compras
select avg(montocompra) from visitantes;






describe visitantes;
select * from visitantes;



