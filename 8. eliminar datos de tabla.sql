use administracion;
select * from libro;

insert into libro(autor,titulo,precio,cantidad)  values("Martin Machin","Mis huevos", 100, 12);

select * from libro;

delete from libro;
delete from libro where cantidad >= 100;
