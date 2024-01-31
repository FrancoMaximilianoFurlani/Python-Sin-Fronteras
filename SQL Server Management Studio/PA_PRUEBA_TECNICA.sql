select * from CURSOS ;
select * from CARRERAS;
select * from PROFESORES;

ALTER TABLE CURSOS
ADD CONSTRAINT FK_CURSOS_PROFESORES
FOREIGN KEY (prof_id) 
REFERENCES PROFESORES(prof_id);



ALTER TABLE PROFESORES
ADD CONSTRAINT FK_PROFESORES_CARRERAS
FOREIGN KEY (carrera_id) 
REFERENCES CARRERAS(carrera_id);


--- 3)

ALTER TABLE CARRERAS 
ADD Descripcion varchar(300);


-- punto 2 
select carrera_id,nombre,(select count(*) from PROFESORES where PROFESORES.carrera_id = CARRERAS.carrera_id)
from CARRERAS

select * from PROFESORES where carrera_id =2


--b)

select nombre, apellido, nom_carrera=(select nombre from CARRERAS where CARRERAS.carrera_id = PROFESORES.carrera_id),
telefono = (case when telefono is not null or telefono <> '' then telefono else 'No tiene 'end)
from profesores 
where prof_id not in (select prof_id from cursos where prof_id = PROFESORES.prof_id)

--3)
/*a-Crear un procedimiento almacenado que actualice el campo “descripción” de toda la 
tabla CARRERAS que tengan profesores asignados nacidos en el año 1988.
Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS
El campo descripción de la tabla CARRERAS debe concatenar los campos 
carrera_id, nombre, fecha-hora (utilizar GETDATE) y el aula asignada,
para este último utilizar el PA_ASIGNAR_AULA. */

CREATE PROCEDURE PA_ACTUALIZA_CARRERAS

begin

UPDATE CARRERAS SET DESCRIPCION = 
CONVERT(VARCHAR,carrera_id) +'-'+ NOMBRE +'-' +
CONVERT(VARCHAR,GETDATE())
FROM CARRERAS

end


--SELECT * FROM CARRERAS




create  procedure PA_ASIGNAR_AULA

BEGIN 

      ALTER TABLE CARRERAS 
	  ADD AULAS VARCHAR(10)

     SELECT AULAS = (SELECT NOMBRE_CURSO FROM CURSOS WHERE PROFESORES.prof_id = CURSOS.prof_id)
	 FROM CARRERAS
	 INNER JOIN PROFESORES ON CARRERAS.carrera_id = PROFESORES.carrera_id
	 where YEAR(PROFESORES.fecha_nacimiento) = 1998


END







