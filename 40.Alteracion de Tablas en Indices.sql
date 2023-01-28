create database school;
use school;

drop table if exists alumnos;

create table alumnos(
	legado int unsigned auto_increment,
    nombre varchar(30),
    documento varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar(20),
    primary key(legado)
);

/*
Agregue un índice común por los campos "ciudad" y "provincia"
(que pueden repetirse):
*/
alter table alumnos add index i_ciudadprovincia(ciudad,provincia);

/*
Agregue un índice único (no pueden repetirse los valores --> unique) por el
campo "documentos"
*/
alter table alumnos add unique index i_documents(documento);



show index from alumnos;





describe alumnos;
select * from alumnos;
