create database sitioWeb;
use sitioWeb;

drop table if exists visitas;

create table visita(
	numero int unsigned auto_increment,
    nombre varchar(30) not null,
    mail varchar(50),
    pais varchar(20),
    fecha date,
    primary key(numero)
);

insert into visita(nombre,mail,pais,fecha)
	values('Ana Maria','MariaChuz34@gmail.com','Colombia','2002-01-02');

insert into visita(nombre,mail,pais,fecha)
	values('Padilla Hernandez','Hdz33@gmail.com','Colombia','2006-04-01');
    
insert into visita(nombre,mail,pais,fecha)
	values('Luis Miguel','LuisitoComunica@gmail.com','Mexico','2000-07-12');
    
insert into visita(nombre,mail,pais,fecha)
	values('Annet Michelt','MiLove@gmail.com','Peru','2002-08-28');
    
insert into visita(nombre,mail,pais,fecha)
	values('Mauricio Jimenez','Papa666@gmail.com','EE.UU','2012-01-01');
    
insert into visita(nombre,mail,pais,fecha)
	values('Leonardo Manuela','ManuelaHago0101@gmail.com','URSS','2010-03-17');
    
#Obtener el valor de visita
select count(*) from visita;

#Cantidad de visitas agrupada por fecha
select fecha,count(*) from visita
	group by fecha;

#Cantidad de visitas agrupadas por nombre y mes
select nombre,month(fecha),count(*) from visita
	group by nombre,month(fecha);
    








describe visita;
select * from visita;