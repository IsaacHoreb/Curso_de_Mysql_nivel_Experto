use administracion;
drop table if exists books;

create table books(
    codigo int,
    titulos varchar(20),
    autor varchar(30),
    editorial varchar(15),
    primary key(codigo)
);

insert into books(codigo,titulos,autor,editorial) values(1,"El aleph","Borges","Planeta");
insert into books(codigo,titulos,autor,editorial) values(2,"Martin Fierro","Jose Hernandez","Emece");
insert into books(codigo,titulos,autor,editorial) values(3,"Aprenda PHP","Mario Molina","Emece");
insert into books(codigo,titulos,autor,editorial) values(4,"Cervantes","Borges","Paidos");
insert into books(codigo,titulos,autor,editorial) values(5,"Matematicas","Paenza","Paidos");


select * from books;
describe books;