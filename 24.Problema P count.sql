#Count
use administracion;

drop table if exists visitantes;

create table visitantes(
	nombre varchar(30),
    edad tinyint unsigned,
    sexo char(1),
    domicilio varchar(50),
    ciudad varchar(50),
    telefono varchar(11),
    montocompras decimal(6,2) unsigned
);

insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Alejandro",34,"M","C-34","Cardenas",34234523,45.45);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Pedro",24,"M","El puente","Huimanguillo",3456546,10.00);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Alejandra",12,"F","Santana","Cardenas",1123123,67.53);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Maria",34,"F","C-31","Cardenas",34234523,45.45);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Yambel",34,"F","Falsilc","Huimanguillo",34234523,15.45);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Juana",34,"F","NewYear","Cardenas",34234523,77.45);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Sandra",34,"F","Naun","Huimanguillo",34234523,23.45);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Pelé",22,"F","Karlsa","Huimanguillo",3343333,54.42);
insert into visitantes(nombre,edad,sexo,domicilio,ciudad,telefono,montocompras)
	values("Perla",22,"F","Karlsa","Huimanguillo",3343333,54.42);    

#Solicitar la cantidad de visitante al stand
select count(*) from visitantes;

#Solicitar la cantidad de visitantes con telef
select count(telefono) from visitantes;

#Muestra la cantidad de visitantes de sexo masculino que acudieron
#al stand
select count(*) from visitantes
	where sexo = 'M';
    
#Muestra la cantidad de mujeres mayores de 25 años, que acudieron
#al stad.
select count(*) from visitantes
	where sexo = 'F' and edad > 25;
    
#Muestra la cantidad de visitantes que no son de "Huimanguillo"
select count(*) from visitantes
	where ciudad <> "Huimanguillo";
    
#Muestra la cantidad de visitantes que realizaron alguna compra
select count(*) from visitantes
	where montocompras > 0;
    
#Muestra la cantidad de visitantes que no realizaron compra
select count(*) from visitantes
	where montocompras = 0;
    
select * from visitantes;







