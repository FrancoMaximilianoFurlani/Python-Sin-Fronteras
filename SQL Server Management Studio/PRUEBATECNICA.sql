-- EJERCICIO 1
/*a.Generar un script para crear la tabla CURSOS. Definir los tipos de datos que se crean conveniente.*/

      

/*b.Agregar todas las claves primarias y claves foráneas que crea conveniente (3 tablas)*/


/*c.Generar un script para agregar el campo “Descripcion” - VARCHAR(300) - a la tabla CARRERAS.*/


--EJERCICIO 2


/*a.Generar una consulta que liste el nombre de las carreras con la cantidad de profesores 
asignados a la misma. Se recomienda utilizar la sentencia OUTER APPLY (no es obligatorio).*/


/*b.Generar una consulta que liste apellido y nombre de los profesores que
no estén asignados a un curso, indicando el nombre de la carrera que pertenece,
el número de teléfono y en caso de no poseer teléfono mostrar una leyenda “No tiene”.
Nota: Ordenados de forma descendente por apellido*/


--EJERCICIO 3
/*a.Crear un procedimiento almacenado que actualice el campo “descripción” de toda la tabla CARRERAS
que tengan profesores asignados nacidos en el año 1988
Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS
El campo descripción de la tabla CARRERAS debe concatenar los campos carrera_id, nombre, 
fecha-hora (utilizar GETDATE) y el aula asignada, para este último utilizar el PA_ASIGNAR_AULA. 
A continuación se deja el script a utilizar para su creación:
*/

use CAPACITACIONES;


select nombre, apellido, NOMBRE_CURSO, COALESCE(telefono, 'no tiene') as telefono from PROFESORES 
inner join CURSOS on cursos.prof_id = PROFESORES.prof_id
order by apellido desc;


select * from PROFESORES left join CURSOS on CURSOS.prof_id = PROFESORES.prof_id
where YEAR(fecha_nacimiento) = 1988;

select* from PROFESOREs;

update CURSOS
set 