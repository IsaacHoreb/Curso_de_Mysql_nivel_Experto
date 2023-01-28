use administracion;

drop table if exists agenda;

create table agenda(
	apellido varchar(30),
	nombre varchar(20) not null,
    domicilio varchar(30),
    telefono varchar(11),
    mail varchar(30)
);

insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Manuel","Cardenas",null,null);
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Jorge","Huimanguillo","9171123431","huoi23@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Cintia","Cardenas","9171123672","Kaka23@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Keyla","Huimanguillo","9171123433","fass3@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Erwin","Cardenas","9171123434","rtw23@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Rene","Huimanguillo","9134123435","Kaewr23@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Carlos","Huimanguillo","9177123436","swwe23@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Karla","Cardenas","9189123437","ewrw23@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Nadia","Huimanguillo","9171123438","sDsf@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Ivon","Huimanguillo","9156223439",null);
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Emanuel","Cardenas","9178923433","Csd56@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Manuela","Cardenas","9171111132","Nd3@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Juan","Cardenas","9171123235","Gas@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Mister","Huimanguillo","8991123437",null);
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Isaac","Cardenas","0981123439","mnas22@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Isaias","Huimanguillo","0001123431",null);
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Julieta","Cardenas","2221123431","bcsd3@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Julian","Centro","6781123433","kjuds@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Chae","Huimanguillo",null,null);
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Mariluz","Teapa","6661123431","rer@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Nazario","Cardenas","8961123431","Kaka234@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Salaz","Pablo","Huimanguillo",null,"nun45@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Huim","Juliope","9561123438","45sd3@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Ulalio","Huimanguillo",null,"Kfdg56@gmail.com");
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Perez","Ricardo","Teapa",null,null);
insert into agenda(apellido,nombre,domicilio,telefono,mail) values("Sanchez","Pardo","Mx",null,"PerroSano@hotmail.com");

#Buscar todos los mails que contenga los "hotmail"
select * from agenda
	where mail regexp "hotmail";

#Busque los nombres que no tienen "z" ni "g"
select * from agenda
	where nombre not regexp'[zg]';

#Busque los apellidos que tiene por los menos una de las letras 
#de la "v" hasta la "z" (v,w,x,y,z)
select * from agenda
	where apellido regexp'[v-z]';
    
#Seleccione los apellidos que terminen en "ez"
select * from agenda
	where apellido regexp'ez$';

#Seleccione los apellidos, nombres y domicilios de los amigos cuyos apellidos
#2 letras 'a'
select apellido,nombre,domicilio from agenda
	where apellido regexp'a.*a';

#Selecciones los telefonos que tenga 7 o mas, caracteres exactamente
select * from agenda
	where telefono regexp '^..........$';

#Seleccione el nombre y mail de todos los amigos cuyos tenga al menos 20 caracteres
select nombre,mail from agenda
	where mail regexp'^..............$';

select * from agenda;

