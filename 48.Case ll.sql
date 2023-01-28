create database website;
use website;

drop table if exists visitas;

create table visitas(
  numero int unsigned auto_increment,
  nombre varchar(30) not null,
  mail varchar(50),
  pais varchar (20),
  fecha date,
  primary key(numero)
);

insert into visitas (nombre,mail,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','2006-02-10');
 insert into visitas (nombre,mail,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','2006-05-10');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-06-11');
 insert into visitas (nombre,mail,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-10-12');
 insert into visitas (nombre,mail,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-09-12');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-12');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');

/*
Muestre el nombre, la fecha de ingreso y los nombres de los días de la semana empleando 
un "case": 
*/
select nombre,fecha,
	case dayname(fecha)
    when 'Monday' then 'Lunes'
    when 'Tuesday' then 'Martes'
    when 'Wednesday' then 'Miercoles'
    when 'Thursday' then 'Jueves'
    when 'Friday' then 'Viernes'
    when 'Saturday' then 'Sabado'
else 'Domingo'
end as 'Day'
from visitas;
    
/*
Muestre el nombre y fecha de ingreso a la página y con un "case" muestre si el nombre del mes 
corresponde al 1º, 2º o 3º cuatrimestre del año.
*/
select nombre,fecha,
	case when(monthname(fecha) in ('January','February','March','April'))
    then '1° cuatrimestre'
    when (monthname(fecha) in ('May','June','July','August'))
    then '2° cuatrimestre'
else '3° cuatrimestre'
end as "Moth"
from visitas;

select * from visitas;


