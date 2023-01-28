/*
= igual
<> distinto
> mayor
< menor
>= mayor o igual
=< menor o igual
*/

use administracion;

insert into libro(autor,titulo,precio,cantidad) values('Jonas Elias','Lo que es',123.43,500);
insert into libro(autor,titulo,precio,cantidad) values('Olga Mayo','Lola',2000,89);
insert into libro(autor,titulo,precio,cantidad) values('Javier Ala','Marvel',100.12,56);
insert into libro(autor,titulo,precio,cantidad) values('Koren Jairr','OROR',900.34,11);

#select * from libro;

#Seleccionar todo de libro, pero no la de Jonas Elias
select * from libro where autor <> 'Jonas Elias';
select autor,titulo, precio from libro where precio > 1000;
select * from libro where cantidad >= 600;


select * from libro;
delete from libro where titulo = OROR;




