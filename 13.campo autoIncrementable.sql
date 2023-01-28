use administracion;
drop table if exists books;

#unsigned es para evitar valores negativos
create table books(
    codigo int unsigned auto_increment not null, #Hacerlo autoIncrementable
    titulos varchar(20) not null,
    autor varchar(30),
    editorial varchar(15),
    precio decimal(5,2) unsigned not null,
    primary key(codigo)
);

insert into books(titulos,autor,editorial,precio) values("El aleph","Borges","Planeta",123.34);
insert into books(titulos,autor,editorial,precio) values("Martin Fierro","Jose Hernandez","Emece",23.34);
insert into books(titulos,autor,editorial,precio) values("Aprenda PHP","Mario Molina","Emece",34.23);
insert into books(titulos,autor,editorial,precio) values("Cervantes","Borges","Paidos",34.23);
insert into books(titulos,autor,editorial,precio) values("Matematicas","Paenza","Paidos",129.23);

select * from books;
describe books;

#Esto me permite eliminar/limpiar la tabla,
#no usar delete books, solo se usaria para eliminar cuando
#se use el where.
truncate books; 
