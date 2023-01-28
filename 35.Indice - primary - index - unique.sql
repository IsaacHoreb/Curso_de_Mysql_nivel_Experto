#indice - primary - index - unique
create database hospital;
use hospital;
drop table if exists medicamentos;

create table medicamentos(
  codigo int unsigned auto_increment,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio decimal (6,2) unsigned,
  cantidad int unsigned, 
  primary key(codigo),#Este el primary key
  index i_laboratorio (laboratorio) #Es el indexe
);

insert into medicamentos(codigo,i_laboratorio)
	values(1,null);

#Mostramos los indice de la tabla
show index from medicamentos;

#Eliminamos los indices

