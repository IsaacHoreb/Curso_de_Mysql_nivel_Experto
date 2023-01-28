use administracion; #Usar BD

#Insertamos a la tabla people
insert into people(nombre,apellido,telefono,gmail) values('Isaac Horeb','González Gamas','9123132','Isaacgamas@gmail.com');         
insert into people(nombre,apellido,telefono,gmail) values('Karen','Gamas','9124432','Isafsdf3@gmail.com');         
insert into people(nombre,apellido,telefono,gmail) values('Abraham','González','9156132','I3453dsfs@gmail.com');         
insert into people(nombre,apellido,telefono,gmail) values('Elias Suares','Villareal Lopez','94453132','sddsfdsf@gmail.com');         

#Ver los datos que agregamos a people
select nombre, apellido, telefono, gmail from people; 


