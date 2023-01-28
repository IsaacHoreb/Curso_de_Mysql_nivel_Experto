use administracion;
drop table if exists autos;

create table autos(
	patente varchar(50) not null primary key,
    marca varchar(45) not null,
    modelo varchar(50) not null,
    precio int unsigned not null
);

describe autos;

insert into autos(patente,marca,modelo,precio)
	values("ACD123","Fiat 128","1970",1500);
insert into autos(patente,marca,modelo,precio)
	values("ACG234","Renault 11","1990",4000);
insert into autos(patente,marca,modelo,precio)
	values("BCD333","Peugeot 505","1990",80000);
insert into autos(patente,marca,modelo,precio)
	values("GCD123","Renault Clio","1990",70000);
insert into autos(patente,marca,modelo,precio)
	values("BVF543","Fiat 128","1975",20000);

#Selecciones todos los autos cuyo año sea 1970 o 1975, usando el operador "in".
select * from autos
	where modelo in ("1970","1975");

#Buscar por precio
select * from autos
	where precio between 50000 and 100000;


select * from autos;





