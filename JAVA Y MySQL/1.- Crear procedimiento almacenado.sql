#Creamos el procedimiento almacenado
use escuela;

#Listar datos con el procedimientoAlmacenado
create procedure listarAlumnosdelA()
	select * from alumnos where seccion = "A"; 
    
describe alumnos;

#Insertar datos con el procedimientoAlmacenado
create procedure insertarAlumnos(n_nombre varchar(45), n_apellido varchar(45), n_seccion varchar(1))
	insert into alumnos(nombre,apellido,seccion) values(n_nombre, n_apellido, n_seccion);
	