use empresa;
drop table if exists clientes;

create table clientes(
	nombre varchar(50),
    mail varchar(70),
    tarjetacredito blob, #es de tipo imagen
    primary key(nombre)
);

#---------aes_encrypt(valor,clave)----------

insert into clientes(nombre,mail,tarjetacredito) 
	values("Marcos Luis","marcosluis@gmail.com", aes_encrypt('5390700823285988','xyz123'));

insert into clientes(nombre,mail,tarjetacredito) 
	values("Ana Gonzalez","gonzala@gmail.com", aes_encrypt('4645654645654656','xll110'));
    
insert into clientes(nombre,mail,tarjetacredito) 
	values("Lopez German","Lopez@gmail.com", aes_encrypt('1231231232131233','xxa111'));

#Para poder decifrar la tarjeta de credito, usamos lo sig:
select nombre,cast(aes_decrypt(tarjetacredito,'xxa111') as char) from clientes;

select * from clientes; 
describe clientes;
