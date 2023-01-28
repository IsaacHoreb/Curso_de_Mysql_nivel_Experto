#Condicional

use empresa;
drop table if exists empleados;

create table empleados(
	documento char(8) not null,
	nombre varchar(30) not null,
	sexo char(1),
	domicilio varchar(30),
	fechaingreso date,
	fechanacimiento date,
	sueldobasico decimal(5,2) unsigned,
	hijos tinyint unsigned,
	primary key(documento)
);

insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('22333111','Juan Perez','m','Colon 123','1990-02-01','1970-05-10',550,0);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('25444444','Susana Morales','f','Avellaneda 345','1995-04-01','1975-11-06',650,2);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('20111222','Hector Pereyra','m','Caseros 987','1995-04-01','1965-03-25',510,1);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('30000222','Luis LUque','m','Urquiza 456','1980-09-01','1980-03-29',700,3);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('20555444','Maria Laura Torres','f','San Martin 1122','2000-05-15','1965-12-22',400,3);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('30000234','Alberto Soto','m','Peru 232','2003-08-15','1989-10-10',420,1);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('20125478','Ana Gomez','f','Sarmiento 975','2004-06-14','1976-09-21',350,2);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaingreso,fechanacimiento,sueldobasico,hijos)
  values ('24154269','Ofelia Garcia','f','Triunvirato 628','2004-09-23','1974-05-12',390,0);
 
insert into empleados 
(documento,nombre,sexo,domicilio,fechaIngreso,fechaNacimiento,sueldoBasico,hijos)
  values ('30419964','Oscar Torres','m','Hernandez 1234','1996-04-10','1978-05-02',400,0);


/*
Es política de la empresa festejar cada fin de mes, los cumpleaños de todos los empleados que 
cumplen ese mes. Si los empleados son de sexo femenino, se les regala un ramo de rosas, si son de 
sexo masculino, una corbata. La secretaria de la Gerencia necesita saber cuántos ramos de rosas y 
cuántas corbatas debe comprar para el mes de mayo:
*/
select sexo,count(sexo),
	if(sexo = 'f','Rosa','Corbata') as 'Obsequio'
	from empleados
	where month(fechanacimiento) = 5
    group by sexo;

/*
Además, si el empleado cumple 10,20,30,40... años de servicio, se le regala una placa 
recordatoria. La secretaria de Gerencia necesita saber la cantidad de años de servicio que cumplen 
los empleados que ingresaron en el mes de abril para encargar dichas placas:
*/
select nombre,fechaingreso,
	year(current_date)-year(fechaingreso) as 'Años de Servicios',
    if((year(current_date)-year(fechaingreso)) %10 = 0, 'Si','No') as 'Placa'
    from empleados
    where month(fechaingreso) = 4;
    
/*
La empresa paga un sueldo adicional por hijos a cargos. para un sueldo básico menor o igual a 
$500 el salario familiar por hijo es de $300, para un sueldo superior, el monto es de $150 por 
hijo. Muestre el nombre del empleado, el sueldo básico, la cantidad de hijos a cargo, el valor del 
salario por hijo, el valor total del salario familiar y el sueldo final con el salario familiar 
incluido de todos los empleados con hijos a cargo:
*/
select nombre,sueldobasico,hijos,
  if (sueldobasico<=500,300,150) as 'Salarioporhijo',
  if (sueldobasico<=500,300*hijos,150*hijos) as 'Salariofamiliar',
  if (sueldobasico<=500,sueldobasico+(300*hijos),sueldobasico+(150*hijos)) as 'Total'
  from empleados  
  where hijos>0; 

describe empleados;
select * from empleados;

