use hospital;
drop table if exists consultas;

create table consultas(
	fecha date,
    numero int unsigned,
    documento char(8) not null,
	obrasocial varchar(30),
    medico varchar(30),
    primary key(fecha,numero),
    unique i_cosulta(documento,fecha,medico),
    index i_medico(medico),
    index i_obrasocial(obrasocial)
);

#Elimine el indice unico
alter table consultas drop index i_cosulta;

#Elimine los indeces comunes
alter table consultas drop index i_medico;
alter table consultas drop index i_obrasocial;


describe consultas;
select * from consultas;
show index from consultas;



