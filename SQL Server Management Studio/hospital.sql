use hospital_1
-- 8. Igual que el anterior, para los nacidos antes de 1970 ordenados por número de inscripción descendente

select * from Enfermo
where  cast( Fecha_Nac as date) < '01-01-1970'

SELECT * FROM ENFERMO WHERE CAST(FECHA_NAC AS DATE) < '01-01-1970'
ORDER BY INSCRIPCION DESC

SELECT *
FROM ENFERMO
WHERE CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;

SELECT *
FROM ENFERMO
WHERE TRY_CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;



-- 9. Listar todos los datos de la plantilla del hospital del turno de mañana

select * from Plantilla
where t= 'm';

-- 10. Idem del turno de noche.



select * from Plantilla
where t= 'N';

-- 11. Visualizar los empleados de la plantilla del turno de mañana que tengan un salario entre 200000 y 225000.

select * from Plantilla where T = 'm' and salario between 200000 and 225000;

-- 8. Igual que el anterior, para los nacidos antes de 1970 ordenados por número de inscripción descendente

select * from Enfermo
where  cast( Fecha_Nac as date) < '01-01-1970'

SELECT * FROM ENFERMO WHERE CAST(FECHA_NAC AS DATE) < '01-01-1970'
ORDER BY INSCRIPCION DESC

SELECT *
FROM ENFERMO
WHERE CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;

SELECT *
FROM ENFERMO
WHERE TRY_CAST(FECHA_NAC AS DATE) < '1970-01-01'
ORDER BY INSCRIPCION DESC;



-- 9. Listar todos los datos de la plantilla del hospital del turno de mañana

select * from Plantilla
where t= 'm';

-- 10. Idem del turno de noche.



select * from Plantilla
where t= 'N';

-- 11. Visualizar los empleados de la plantilla del turno de mañana que tengan un salario entre 200000 y 225000.

select * from Plantilla where T = 'm' and salario between 200000 and 225000 ;


-- 12. Visualizar los empleados de la tabla emp que no se dieron de alta entre el 01/01/80 y el 12/12/82.

select * from emp 
where Fecha_Alt not between '01-01-1980' and '12-12-1982';

-- 13. Mostrar los nombres de los departamentos situados en Madrid o en Barcelona.

select * from Dept 
where loc in ('madrid' , 'Barcelona');

-- 14. Mostrar aquellos empleados con fecha de alta posterior al 1 de Julio de 1985.

select * from Emp 
where Fecha_Alt > '01-06-1985';

-- 15. Lo mismo que en el ejercicio 14 pero con salario entre 150000 y 400000.

select * from Emp 
where Fecha_Alt > '01-06-1985'
and Salario between 150000 and 400000 ;


-- 16. Igual que en el ejercicio 15, pero también incluimos aquellos que 
-- no siendo analista pertenecen al departamento 20.

select * from Emp 
where Fecha_Alt > '01-06-1985'
and Salario between 150000 and 400000 
OR (OFICIO <> 'ANALISTA' AND DEPT_NO = 20)

--17. Mostrar aquellos empleados cuyo apellido termine en ‘Z’ ordenados por departamento,
-- y dentro de este por antigüedad.


select *
from Emp 
where Apellido like '%z';

-- 18. De los empleados del ejercicio 17 quitar aquellos que superen los 200000 mensuales.

select *
from Emp 
where Apellido like '%z' and Salario <= 200000
order by Dept_No;

-- 19. Mostrar todos los empleados cuyo oficio no sea analista.

select * from Emp
where Oficio <> 'analista'

-- 20. Igual que el ejercicio 19, pero mostrándolos de forma que se aprecien las diferencias de salario dentro de cada oficio.


select * from Emp
where Oficio <> 'analista'
order by Oficio , Salario desc;

-- 21. Del ejercicio 20, nos quedamos solo con aquellos cuyo número de empleado no este entre 7600 y 7900.


select * from Emp
where Oficio <> 'analista' and Emp_No not between 7600 and 7900
order by Oficio , Salario desc;

-- 22. Mostrar los distintos oficios de los empleados.

select distinct Oficio from Emp;

-- -- 23. Mostrar los distintos nombres de sala.

select distinct Nombre from sala;}

--24. Mostrar que personal “No Interino” existe en cada sala de cada hospital, ordenado por hospital y sala.

select * from Plantilla
where Funcion <> 'interino';

select * from Plantilla
where Funcion not in ('interino');

--
-- 25. Justificar el resultado de la siguiente consulta SELECT APELLIDO DISTINCT DEPT_NO FROM EMP
-- Indicar que ocurre y modificarla para que todo vaya bien.

SELECT DISTINCT APELLIDO,  DEPT_NO FROM EMP
--26. Seleccionar los distintos valores del sexo que tienen los enfermos.

select distinct S as sexo from Enfermo

-- 27. Indicar los distintos turnos de la plantilla del hospital, ordenados por turno y por apellido.

select distinct t, Apellido from Plantilla 
order by t , Apellido;

-- 28. Seleccionar las distintas especialidades que ejercen los médicos, ordenados por especialidad y apellido.

select distinct Especialidad, Apellido from Doctor
order by Especialidad , Apellido

