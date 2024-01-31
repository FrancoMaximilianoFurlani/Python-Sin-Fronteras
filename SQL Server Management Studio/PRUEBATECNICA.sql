-- EJERCICIO 1
/*a.Generar un script para crear la tabla CURSOS. Definir los tipos de datos que se crean conveniente.*/

      

/*b.Agregar todas las claves primarias y claves for�neas que crea conveniente (3 tablas)*/


/*c.Generar un script para agregar el campo �Descripcion� - VARCHAR(300) - a la tabla CARRERAS.*/


--EJERCICIO 2


/*a.Generar una consulta que liste el nombre de las carreras con la cantidad de profesores 
asignados a la misma. Se recomienda utilizar la sentencia OUTER APPLY (no es obligatorio).*/


/*b.Generar una consulta que liste apellido y nombre de los profesores que
no est�n asignados a un curso, indicando el nombre de la carrera que pertenece,
el n�mero de tel�fono y en caso de no poseer tel�fono mostrar una leyenda �No tiene�.
Nota: Ordenados de forma descendente por apellido*/


--EJERCICIO 3
/*a.Crear un procedimiento almacenado que actualice el campo �descripci�n� de toda la tabla CARRERAS
que tengan profesores asignados nacidos en el a�o 1988
Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS
El campo descripci�n de la tabla CARRERAS debe concatenar los campos carrera_id, nombre, 
fecha-hora (utilizar GETDATE) y el aula asignada, para este �ltimo utilizar el PA_ASIGNAR_AULA. 
A continuaci�n se deja el script a utilizar para su creaci�n:
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