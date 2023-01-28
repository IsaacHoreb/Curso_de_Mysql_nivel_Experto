#Case
use escuela;
drop table if exists students;

create table students(
	legajo char(5) not null,
    nombre varchar(30),
    promedio decimal(4,2)
);

insert into students(legajo,nombre,promedio)
	values(3456,"Perez Luis",8.5);

insert into students(legajo,nombre,promedio)
	values(1236,"Garcia Ana",7.0);
    
insert into students(legajo,nombre,promedio)
	values(4446,"Ludueña Juan",9.6);
    
insert into students(legajo,nombre,promedio)
	values(5636,"Moreno Gabriel",4.8);
    
insert into students(legajo,nombre,promedio)
	values(1116,"Morales Hugo",3.2);
    
insert into students(legajo,nombre,promedio)
	values(9786,"Gomez Susana",6.4);


/*
Si el alumno tiene un promedio menor a 4, muestre un mensaje "reprobado", si el promedio es 
mayor o igual a 4 y menor a 7, muestre "regular", si el promedio es mayor o igual a 7, 
muestre "promocionado", usando la primer sintaxis de "case":
*/
select legajo,nombre,promedio,truncate(promedio,0),
	case truncate(promedio,0)
		when 0 then 'Reprobado'
        when 1 then 'Reprobado'
        when 2 then 'Reprobado'
        when 3 then 'Reprobado'
		when 4 then 'Regular'
        when 5 then 'Regular'
        when 6 then 'Regular'
        when 7 then 'Promocionado'
        when 8 then 'Promocionado'
        when 9 then 'Promocionado'
	else 'Promocionado'
	end as 'Estado'
	from students;
/*
Obtenga la misma salida anterior pero empleando la otra sintaxis de "case":
*/
select legajo,nombre,promedio,
	case when promedio < 4 then 'Reprobado'
		when promedio >= 4 and promedio <= 7 then 'Regular'    
	else 'Promocionado'
    end as 'Estado'
    from students;


describe students;
select * from students;


