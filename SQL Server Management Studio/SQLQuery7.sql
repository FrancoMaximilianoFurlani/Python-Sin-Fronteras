use Principal;

create table personas (
id_persona int  not null unique,
nombre varchar(30) not null,
edad int not null
/*constraint pk_enlace_persona primary key (id_persona)*/);

insert into personas values(null,'elpepe',50);
insert into personas values(3,'elpepe',10);
insert into personas values(4,default,19);

select * 
from personas;

drop table personas;

alter table personas
add constraint pk_enlace primary key (id_persona );

alter table personas
add check (edad > 18);

alter table personas
drop constraint CK__personas__edad__52593CB8;

alter table personas
add constraint CK_edadcheck check (edad>18);

alter table personas
add constraint df_nombre 
default 'no tiene' for nombre;



create table libros(
ID_libros int identity(1,1),
NombreDeLibro varchar(50),
autor varchar(30))


-- Inserta los libros de la saga de Harry Potter en la tabla 'libros'
INSERT INTO libros VALUES ('Harry Potter y la piedra filosofal', 'J.K. Rowling');
INSERT INTO libros VALUES ('Harry Potter y la cámara secreta', 'J.K. Rowling');
INSERT INTO libros VALUES ('Harry Potter y el prisionero de Azkaban', 'J.K. Rowling');
INSERT INTO libros VALUES ('Harry Potter y el cáliz de fuego', 'J.K. Rowling');
INSERT INTO libros VALUES ('Harry Potter y la Orden del Fénix', 'J.K. Rowling');
INSERT INTO libros VALUES ('Harry Potter y el misterio del príncipe', 'J.K. Rowling');
INSERT INTO libros VALUES ('Harry Potter y las Reliquias de la Muerte', 'J.K. Rowling')
-- Inserta los libros de la saga del Señor de los Anillos en la tabla 'libros'
INSERT INTO libros VALUES ('La Comunidad del Anillo', 'J.R.R. Tolkien');
INSERT INTO libros VALUES ('Las Dos Torres', 'J.R.R. Tolkien');
INSERT INTO libros VALUES ('El Retorno del Rey', 'J.R.R. Tolkien');


truncate table libros;

select * from libros;

alter table libros
add constraint pk_codlibro primary key(ID_libros);

alter table libros
add precio int ;

exec sp_rename 'libros.ID_libro', 'Codigo';
exec sp_rename 'libros.autor', 'Autor';
exec sp_rename 'libros.precio', 'Precio';
exec sp_rename 'libros.NombreDeLibro', 'Nombre De Libro';

update libros set Precio = 10 where ID_libros=2;
update libros set Precio = 10 where ID_libros=3;
update libros set precio = 10 where ID_libros=4;
update libros set precio = 10 where ID_libros=5;
update libros set precio = 10 where ID_libros=7;
update libros set precio = 10 where ID_libros=8;
update libros set precio = 10 where ID_libros=9;

update libros set precio = 50 where precio is null;

update libros set precio = null where ID_libros in (1,4,6,7);


drop table libros;

