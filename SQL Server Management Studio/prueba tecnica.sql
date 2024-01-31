CREATE TABLE CURSOS (

ID_CURSOS INT IDENTITY(1,1) NOT NULL,
NOMBRE_CURSO VARCHAR(30),
)

ALTER TABLE CURSOS ADD CONSTRAINT PK_CURSOS_ID_CURSOS 
PRIMARY KEY (ID_CURSOS);


DROP TABLE CURSOS;

ALTER TABLE CURSOS ADD  Descripcion VARCHAR (300);
ALTER TABLE CURSOS ADD  carrera_id int;
ALTER TABLE CURSOS ADD  prof_id int;
ALTER TABLE CURSOS ADD  ID_CURSOS INT;

ALTER TABLE profesores ADD CONSTRAINT prof_id primary key(prof_id);
ALTER TABLE carreras ADD CONSTRAINT carrera_id primary key(carrera_id);



SELECT * FROM CARRERAS;
SELECT * FROM PROFESORES;
select * from cursos;

select NOMBRE, CANTIDAD =(SELECT COUNT(*) FROM PROFESORES WHERE CARRERA_ID = CARRERAS.CARRERA_ID)
from CARRERAS ;



SELECT CARRERAS.NOMBRE , COUNT(*) FROM CARRERAS
INNER JOIN PROFESORES ON CARRERAS.CARRERA_ID = PROFESORES.CARRERA_ID
GROUP BY CARRERAS.NOMBRE;



insert into cursos values ('Programador JAVA','curso dado por chanchito',5);
insert into cursos values ('Programador JAVA','curso dado por chanchito',1);
insert into cursos values ('Programador JAVA','curso dado por chanchito',2);


use CAPACITACIONES;