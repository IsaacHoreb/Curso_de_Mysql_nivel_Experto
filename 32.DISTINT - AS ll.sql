# DISTINT - AS
use empresa;
drop table if exists consulta;

create table consulta(
	fechayhora datetime not null,
    medico varchar(30) not null,
	documento char(8) not null,
	paciente varchar(30),
    obrasocial varchar(30)
);

insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 8:00','Perez','22333444','Juan Gracia','PAMI');

insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 10:00','Garcia','22333444','Juan Gracia','PAMI');

insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 13:00','Menas','23333444','Adela Gomez','PAMI');

insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 13:16','Perez','25333444','Juan Lopez','PAMI');
    
insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 23:59','Gamas','25333444','Hector Juarez	','PAMI');
    
insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 8:00','Vallareal','25333444','Ana Molina','PAMI');

insert into consulta(fechayhora,medico,documento,paciente,obrasocial)
	values('2006-08-10 11:23','Naun','25333441','Pedro Colorado','OSDOP');
    
/*
Muestre las distintas obras solciales
*/    
select distinct obrasocial from consulta;

/*
Muestre los nombres de los distintos paciente
*/
select distinct paciente from consulta;

/*
Muestre la cantidad de distintas obras sociales
*/
select distinct obrasocial from consulta;

/*
Cuente la cantidad de medicos (SIN REPETIR) que tienen 
consulta agrupadas por mes y dia
*/
select extract(month from fechayhora), extract(day from fechayhora), count(distinct medico)
	from consulta group by extract(month from fechayhora), extract(day from fechayhora);





    
select * from consulta;
truncate consulta;
