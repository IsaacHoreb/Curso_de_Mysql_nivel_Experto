#count -cuenta la cantidad de registro que tenga
use administracion;

drop tables if exists personas;

create table personas(
	edad int
);

insert into personas(edad) values(12);
insert into personas(edad) values(2);
insert into personas(edad) values(45);
insert into personas(edad) values(23);
insert into personas(edad) values(55);	
insert into personas(edad) values(11);
insert into personas(edad) values(89);
insert into personas(edad) values(6);
insert into personas(edad) values(67);
insert into personas(edad) values(76);
insert into personas(edad) values(12);
insert into personas(edad) values(200);
insert into personas(edad) values(1);
insert into personas(edad) values(86);
insert into personas(edad) values(43);
insert into personas(edad) values(44);
insert into personas(edad) values(99);
insert into personas(edad) values(31);
insert into personas(edad) values(67);
insert into personas(edad) values(13);

select * from personas;
select count(*) from personas;


