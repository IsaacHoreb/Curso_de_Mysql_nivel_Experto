create database estacionamiento;
use estacionamiento;
drop table if exists vehiculos;

create table vehiculos(
	patente char(6) not null,
	tipo char(4),
	horallegada time not null,
	horasalida time,
	primary key(patente,horallegada)
 );

insert into vehiculos (patente,tipo,horallegada,horasalida)
  values('ACD123','auto','8:30','9:40');

insert into vehiculos (patente,tipo,horallegada,horasalida)
  values('AKL098','auto','8:45','15:10');

insert into vehiculos (patente,tipo,horallegada,horasalida)
  values('HGF123','auto','9:30','18:40');

insert into vehiculos (patente,tipo,horallegada,horasalida)
  values('DRT123','auto','15:30',null);

insert into vehiculos (patente,tipo,horallegada,horasalida)
  values('FRT545','moto','19:45',null);

insert into vehiculos (patente,tipo,horallegada,horasalida)
  values('GTY154','auto','20:30','21:00');

/*
Muestre la patente, la hora de llegada y de salida de todos los vehículos, más una columna que 
calcule la cantidad de horas que estuvo cada vehículo en la playa, sin considerar los que aún no se 
retiraron de la playa:
*/
select patente,horallegada,horasalida,
	left(timediff(horasalida,horallegada),5) as 'Horasminutos'
    from vehiculos
    where horasalida is not null;
    
/*
Se cobra 1 peso por hora. Pero si un vehículo permanece en la playa 4 horas, se le cobran 3 
pesos, es decir, no se le cobra la cuarta hora; si está 8 horas, se cobran 6 pesos, y así 
sucesivamente. Muestre la patente, la hora de llegada y de salida de todos los vehículos, más la 
columna que calcule la cantidad de horas que estuvo cada vehículo en la playa (sin considerar los 
que aún no se retiraron de la playa) y otra columna utilizando "if" que muestre la cantidad de 
horas gratis:
*/

select patente,horallegada,horasalida,
	left(timediff(horasalida,horallegada),5) as 'HorasMinutos',
    if (hour(timediff(horasalida,horallegada)) > 4,
    hour(timediff(horasalida,horallegada)) div 4,0) as 'HorasGratis'
    from vehiculos
    where horasalida is not null;

select * from vehiculos;
