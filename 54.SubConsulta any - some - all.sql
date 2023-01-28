create database club;
use club;

drop tables if exists inscriptos, socios;

create table socios(
	numero int auto_increment,
	documento char(8),
	nombre varchar(30),
	domicilio varchar(30),
	primary key (numero)
);
 
create table inscriptos (
	numerosocio int not null,
	deporte varchar(20) not null,
	cuotas smallint,
	primary key(numerosocio,deporte)
);

-- Ingrese algunos registros:
insert into socios(documento,nombre,domicilio) values('23333333','Alberto Paredes','Colon 111');
insert into socios(documento,nombre,domicilio) values('24444444','Carlos Conte','Sarmiento 755');
insert into socios(documento,nombre,domicilio) values('25555555','Fabian Fuentes','Caseros 987');
insert into socios(documento,nombre,domicilio) values('26666666','Hector Lopez','Sucre 344');

insert into inscriptos values(1,'tenis',1);
insert into inscriptos values(1,'basquet',2);
insert into inscriptos values(1,'natacion',1);
insert into inscriptos values(2,'tenis',9);
insert into inscriptos values(2,'natacion',1);
insert into inscriptos values(2,'basquet',default);
insert into inscriptos values(2,'futbol',2);
insert into inscriptos values(3,'tenis',8);
insert into inscriptos values(3,'basquet',9);
insert into inscriptos values(3,'natacion',0);
insert into inscriptos values(4,'basquet',10);

-- Muestre los socios que serán compañeros en tenis y también en natación (empleando 
-- subconsulta)
select so.numero,so.nombre,i.numerosocio,i.deporte from socios as so join inscriptos as i 
	on numero=numerosocio where deporte = 'natacion'
    and numero = any(select numerosocio from inscriptos as i where deporte = 'tenis');

-- Vea si el socio 1 se ha inscripto en algún deporte en el cual se haya inscripto el socio 2.
select numerosocio,deporte from inscriptos where numerosocio=1 and
	deporte = any(select deporte from inscriptos where numerosocio=2);

/*
Muestre los deportes en los cuales el socio 2 pagó más cuotas que ALGUN deporte en los que se 
inscribió el socio 1. --ANY--
*/
select * from inscriptos
	where numerosocio=2 and cuotas > 
	any(select cuotas from inscriptos where numerosocio=1);
    
/*
Muestre los deportes en los cuales el socio 2 pagó más cuotas que TODOS los deportes en que se 
inscribió el socio 1. --ALL--
*/
select deporte from inscriptos 
	where numerosocio=2 and cuotas > all(select cuotas from inscriptos where numerosocio=1);

select * from inscriptos;
select * from socios;
